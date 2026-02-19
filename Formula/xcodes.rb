class Xcodes < Formula
  desc "The best command-line tool to install and switch between multiple versions of Xcode"
  homepage "https://github.com/mobile-dev-inc/xcodes"
  url "https://github.com/mobile-dev-inc/xcodes/archive/93bce877531e4bd60f7ef7f14379360a85caae36.tar.gz"
  version "2025.09.26"
  sha256 "aa4f02703703df06446d8efcda4e7dcd89cc3c05bf577ab1734b24e682f00c5c"
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