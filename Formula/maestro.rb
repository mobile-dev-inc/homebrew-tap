# Generated with JReleaser 1.13.1 at 2026-04-02T22:27:06.668216949Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-2.4.0/maestro.zip"
  version "2.4.0"
  sha256 "aea22ce67ab6718997ec990c58652ede0c2be8f10ac4799039ca3dce3390d634"
  license "Apache-2.0"

  depends_on "openjdk" => "17+"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "2.4.0", output
  end
end
