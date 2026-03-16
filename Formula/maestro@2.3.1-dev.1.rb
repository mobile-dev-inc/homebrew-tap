# Generated with JReleaser 1.13.1 at 2024-08-15T02:26:11.611Z
# Then manually updated by Bartek Pacia and others
class MaestroAT231Dev1 < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/Maestro/releases/download/cli-2.3.1-dev.1/maestro.zip"
  version "2.3.1"
  license "Apache-2.0"

  depends_on "openjdk" => "17+"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "2.3.1", output
  end
end