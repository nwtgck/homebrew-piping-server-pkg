# typed: false
# frozen_string_literal: true

class PipingServer < Formula
  desc "Piping Server"
  homepage "https://github.com/nwtgck/piping-server-pkg"
  version "1.11.0"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.11.0/piping-server-pkg-mac-x64.tar.gz"
    sha256 "0552cfa8655cb27e1d16d2b2b15ee916fd85e74570fc9f99b98a4cb9d3f9120b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.11.0/piping-server-pkg-mac-arm64.tar.gz"
    sha256 "0454ac44d8e21dce7962554bfc184a429119da86b6d9a41fd54cdc338d54d270"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.11.0/piping-server-pkg-linuxstatic-x64.tar.gz"
    sha256 "050f6c29c356518879d2e2d5ebf5d12c0fee25d5a01a604db5cf3419450f148a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.11.0/piping-server-pkg-linuxstatic-arm64.tar.gz"
    sha256 "050f6c29c356518879d2e2d5ebf5d12c0fee25d5a01a604db5cf3419450f148a"
  end

  def install
    bin.install "piping-server"
  end
end
