# Generated with JReleaser 1.13.1 at 2026-01-12T11:20:03.186560605Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-2.1.0/maestro.zip"
  version "2.1.0"
  sha256 "973c34d5dfeb5e746cebf128df8a8003ff471b6146b23cbbac41c9aa36df1066"
  license "Apache-2.0"

  depends_on "openjdk" => "17+"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "2.1.0", output
  end
end
