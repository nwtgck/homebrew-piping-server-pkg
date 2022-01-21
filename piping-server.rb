# typed: false
# frozen_string_literal: true

class PipingServer < Formula
  desc "Piping Server"
  homepage "https://github.com/nwtgck/piping-server-pkg"
  version "1.10.1"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.10.1/piping-server-pkg-mac-x64.tar.gz"
    sha256 "ffded8d195b67ad6727f014eb75aff4448a7ff417ff3f8a1a4b7389c2e00bf8f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.10.1/piping-server-pkg-mac-arm64.tar.gz"
    sha256 "cbb4697bd3a96070358d5e8c4601ef77e7670a7bad7d637262cf922d72be323f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.10.1/piping-server-pkg-linuxstatic-x64.tar.gz"
    sha256 "29be51c058ecf60e47ae85450a692efb8a9c5eed3e053bf9c590809955488e0f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.10.1/piping-server-pkg-linuxstatic-arm64.tar.gz"
    sha256 "29be51c058ecf60e47ae85450a692efb8a9c5eed3e053bf9c590809955488e0f"
  end

  def install
    bin.install "piping-server"
  end
end
