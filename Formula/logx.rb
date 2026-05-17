# typed: false
# frozen_string_literal: true

# Homebrew formula for logx — pretty-print JSON slog logs.
# This file is hand-maintained until goreleaser auto-updates it on future tags.
class Logx < Formula
  desc "Pretty-print JSON slog logs from stdin, files, or follow mode"
  homepage "https://github.com/AyoubTadlaoui/GoLogX"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AyoubTadlaoui/GoLogX/releases/download/v0.1.1/GoLogX_0.1.1_darwin_arm64.tar.gz"
      sha256 "e0f84c95851f225632289deb2807cb70c6b43a05036e40a5035a4a060b9c2a98"
    end
    on_intel do
      url "https://github.com/AyoubTadlaoui/GoLogX/releases/download/v0.1.1/GoLogX_0.1.1_darwin_x86_64.tar.gz"
      sha256 "1ba7b84d4f639258375bda190b3a4fc175b71abaf84d19c576605dd5f78b77c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AyoubTadlaoui/GoLogX/releases/download/v0.1.1/GoLogX_0.1.1_linux_arm64.tar.gz"
      sha256 "19b670faf6bf411056a39a1ef8b29e385451d336080f4a0baf5d97ca024cc6af"
    end
    on_intel do
      url "https://github.com/AyoubTadlaoui/GoLogX/releases/download/v0.1.1/GoLogX_0.1.1_linux_x86_64.tar.gz"
      sha256 "a590c3c16f304d6ab6df7ce93a4242102bc078b33889ed61bc11bb972b05467f"
    end
  end

  def install
    bin.install "logx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/logx -version")
  end
end
