# Generated with JReleaser 1.0.0 at 2023-10-31T20:35:45.792Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.34.0/maestro.zip"
  version "1.34.0"
  sha256 "d9a04429c067b8c2c9bfb7e9d40f3c20676cc78407886c66a9397846d1507be1"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.34.0", output
  end
end
