# Generated with JReleaser 1.0.0 at 2022-09-08T12:21:28.352237Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.5.0/maestro-1.5.0.zip"
  version "1.5.0"
  sha256 "4a1a43c79980e636ef592f2af16c898c5ca9b66b09bf5df2d893d6211dce9fb8"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.5.0", output
  end
end
