# Generated with JReleaser 1.0.0 at 2023-11-10T12:43:23.287Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.34.1/maestro.zip"
  version "1.34.1"
  sha256 "2da465ff8abec348ecc47e92cd22517db4341dc79814319209400e751c831672"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.34.1", output
  end
end
