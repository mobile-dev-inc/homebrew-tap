# Generated with JReleaser 1.0.0 at 2022-08-25T18:18:55.816478Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.3.6/maestro-1.3.6.zip"
  version "1.3.6"
  sha256 "647a1cbb9e384d8d3a1b3a059623ba7d4d0640f28f1d490f3db0425979cfc485"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.3.6", output
  end
end
