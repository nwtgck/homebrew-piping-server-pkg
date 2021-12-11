# typed: false
# frozen_string_literal: true

class PipingServer < Formula
  desc "Piping Server"
  homepage "https://github.com/nwtgck/piping-server-pkg"
  version "1.8.1-1"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.8.1-1/piping-server-pkg-mac-x64.tar.gz"
    sha256 "b8890ac3fdcd2fdf6bc388573d814b4e16f9aece88a781750b52401086ac7ae6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.8.1-1/piping-server-pkg-mac-arm64.tar.gz"
    sha256 "d3ded4f37ddbcc45d8fbbc038d7907aa88c5ba3a2798a467e39a9d5d852ffe85"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.8.1-1/piping-server-pkg-linuxstatic-x64.tar.gz"
    sha256 "f5df603e95d3e83c319ccc71f6a279eacd9a5274d91eb458ae147b9f5920d86d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.8.1-1/piping-server-pkg-linuxstatic-arm64.tar.gz"
    sha256 "f5df603e95d3e83c319ccc71f6a279eacd9a5274d91eb458ae147b9f5920d86d"
  end

  def install
    bin.install "piping-server"
  end
end
