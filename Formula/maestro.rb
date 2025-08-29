# Generated with JReleaser 1.13.1 at 2025-08-29T16:13:20.321086209Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-2.0.1/maestro.zip"
  version "2.0.1"
  sha256 "7d94484fd6d090b113648ffc687e099a3c54c02b23c8d86224cf36bd32270b1a"
  license "Apache-2.0"

  depends_on "openjdk" => "17+"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "2.0.1", output
  end
end
