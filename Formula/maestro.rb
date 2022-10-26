# Generated with JReleaser 1.0.0 at 2022-10-26T16:10:16.940879Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.11.0/maestro-1.11.0.zip"
  version "1.11.0"
  sha256 "c285fe1d88f67fc7ddf1b0aae71340dcc7147ad100106105e3ab5a488acc119e"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.11.0", output
  end
end
