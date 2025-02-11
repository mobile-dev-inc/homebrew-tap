# Generated with JReleaser 1.13.1 at 2025-02-11T19:15:55.050834Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.39.11/maestro.zip"
  version "1.39.11"
  sha256 "2f0e7648af3b06ab0a37f52c458e2de730119bac88399e8210e8684e46b75ee5"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.39.11", output
  end
end
