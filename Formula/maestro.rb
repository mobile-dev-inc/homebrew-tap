# Generated with JReleaser 1.13.1 at 2026-04-27T07:03:19.181110601Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-2.5.0/maestro.zip"
  version "2.5.0"
  sha256 "9c9a7617b47e21d4a9add205e0a2ec45f71f9fb0cb651051281afbc3f87158ea"
  license "Apache-2.0"

  depends_on "openjdk" => "17+"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "2.5.0", output
  end
end
