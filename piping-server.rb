# typed: false
# frozen_string_literal: true

class PipingServer < Formula
  desc "Piping Server"
  homepage "https://github.com/nwtgck/piping-server-pkg"
  version "1.8.0-1"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.8.0-1/piping-server-pkg-mac-x64.tar.gz"
    sha256 "5f3dcc90b37fe13fcd3b47fa0f96c066bd44e09180b61133a96b308bd0ef44a1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.8.0-1/piping-server-pkg-mac-arm64.tar.gz"
    sha256 "9cc182c3ddd76482345a130b47cc40546bc7c2a9629f085f53d5b72271181fe7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.8.0-1/piping-server-pkg-linuxstatic-x64.tar.gz"
    sha256 "72e906508aa4a0d4dd99fb7ffac4b8e57f95c50b242e67907fc87cb42aec68da"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.8.0-1/piping-server-pkg-linuxstatic-arm64.tar.gz"
    sha256 "72e906508aa4a0d4dd99fb7ffac4b8e57f95c50b242e67907fc87cb42aec68da"
  end

  def install
    bin.install "piping-server"
  end
end
