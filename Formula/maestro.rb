# Generated with JReleaser 1.13.1 at 2024-12-12T12:41:58.458624Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.39.4/maestro.zip"
  version "1.39.4"
  sha256 "e26fde08b840b317f63705139274093e2a4297974722af8a94a06adb8e63dd13"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.39.4", output
  end
end
