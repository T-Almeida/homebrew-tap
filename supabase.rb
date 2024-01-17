# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Supabase < Formula
    desc "Supabase CLI"
    homepage "https://supabase.com"
    version "1.131.5"
    license "MIT"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/supabase/cli/releases/download/v1.131.5/supabase_darwin_arm64.tar.gz"
        sha256 "2020e4014208a32dcfffcd08237ea15a89d34555e18ff942f81b851670c16db4"
  
        def install
          bin.install "supabase"
          (bash_completion/"supabase").write `#{bin}/supabase completion bash`
          (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
          (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/supabase/cli/releases/download/v1.131.5/supabase_darwin_amd64.tar.gz"
        sha256 "db9cd010e9256283ce4c01d58bf432e771d5358e339c5bea6ae3af163fa86bb4"
  
        def install
          bin.install "supabase"
          (bash_completion/"supabase").write `#{bin}/supabase completion bash`
          (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
          (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
        end
      end
    end
  
    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/supabase/cli/releases/download/v1.131.5/supabase_linux_arm64.tar.gz"
        sha256 "2424dab6b19bc86fd8bb077bfe679e1a036b76ccd4db3084fe3d934053132e11"
  
        def install
          bin.install "supabase"
          (bash_completion/"supabase").write `#{bin}/supabase completion bash`
          (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
          (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/supabase/cli/releases/download/v1.131.5/supabase_linux_amd64.tar.gz"
        sha256 "ced782614c93d37c410d41ec3d9d4e74f46d677a79e4110a9dc322a3d700da42"
  
        def install
          bin.install "supabase"
          (bash_completion/"supabase").write `#{bin}/supabase completion bash`
          (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
          (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
        end
      end
    end
  end