# Generated with JReleaser 1.13.1 at 2025-08-26T15:08:35.016072936Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-2.0.0/maestro.zip"
  version "2.0.0"
  sha256 "ebad91432b618f9b6b7c04322cb78950d613257e7473ecc2d7e3abf59c1cad6d"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "2.0.0", output
  end
end
