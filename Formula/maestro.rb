# Generated with JReleaser 1.13.1 at 2025-10-28T11:27:29.077678842Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-2.0.8/maestro.zip"
  version "2.0.8"
  sha256 "5415e96c4746598e6ff44d064fed90f61928f256685661354fb173ad02ff72ce"
  license "Apache-2.0"

  depends_on "openjdk" => "17+"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "2.0.8", output
  end
end
