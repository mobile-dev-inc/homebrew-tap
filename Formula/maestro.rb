# Generated with JReleaser 1.13.1 at 2026-02-20T12:14:56.26599631Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-2.2.0/maestro.zip"
  version "2.2.0"
  sha256 "6de501d2e8adf2d60f4b6b3174dc4b5e393f2f2617245d350a659627dccb0922"
  license "Apache-2.0"

  depends_on "openjdk" => "17+"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "2.2.0", output
  end
end
