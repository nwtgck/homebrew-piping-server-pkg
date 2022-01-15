# typed: false
# frozen_string_literal: true

class PipingServer < Formula
  desc "Piping Server"
  homepage "https://github.com/nwtgck/piping-server-pkg"
  version "1.9.1-1"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.9.1-1/piping-server-pkg-mac-x64.tar.gz"
    sha256 "09493d821bc1311cd86b7a99cf2ad43030f89a3662cd7afda2923c5e0cde1c25"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.9.1-1/piping-server-pkg-mac-arm64.tar.gz"
    sha256 "8c85fbfd17d20bc9db0a8102b1242a183f8554f2fc3813d920e483ca38ea8d35"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.9.1-1/piping-server-pkg-linuxstatic-x64.tar.gz"
    sha256 "d0a6bc1ea24476d193ca5892db8a200e131170ed410bbc2e9725410f02f04d8d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.9.1-1/piping-server-pkg-linuxstatic-arm64.tar.gz"
    sha256 "d0a6bc1ea24476d193ca5892db8a200e131170ed410bbc2e9725410f02f04d8d"
  end

  def install
    bin.install "piping-server"
  end
end
