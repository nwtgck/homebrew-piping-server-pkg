# typed: false
# frozen_string_literal: true

class PipingServer < Formula
  desc "Piping Server"
  homepage "https://github.com/nwtgck/piping-server-pkg"
  version "1.10.0"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.10.0/piping-server-pkg-mac-x64.tar.gz"
    sha256 "d1b6626d0dabc3cf1a6d25127498ddef059c8cf36cb81be717b023f1d31f3c8a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.10.0/piping-server-pkg-mac-arm64.tar.gz"
    sha256 "be4c5b3a891912cf85cff329aa9df967f46f0d17a89d488dd70bc03b4b646d37"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.10.0/piping-server-pkg-linuxstatic-x64.tar.gz"
    sha256 "6ba6efe47fe24f5ab00d3ad9bfede133b36ad3b7e520cb7960fff5f28d952f06"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.10.0/piping-server-pkg-linuxstatic-arm64.tar.gz"
    sha256 "6ba6efe47fe24f5ab00d3ad9bfede133b36ad3b7e520cb7960fff5f28d952f06"
  end

  def install
    bin.install "piping-server"
  end
end
