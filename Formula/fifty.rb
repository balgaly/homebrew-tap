# typed: false
# frozen_string_literal: true

class Fifty < Formula
  desc "Your project's morning video — AI catch-up briefs for any git repo"
  homepage "https://github.com/balgaly/50-first-sessions"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/balgaly/50-first-sessions/releases/download/v0.2.0/fifty_0.2.0_darwin_amd64.tar.gz"
      sha256 "7aefed21d1f78a4cf57e0ee4d2e81fbb7b223ad377cf0d5881b7c9889619abe1"
    end
    on_arm do
      url "https://github.com/balgaly/50-first-sessions/releases/download/v0.2.0/fifty_0.2.0_darwin_arm64.tar.gz"
      sha256 "20272f9831704eac597cb83a160c7b4fdb63f86916d9983157e7077ee6b5154d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/balgaly/50-first-sessions/releases/download/v0.2.0/fifty_0.2.0_linux_amd64.tar.gz"
      sha256 "9105cc3a719fe88144f420e5aa15dec1746941eb52a7504b715c1493838dc28d"
    end
    on_arm do
      url "https://github.com/balgaly/50-first-sessions/releases/download/v0.2.0/fifty_0.2.0_linux_arm64.tar.gz"
      sha256 "665e36bfb9c5b10d86e73e08ba3b8357b4ab4b0f89ec736c404028ea6328530c"
    end
  end

  def install
    bin.install "fifty"
  end

  test do
    system "#{bin}/fifty", "--version"
  end
end
