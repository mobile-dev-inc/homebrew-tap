# Generated with JReleaser 1.13.1 at 2026-07-31T12:03:39.915137664Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-2.8.0/maestro.zip"
  version "2.8.0"
  sha256 "b3e561161904fb391875ca5834d5b22cf0b01c052dd1b408ad83e30d8f8951b3"
  license "Apache-2.0"

  depends_on "openjdk" => "17+"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "2.8.0", output
  end
end
