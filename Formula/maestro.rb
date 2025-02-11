# Generated with JReleaser 1.13.1 at 2025-02-11T22:35:34.898047Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.39.12/maestro.zip"
  version "1.39.12"
  sha256 "e58e178f41e20b6987afde0d4d8e581c90e6ece2d88e6cc9b0988a98f99f0141"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.39.12", output
  end
end
