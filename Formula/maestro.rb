# Generated with JReleaser 1.13.1 at 2026-09-29T13:34:16.745212209Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-2.11.0/maestro.zip"
  version "2.11.0"
  sha256 "5384593cb4e7a106489e75a821d157dd43f4e438df6bc308b72e82c685e1283a"
  license "Apache-2.0"

  depends_on "openjdk" => "17+"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "2.11.0", output
  end
end
