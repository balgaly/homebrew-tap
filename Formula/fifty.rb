# typed: false
# frozen_string_literal: true

class Fifty < Formula
  desc "Your project's morning video — AI catch-up briefs for any git repo"
  homepage "https://github.com/balgaly/50-first-sessions"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/balgaly/50-first-sessions/releases/download/v0.1.0/fifty_0.1.0_darwin_amd64.tar.gz"
      sha256 "2e873025ca1b956a85219a9ea40b9cca1821cfd81c36e362b5aa23b49b9b4fe7"
    end
    on_arm do
      url "https://github.com/balgaly/50-first-sessions/releases/download/v0.1.0/fifty_0.1.0_darwin_arm64.tar.gz"
      sha256 "5df9ce76992c396d4183d19aecf59915e485fcd7c9b68a9626e90ad424d34bc6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/balgaly/50-first-sessions/releases/download/v0.1.0/fifty_0.1.0_linux_amd64.tar.gz"
      sha256 "74c77ab3ad53d03662bd9217cd4e2958b1994215b9a240d93c2cd0d89bb4aa8d"
    end
    on_arm do
      url "https://github.com/balgaly/50-first-sessions/releases/download/v0.1.0/fifty_0.1.0_linux_arm64.tar.gz"
      sha256 "0792fd8025dcd3470de13238f25e7125a746704db68b0d5460c2742a112bbb1f"
    end
  end

  def install
    bin.install "fifty"
  end

  test do
    system "#{bin}/fifty", "--version"
  end
end
