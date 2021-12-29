# typed: false
# frozen_string_literal: true

class PipingServer < Formula
  desc "Piping Server"
  homepage "https://github.com/nwtgck/piping-server-pkg"
  version "1.8.1-2"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.8.1-2/piping-server-pkg-mac-x64.tar.gz"
    sha256 "6a250be4f051bf238bef1f786aea62a15cad99b6435440e1f217655de2ada1e5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.8.1-2/piping-server-pkg-mac-arm64.tar.gz"
    sha256 "91bbc4bdcb96ead7e873b466bbf87a4aaefbf5dd3f04a3c1abce86207dadeffb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.8.1-2/piping-server-pkg-linuxstatic-x64.tar.gz"
    sha256 "f3cf125db938ae7af15f30c6621234f59dbce8bdafb2547017a85b665c829629"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.8.1-2/piping-server-pkg-linuxstatic-arm64.tar.gz"
    sha256 "f3cf125db938ae7af15f30c6621234f59dbce8bdafb2547017a85b665c829629"
  end

  def install
    bin.install "piping-server"
  end
end
