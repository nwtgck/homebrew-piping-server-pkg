# typed: false
# frozen_string_literal: true

class PipingServer < Formula
  desc "Piping Server"
  homepage "https://github.com/nwtgck/piping-server-pkg"
  version "1.12.0"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.0/piping-server-pkg-mac-x64.tar.gz"
    sha256 "36585aecf49e956310842c4718696606389386e124f30e44dfc3045cb8d767f3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.0/piping-server-pkg-mac-arm64.tar.gz"
    sha256 "5d5068551336191d5b8eb5b7e35b98952d5b5d8933afa2acb2a49939d1d81239"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.0/piping-server-pkg-linuxstatic-x64.tar.gz"
    sha256 "c791f27a4188a88a916cf51e61d12168b5dfd14b60d73eb3eba68f97ae01779c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.0/piping-server-pkg-linuxstatic-arm64.tar.gz"
    sha256 "c791f27a4188a88a916cf51e61d12168b5dfd14b60d73eb3eba68f97ae01779c"
  end

  def install
    bin.install "piping-server"
  end
end
