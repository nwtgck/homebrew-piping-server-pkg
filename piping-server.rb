# typed: false
# frozen_string_literal: true

class PipingServer < Formula
  desc "Piping Server"
  homepage "https://github.com/nwtgck/piping-server-pkg"
  version "1.11.1"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.11.1/piping-server-pkg-mac-x64.tar.gz"
    sha256 "408867eaa5fdcec04e74b7b1093783a39057857adfd2af25ce7fa76ad9eb94d3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.11.1/piping-server-pkg-mac-arm64.tar.gz"
    sha256 "4c6e91276f36fb31347e69159bff275065e717ffbd499140d18be1552c68f247"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.11.1/piping-server-pkg-linuxstatic-x64.tar.gz"
    sha256 "90dd06f7aafc5fd945ecd83e5abd0e0ac166e158afaf8f720d73530c39b51fc5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.11.1/piping-server-pkg-linuxstatic-arm64.tar.gz"
    sha256 "90dd06f7aafc5fd945ecd83e5abd0e0ac166e158afaf8f720d73530c39b51fc5"
  end

  def install
    bin.install "piping-server"
  end
end
