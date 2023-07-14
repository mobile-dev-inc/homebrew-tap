# Generated with JReleaser 1.0.0 at 2023-07-14T22:44:56.517Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.30.1/maestro.zip"
  version "1.30.1"
  sha256 "7f7b890b475beef364a0ac7f00dc5d7c6d057eecaef01c5112fad5a5ed2eb642"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.30.1", output
  end
end
