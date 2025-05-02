# Generated with JReleaser 1.13.1 at 2024-08-15T02:26:11.611Z
# Then manually updated by Bartek Pacia
class MaestroAT140Dev2 < Formula
  desc "The simplest and most effective mobile UI testing framework."
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/Maestro/releases/download/cli-1.40.2-dev.1/maestro.zip"
  version "1.40.0"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.40.0", output
  end
end
