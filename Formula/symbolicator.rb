class Symbolicator < Formula
  desc "Symbolize crash and memory leak reports"
  homepage "https://github.com/mobile-dev-inc/Symbolicator"
  url "https://github.com/mobile-dev-inc/Symbolicator/archive/refs/tags/v0.0.1.tar.gz"
  head "https://github.com/mobile-dev-inc/Symbolicator.git", branch: "main"
  version "0.0.1"
  sha256 "45b83e8fc106e9b532565816f4b7af8894d998df0e2cb7e216acc9356cdb0d93"
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
