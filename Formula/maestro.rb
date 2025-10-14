# Generated with JReleaser 1.13.1 at 2025-10-14T07:23:44.772244615Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-2.0.6/maestro.zip"
  version "2.0.6"
  sha256 "bfb03343362686fa817402b9c17774b487b5f32fc155e24fdc9a757aa7c199c1"
  license "Apache-2.0"

  depends_on "openjdk" => "17+"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "2.0.6", output
  end
end
