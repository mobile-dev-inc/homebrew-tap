# Generated with JReleaser 1.13.1 at 2025-10-08T11:42:56.340318228Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-2.0.4/maestro.zip"
  version "2.0.4"
  sha256 "b9fa9a3ca4491619043c01ed8780fc58198f8df357dab92f137db542d4d2e22c"
  license "Apache-2.0"

  depends_on "openjdk" => "17+"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "2.0.4", output
  end
end
