# Generated with JReleaser 1.13.1 at 2024-11-21T08:55:05.05764Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.39.2/maestro.zip"
  version "1.39.2"
  sha256 "c97f59b5f58b8363a7b03a981fd8d25ba7a507eb27994518e615a33b6070d6c0"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.39.2", output
  end
end
