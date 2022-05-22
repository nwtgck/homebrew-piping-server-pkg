# typed: false
# frozen_string_literal: true

class PipingServer < Formula
  desc "Piping Server"
  homepage "https://github.com/nwtgck/piping-server-pkg"
  version "1.12.2"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.2/piping-server-pkg-mac-x64.tar.gz"
    sha256 "6224e2b8a958260d8a919527cf8f15e6ad964e3dd953d211aebbd857ee1ecb1b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.2/piping-server-pkg-mac-arm64.tar.gz"
    sha256 "6ea3213620b20923ed042ba3e8e5defdda87ec54c27c553d3162add9a2d90dcd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.2/piping-server-pkg-linuxstatic-x64.tar.gz"
    sha256 "aa65066708dbe2509a1fd0fec136fddf4043fb7eacca44add4e17a273bc9c4f6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.2/piping-server-pkg-linuxstatic-arm64.tar.gz"
    sha256 "0ca4beb3cad07a58369bd63cde1a4c8ec14271127b7691416c1ef754d5fd6f57"
  end

  def install
    bin.install "piping-server"
  end
end
