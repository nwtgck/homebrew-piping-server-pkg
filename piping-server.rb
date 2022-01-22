# typed: false
# frozen_string_literal: true

class PipingServer < Formula
  desc "Piping Server"
  homepage "https://github.com/nwtgck/piping-server-pkg"
  version "1.10.2"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.10.2/piping-server-pkg-mac-x64.tar.gz"
    sha256 "f240883d203e1a7d9369ab18cbdaa3110712e225c29774506edd779ed8a11c4b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.10.2/piping-server-pkg-mac-arm64.tar.gz"
    sha256 "650162010fa4a1850275029d7c1dd863e241c920b01a8858a8acf25194821054"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.10.2/piping-server-pkg-linuxstatic-x64.tar.gz"
    sha256 "57ee88cca149b60cf54186d10e8fd1e7deba09b1c79fe5ecef988c4cef33d071"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.10.2/piping-server-pkg-linuxstatic-arm64.tar.gz"
    sha256 "57ee88cca149b60cf54186d10e8fd1e7deba09b1c79fe5ecef988c4cef33d071"
  end

  def install
    bin.install "piping-server"
  end
end
