# Generated with JReleaser 1.13.1 at 2024-11-05T13:17:35.654324Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.39.1/maestro.zip"
  version "1.39.1"
  sha256 "16f85e91f9c1d000bc0e585bc0d47a722062ea584daca9ac1dbb8b860f09a760"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.39.1", output
  end
end
