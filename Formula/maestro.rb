# Generated with JReleaser 1.13.1 at 2025-10-27T07:33:15.093213076Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-2.0.7/maestro.zip"
  version "2.0.7"
  sha256 "46ac45c94295ed42905c218e265c872f1a2fae57f1cbd461472382b9f8cf8974"
  license "Apache-2.0"

  depends_on "openjdk" => "17+"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "2.0.7", output
  end
end
