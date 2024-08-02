# Generated with JReleaser 1.13.1 at 2024-08-02T15:11:25.923Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.37.6/maestro.zip"
  version "1.37.6"
  sha256 "65ad5f488f6b625b86d8e0ff68d7c61904426271f1e8113605f877543b0ad3f2"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.37.6", output
  end
end
