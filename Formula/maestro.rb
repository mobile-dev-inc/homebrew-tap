# Generated with JReleaser 1.13.1 at 2024-08-30T11:04:14.161853Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.38.1/maestro.zip"
  version "1.38.1"
  sha256 "028804560f11ef7c7943f2f165a9866c569c0aa07c25978446ac9ff943d7071d"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.38.1", output
  end
end
