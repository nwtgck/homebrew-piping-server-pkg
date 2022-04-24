# typed: false
# frozen_string_literal: true

class PipingServer < Formula
  desc "Piping Server"
  homepage "https://github.com/nwtgck/piping-server-pkg"
  version "1.12.1"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.1/piping-server-pkg-mac-x64.tar.gz"
    sha256 "c7aeebceea0e8bb9e42653334328b108ef8c6e2e5e594fe791cb3dc4816f1ac4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.1/piping-server-pkg-mac-arm64.tar.gz"
    sha256 "08f9a459a6da1fba1816fab7f47d46a14855028bc73e13e9e7b0bbcb3fffc929"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.1/piping-server-pkg-linuxstatic-x64.tar.gz"
    sha256 "571939ce84a43be00f5a50c286ce51c78c58367355a3aaa48b8bb92d8da57add"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.1/piping-server-pkg-linuxstatic-arm64.tar.gz"
    sha256 "42138e11d02bec3f0038658010c9998e6ddbb754453cba09a8d65d7cbfe7f2d1"
  end

  def install
    bin.install "piping-server"
  end
end
