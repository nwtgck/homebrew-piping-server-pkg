# typed: false
# frozen_string_literal: true

class PipingServer < Formula
  desc "Piping Server"
  homepage "https://github.com/nwtgck/piping-server-pkg"
  version "1.12.6"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.6/piping-server-pkg-mac-x64.tar.gz"
    sha256 "1bb550402e34276ad4c7f03f0e7f303b7cb81878a4ae9376fa8ebc3193d5c3d3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.6/piping-server-pkg-mac-arm64.tar.gz"
    sha256 "01d760788c7cf99f5933a35cd756a25211016d8617623061f6381b5f2bf1e41a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.6/piping-server-pkg-linuxstatic-x64.tar.gz"
    sha256 "a1ec9f05c6a24a5d53fedcde2f0c1e0ba8ba3337373d4a5aac3b069425176514"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.6/piping-server-pkg-linuxstatic-arm64.tar.gz"
    sha256 "81bb883d3fc51acb1a1604e546e731d3dce3ca721957c232cdb791715c408651"
  end

  def install
    bin.install "piping-server"
  end
end
