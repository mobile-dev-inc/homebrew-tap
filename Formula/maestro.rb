# Generated with JReleaser 1.13.1 at 2026-05-21T12:45:27.636721428Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-2.6.0/maestro.zip"
  version "2.6.0"
  sha256 "80185105a5d7e227e3b3fbcf225f45b312508ea676a9fc8e1b1aa1cac8b9ff6e"
  license "Apache-2.0"

  depends_on "openjdk" => "17+"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "2.6.0", output
  end
end
