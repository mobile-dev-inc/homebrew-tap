# Generated with JReleaser 1.0.0 at 2023-01-13T16:54:28.244Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.19.0/maestro.zip"
  version "1.19.0"
  sha256 "b61347fbae2b9713f2d10afc8c053bb7d50e5f99083f9e66087ebcc1a9f8bee0"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.19.0", output
  end
end
