# typed: false
# frozen_string_literal: true

class PipingServer < Formula
  desc "Piping Server"
  homepage "https://github.com/nwtgck/piping-server-pkg"
  version "1.12.9"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.9/piping-server-pkg-mac-x64.tar.gz"
    sha256 "4a1850cb87735ca6d2230c7ed624a10386bb3c1c25fd3a8a265be9230c07b081"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.9/piping-server-pkg-mac-arm64.tar.gz"
    sha256 "3e0906e8e5d2f2028416843ab08b1db0db5b9173a4c39818240e0f87b3c97f4c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.9/piping-server-pkg-linuxstatic-x64.tar.gz"
    sha256 "f60d3d24d5a6aaf17d2bf693fe65dda8e4940deec0001e8e72063dbbc69884d5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.9/piping-server-pkg-linuxstatic-arm64.tar.gz"
    sha256 "0d188d2ccefef0b619c08efdbe612fe3ba89f5c060d733123a2a8e6b380b7c58"
  end

  def install
    bin.install "piping-server"
  end
end
