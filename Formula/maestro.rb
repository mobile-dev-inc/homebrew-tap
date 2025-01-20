# Generated with JReleaser 1.13.1 at 2025-01-20T06:55:50.209625Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.39.9/maestro.zip"
  version "1.39.9"
  sha256 "5974765c9e9f0a938528306d2a45b1e5ba34fadf31baeb62ff920ce2b7d54826"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.39.9", output
  end
end
