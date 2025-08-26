# Generated with JReleaser 1.13.1 at 2025-06-25T16:00:30.692666Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.41.0/maestro.zip"
  version "1.41.0"
  sha256 "0b87a2eed8c1594fe572c5f29d6d64af389f4b7231ddde714179bbcb05f0fe0c"
  license "Apache-2.0"

  depends_on "openjdk" => "17+"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.41.0", output
  end
end
