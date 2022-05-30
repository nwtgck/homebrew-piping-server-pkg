# typed: false
# frozen_string_literal: true

class PipingServer < Formula
  desc "Piping Server"
  homepage "https://github.com/nwtgck/piping-server-pkg"
  version "1.12.3"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.3/piping-server-pkg-mac-x64.tar.gz"
    sha256 "8dec43ee781f9a568731eae7b683f97aae1ef2cd47fe630fcae677070e82ab86"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.3/piping-server-pkg-mac-arm64.tar.gz"
    sha256 "741731cec507d44abbea868628520a207484819073e2062a0effb475336dc0d8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.3/piping-server-pkg-linuxstatic-x64.tar.gz"
    sha256 "2a809295dc42349f9416e830bf74f6d1605b6b88c5bdfab2a9839049b4181217"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.3/piping-server-pkg-linuxstatic-arm64.tar.gz"
    sha256 "d3d2b0a19a23fdf675166f35f9f7d5dda3f4e0f0ed4a640e2213f6ae76b7030a"
  end

  def install
    bin.install "piping-server"
  end
end
