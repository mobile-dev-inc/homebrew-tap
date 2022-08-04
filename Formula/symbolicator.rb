class Symbolicator < Formula
  desc "Symbolize crash and memory leak reports"
  homepage "https://github.com/mobile-dev-inc/Symbolicator"
  url "https://github.com/mobile-dev-inc/Symbolicator/archive/refs/tags/v0.0.4.tar.gz"
  head "https://github.com/mobile-dev-inc/Symbolicator.git", branch: "main"
  version "0.0.4"
  sha256 "21dacd389d77b8c1771dadceedfa73842315372bab7508c5a0f6367ba40c4a40"
  license "http://www.apache.org/licenses/LICENSE-2.0"

  depends_on xcode: ["13.4", :build]

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    
    system "swift", "build", "--configuration", "release", "--disable-sandbox"

    system "install", "-d", "#{prefix}/bin"
    system "cp", ".build/release/Symbolicator", "#{prefix}/bin/symbolicator"
  end

  test do
    system "swift", "test"
  end
end
