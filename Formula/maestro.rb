# Generated with JReleaser 1.0.0 at 2022-08-18T12:33:06.163017Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.2.5/maestro-1.2.5.zip"
  version "1.2.5"
  sha256 "e65ba3942b49b4f789fa35f251e2c6c5343f6ea410bd7d642ef872e75019d3a9"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.2.5", output
  end
end
