# Generated with JReleaser 1.13.1 at 2026-06-12T11:47:43.66865332Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-2.6.1/maestro.zip"
  version "2.6.1"
  sha256 "3440825f514f537c6a96bcf5de995780c2a4a7f83a43208fdc95d4f1fecfad3b"
  license "Apache-2.0"

  depends_on "openjdk" => "17+"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "2.6.1", output
  end
end
