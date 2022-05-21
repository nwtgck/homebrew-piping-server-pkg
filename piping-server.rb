# typed: false
# frozen_string_literal: true

class PipingServer < Formula
  desc "Piping Server"
  homepage "https://github.com/nwtgck/piping-server-pkg"
  version "1.12.1-1"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.1-1/piping-server-pkg-mac-x64.tar.gz"
    sha256 "63f17f64aba192e02a1c07fdcc2edf87dac1df513f074d53c69c04b94cc50e35"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.1-1/piping-server-pkg-mac-arm64.tar.gz"
    sha256 "13899cfb453de9b671afb3d7d856dda29e64443378091359ccee5cc26950c538"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.1-1/piping-server-pkg-linuxstatic-x64.tar.gz"
    sha256 "4d515491f7258cdfde40219abe2bcee4d09b4097a399dc6559eeb7a45d28f4f3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.1-1/piping-server-pkg-linuxstatic-arm64.tar.gz"
    sha256 "0189dd79426e9ba34219d1f9f655fe791bd6ac1ed76f250220cb755d9a265d08"
  end

  def install
    bin.install "piping-server"
  end
end
