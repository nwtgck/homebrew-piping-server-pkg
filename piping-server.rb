# typed: false
# frozen_string_literal: true

class PipingServer < Formula
  desc "Piping Server"
  homepage "https://github.com/nwtgck/piping-server-pkg"
  version "1.12.4"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.4/piping-server-pkg-mac-x64.tar.gz"
    sha256 "afcac403aa1322703b2ac451500a7580faa15f9b8366811bddf34f1dfb91d872"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.4/piping-server-pkg-mac-arm64.tar.gz"
    sha256 "0e19d71d15839d0a76330dc24068d845287dd5fe475620b8d07a7e3b4d6df064"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.4/piping-server-pkg-linuxstatic-x64.tar.gz"
    sha256 "aa5798cf712d5fd5b0a7633f1745b554bf30be1002c47c10c88d6dac983ef0c7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.4/piping-server-pkg-linuxstatic-arm64.tar.gz"
    sha256 "00ca1b7f4cd2cc077a1cf8d09166f081ca3a69128b50c1ce67162165484960f3"
  end

  def install
    bin.install "piping-server"
  end
end
