# Generated with JReleaser 1.0.0 at 2022-11-02T12:07:44.881777Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.11.4/maestro.zip"
  version "1.11.4"
  sha256 "5df0a5d0a4aaf0b90e8edf298964bcce836f09f0536d0368142170045770f66b"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.11.4", output
  end
end
