# typed: false
# frozen_string_literal: true

class PipingServer < Formula
  desc "Piping Server"
  homepage "https://github.com/nwtgck/piping-server-pkg"
  version "1.12.0-1"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.0-1/piping-server-pkg-mac-x64.tar.gz"
    sha256 "ea482b996f29c9b85afc2c1df70b56851586dbeb9f1d217e72cc402a69f1cb1f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.0-1/piping-server-pkg-mac-arm64.tar.gz"
    sha256 "1d3455ce3c8a837ffb8deaef86173fd15e06861e85dc3584424607b53d142c6a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.0-1/piping-server-pkg-linuxstatic-x64.tar.gz"
    sha256 "7f92c9136c74b1d6881f396c6ace598af593c2ed7927e26b1cf119368142e86b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.0-1/piping-server-pkg-linuxstatic-arm64.tar.gz"
    sha256 "7f92c9136c74b1d6881f396c6ace598af593c2ed7927e26b1cf119368142e86b"
  end

  def install
    bin.install "piping-server"
  end
end
