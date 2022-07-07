# typed: false
# frozen_string_literal: true

class PipingServer < Formula
  desc "Piping Server"
  homepage "https://github.com/nwtgck/piping-server-pkg"
  version "1.12.5"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.5/piping-server-pkg-mac-x64.tar.gz"
    sha256 "8b1622ca12644fc78c8b1eca8aefe4504b04d6bb9228ed480b2583db75e27fcb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.5/piping-server-pkg-mac-arm64.tar.gz"
    sha256 "bd55bffe30fbc46c730768d6019d4863bfac472d489caee0de1cd28126b8fbf8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.5/piping-server-pkg-linuxstatic-x64.tar.gz"
    sha256 "c28993cca4236aef40a2889c89803368c66781c03b7ed6f3e841a231dd6f1086"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.5/piping-server-pkg-linuxstatic-arm64.tar.gz"
    sha256 "f486f4a0258ba992cd13dc775c492d96411decf7f21e410643ae3b5f3830cc12"
  end

  def install
    bin.install "piping-server"
  end
end
