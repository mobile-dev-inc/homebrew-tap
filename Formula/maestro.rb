# Generated with JReleaser 1.13.1 at 2025-10-08T12:06:21.18109479Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-2.0.5/maestro.zip"
  version "2.0.5"
  sha256 "a24d7d4debcb41f45bdff03703241131dca176e73bab41754036c9b5b3d0b85f"
  license "Apache-2.0"

  depends_on "openjdk" => "17+"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "2.0.5", output
  end
end
