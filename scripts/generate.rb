require 'digest'
require 'open-uri'


def digest(url)
  puts("Downloading #{url}...")
  d = Digest::SHA256.new
  d.hexdigest(open(url).read())
end

def generate()
  # Version without "v" prefix
  version = ENV["PIPING_SERVER_PKG_VERSION"]
  if version.nil?
    raise "$PIPING_SERVER_PKG_VERSION not defined"
  end
  # NOTE: formula is written for the latest "piping-server-pkg", not support all `version`.
  <<EOF
# typed: false
# frozen_string_literal: true

class PipingServer < Formula
  desc "Piping Server"
  homepage "https://github.com/nwtgck/piping-server-pkg"
  version "#{version}"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v#{version}/piping-server-pkg-mac-x64.tar.gz"
    sha256 "#{digest("https://github.com/nwtgck/piping-server-pkg/releases/download/v#{version}/piping-server-pkg-mac-x64.tar.gz")}"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v#{version}/piping-server-pkg-mac-arm64.tar.gz"
    sha256 "#{digest("https://github.com/nwtgck/piping-server-pkg/releases/download/v#{version}/piping-server-pkg-mac-arm64.tar.gz")}"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v#{version}/piping-server-pkg-linuxstatic-x64.tar.gz"
    sha256 "#{digest("https://github.com/nwtgck/piping-server-pkg/releases/download/v#{version}/piping-server-pkg-linuxstatic-x64.tar.gz")}"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/nwtgck/piping-server-pkg/releases/download/v#{version}/piping-server-pkg-linuxstatic-arm64.tar.gz"
    sha256 "#{digest("https://github.com/nwtgck/piping-server-pkg/releases/download/v#{version}/piping-server-pkg-linuxstatic-x64.tar.gz")}"
  end

  def install
    bin.install "piping-server"
  end
end
EOF
end

puts("generating...")
File.write("piping-server.rb", generate())
puts("generated")
