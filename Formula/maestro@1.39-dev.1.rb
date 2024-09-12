# Generated with JReleaser 1.13.1 at 2024-08-15T02:26:11.611Z
# Then manually updated by Bartek Pacia
class MaestroAT139Dev1 < Formula
  desc "The simplest and most effective mobile UI testing framework."
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.39.0-dev.1/maestro.zip"
  version "1.38.1"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.38.1", output
  end
end
