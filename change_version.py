#!/usr/bin/env python3

import sys
import re
import requests
from typing import Dict, Optional

def get_checksums(version: str) -> Dict[str, str]:
    """Fetch checksums from GitHub release."""
    checksums_url = f"https://github.com/supabase/cli/releases/download/v{version}/supabase_{version}_checksums.txt"
    response = requests.get(checksums_url)
    if response.status_code != 200:
        print(f"Error: Could not fetch checksums for version {version}")
        sys.exit(1)
    
    checksums = {}
    for line in response.text.splitlines():
        if line.strip():
            sha256, filename = line.split()
            checksums[filename] = sha256
    
    return checksums

def update_formula(version: str, checksums: Dict[str, str]):
    """Update the supabase.rb formula with new version and checksums."""
    with open('supabase.rb', 'r') as f:
        content = f.read()
    
    # Update version
    content = re.sub(r'version "[\d.]+"', f'version "{version}"', content)
    
    # Update URLs and checksums for each platform
    platforms = {
        'darwin_arm64': f'supabase_darwin_arm64.tar.gz',
        'darwin_amd64': f'supabase_darwin_amd64.tar.gz',
        'linux_arm64': f'supabase_linux_arm64.tar.gz',
        'linux_amd64': f'supabase_linux_amd64.tar.gz'
    }
    
    for platform, filename in platforms.items():
        if filename in checksums:
            # Update URL
            content = re.sub(
                f'url "https://github.com/supabase/cli/releases/download/v[^/]+/{filename}"',
                f'url "https://github.com/supabase/cli/releases/download/v{version}/{filename}"',
                content
            )
            # Update checksum
            content = re.sub(
                f'sha256 "[^"]+"',
                f'sha256 "{checksums[filename]}"',
                content
            )
    
    with open('supabase.rb', 'w') as f:
        f.write(content)

def main():
    if len(sys.argv) != 2:
        print("Usage: python change_version.py <version>")
        print("Example: python change_version.py 2.15.1")
        sys.exit(1)
    
    version = sys.argv[1]
    print(f"Updating to version {version}...")
    
    checksums = get_checksums(version)
    update_formula(version, checksums)
    print("Update completed successfully!")

if __name__ == "__main__":
    main() 