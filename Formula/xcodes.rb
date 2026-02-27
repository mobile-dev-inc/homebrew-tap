class Xcodes < Formula
  desc "The best command-line tool to install and switch between multiple versions of Xcode"
  homepage "https://github.com/mobile-dev-inc/xcodes"
  url "https://github.com/mobile-dev-inc/xcodes/archive/11112a7829c379acbc37bad371fd5d526e9fbceb.tar.gz"
  version "2026.02.27"
  sha256 "7a83317a97373fb92f4fcc363cb48c0931288f1df775c905a44ff543d09ad434"
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