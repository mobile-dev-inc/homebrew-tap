class Xcodes < Formula
  desc "The best command-line tool to install and switch between multiple versions of Xcode"
  homepage "https://github.com/mobile-dev-inc/xcodes"
  url "https://github.com/mobile-dev-inc/xcodes/archive/4ad7c1327ed9c9493b054c7ad5e4e40e2807bbce.tar.gz"
  version "2026.02.27"
  sha256 "dde5968ab44f3d7f5fc20ff92d1aa7c9be0d2b4f41bada4d5013da8a048f4927"
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