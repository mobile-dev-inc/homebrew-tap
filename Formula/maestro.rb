# Generated with JReleaser 1.0.0 at 2022-12-02T20:09:39.376Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.16.4/maestro.zip"
  version "1.16.4"
  sha256 "e51885a302a390935bafda01b1b164d0232bf2783d6428a34e9045d672c12777"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.16.4", output
  end
end
