class Xcodes < Formula
  desc "The best command-line tool to install and switch between multiple versions of Xcode"
  homepage "https://github.com/mobile-dev-inc/xcodes"
  url "https://github.com/mobile-dev-inc/xcodes/archive/66a59d89ba6b7efacef31246279892a71fa3f9eb.tar.gz"
  version "2026.02.19"
  sha256 "cf2a0dea33425d0e4a5552ef771620eb4b9a2b9f4b0db742de98ea1bf01b0363"
  license "MIT"

  depends_on xcode: ["16.0", :build]

  def install
    system "swift", "build", "--configuration", "release", "--disable-sandbox",
           "-Xswiftc", "-Onone", "--arch", "arm64", "--arch", "x86_64"

    system "install", "-d", "#{prefix}/bin"
    system "cp", ".build/apple/Products/Release/xcodes", "#{prefix}/bin/xcodes"
  end

  test do
    system "#{bin}/xcodes", "--version"
  end
end