# Generated with JReleaser 1.13.1 at 2025-11-13T06:59:39.263936273Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-2.0.10/maestro.zip"
  version "2.0.10"
  sha256 "dbdcfbe2b673e1a6f40c65664f1ed5becad0b0a40e35d0e203dff511d05032f6"
  license "Apache-2.0"

  depends_on "openjdk" => "17+"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "2.0.10", output
  end
end
