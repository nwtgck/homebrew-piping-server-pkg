# typed: false
# frozen_string_literal: true

class PipingServer < Formula
  desc "Piping Server"
  homepage "https://github.com/nwtgck/piping-server-pkg"
  version "1.12.7"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.7/piping-server-pkg-mac-x64.tar.gz"
    sha256 "acb4f4e8c5c50c170243363c750799e9a118a31e13c596f5bc684ce96e482d59"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.7/piping-server-pkg-mac-arm64.tar.gz"
    sha256 "3ac96e060ec4c0117df782d0682dc317c4bb09f3813478b03d40310cfae8bc51"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.7/piping-server-pkg-linuxstatic-x64.tar.gz"
    sha256 "47c5c33f3c291d9dce233ede63238bfa13252d65ae5fac40a7e44693759f691e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.7/piping-server-pkg-linuxstatic-arm64.tar.gz"
    sha256 "dbbd604e2b798742f6f7650689839eb8881d7616fbc2fb08e421421e0b7dd81a"
  end

  def install
    bin.install "piping-server"
  end
end
