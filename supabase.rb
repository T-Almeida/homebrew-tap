# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Supabase < Formula
  desc "Supabase CLI"
  homepage "https://supabase.io"
  version "0.31.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/supabase/cli/releases/download/v0.31.0/supabase_0.31.0_darwin_amd64.tar.gz"
      sha256 "35ea99d68e8c4f37f66f006c5e6c4d641368cd82f8a6a55bdd98b4f9177acafc"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v0.31.0/supabase_0.31.0_darwin_arm64.tar.gz"
      sha256 "58465f3072e57c4eed96d3705b00bb89891e9d7082966328ed87ccd15f07bea8"

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
      url "https://github.com/supabase/cli/releases/download/v0.31.0/supabase_0.31.0_linux_arm64.tar.gz"
      sha256 "41c6cea7e282e566211f9b51f4d503b198d9cb7135d8234a03ffe060ee95ad78"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/supabase/cli/releases/download/v0.31.0/supabase_0.31.0_linux_amd64.tar.gz"
      sha256 "8069c362ccd33179ceba9e92fa6d94b01268d5cd95ca0c8968b8e62afd37c03e"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
  end
end
