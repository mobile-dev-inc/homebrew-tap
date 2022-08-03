class Symbolicator < Formula
  desc "Symbolize crash and memory leak reports"
  homepage "https://github.com/mobile-dev-inc/Symbolicator"
  url "https://github.com/mobile-dev-inc/Symbolicator/archive/refs/tags/v0.0.3.tar.gz"
  head "https://github.com/mobile-dev-inc/Symbolicator.git", branch: "main"
  version "0.0.3"
  sha256 "45c7629a8cdfeb4372d3b48c0d9a326d68891b1fb534f4ebb565c20623b612dc"
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
