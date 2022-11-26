# typed: false
# frozen_string_literal: true

class PipingServer < Formula
  desc "Piping Server"
  homepage "https://github.com/nwtgck/piping-server-pkg"
  version "1.12.8"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.8/piping-server-pkg-mac-x64.tar.gz"
    sha256 "8794e51849abfaf0c7a148c08d0a988fc287f09d81ffbcb5bdb81ea837bd86fc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.8/piping-server-pkg-mac-arm64.tar.gz"
    sha256 "42fde028d7fb7de3fb4907515a9a2abc277e605e252aa25a10d22dbe9eb7dec8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.8/piping-server-pkg-linuxstatic-x64.tar.gz"
    sha256 "4681748bfb56c6fbdb01da7959ed453ddf0fa08e6500f5bc065dfc17a07ee1d2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.8/piping-server-pkg-linuxstatic-arm64.tar.gz"
    sha256 "d07dd96afcaa614489eb5369eef041ede971cd1420d93f5079749d55664b80fd"
  end

  def install
    bin.install "piping-server"
  end
end
