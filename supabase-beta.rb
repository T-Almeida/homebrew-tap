# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SupabaseBeta < Formula
  desc "Supabase CLI (Beta)"
  homepage "https://supabase.com"
  version "1.131.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/supabase/cli/releases/download/v1.131.2/supabase_darwin_amd64.tar.gz"
      sha256 "208d16854ad758003770ddac71b9168a8063ddce36c652f69a6fb75063cf0355"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v1.131.2/supabase_darwin_arm64.tar.gz"
      sha256 "b4b4adba069533649056bfcd681ca1d891e58f438da8005f1dc2007079c24409"

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
      url "https://github.com/supabase/cli/releases/download/v1.131.2/supabase_linux_arm64.tar.gz"
      sha256 "5733bddd66277fc42ba55e681711e579f7c691c71de17fcc45bda86785d2d180"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/supabase/cli/releases/download/v1.131.2/supabase_linux_amd64.tar.gz"
      sha256 "c058e6ec4a5ea34ca4ab4af1d30a9136b256f1cd9c08a0470e694ffe06bd5f9c"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
  end
end
