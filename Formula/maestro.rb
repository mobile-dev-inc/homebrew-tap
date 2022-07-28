# Generated with JReleaser 1.0.0 at 2022-07-28T14:46:25.826043Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.1.0/maestro-1.1.0.zip"
  version "1.1.0"
  sha256 "64a9ea499860420d60474c4319d52598b981143ef40ab4c1404c696cbf4f0b67"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.1.0", output
  end
end
