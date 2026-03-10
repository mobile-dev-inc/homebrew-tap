# Generated with JReleaser 1.13.1 at 2026-03-10T10:41:50.749692907Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-2.3.0/maestro.zip"
  version "2.3.0"
  sha256 "aaf524c6bcd456013855b1337464f964d9a65e2fb88861affea9b4c014644e50"
  license "Apache-2.0"

  depends_on "openjdk" => "17+"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "2.3.0", output
  end
end
