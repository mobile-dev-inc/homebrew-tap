class Symbolicator < Formula
  desc "Symbolize crash and memory leak reports"
  homepage "https://github.com/mobile-dev-inc/Symbolicator"
  url "https://github.com/mobile-dev-inc/Symbolicator/archive/refs/tags/v0.0.2.tar.gz"
  head "https://github.com/mobile-dev-inc/Symbolicator.git", branch: "main"
  version "0.0.2"
  sha256 "27c2b35c4329d8b6bf075423453300e190f6af9ea945234173fa8fafb0865a7c"
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
