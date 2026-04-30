# Generated with JReleaser 1.13.1 at 2026-04-30T10:07:10.167298467Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-2.5.1/maestro.zip"
  version "2.5.1"
  sha256 "2d924bfd37cccabca438a727213648cbfe4f8bb711559ec8e9d199dc09a5ce52"
  license "Apache-2.0"

  depends_on "openjdk" => "17+"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "2.5.1", output
  end
end
