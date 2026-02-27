class Xcodes < Formula
  desc "The best command-line tool to install and switch between multiple versions of Xcode"
  homepage "https://github.com/mobile-dev-inc/xcodes"
  url "https://github.com/mobile-dev-inc/xcodes/archive/5ac2ab56b4d7f4007f170a16b4c855b28991b19a.tar.gz"
  version "2026.02.27"
  sha256 "10da4d35468f92d34c6f35dd2ac3b0d1ac9fda2a483ce5857d8c15f8cc12a227"
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