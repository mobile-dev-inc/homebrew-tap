# Generated with JReleaser 1.0.0 at 2022-12-27T18:58:23.353Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.18.1/maestro.zip"
  version "1.18.1"
  sha256 "b1536d8fdf868ed1b3982d2d15b179428affd1722f70aade80b5623cdc13c4bc"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.18.1", output
  end
end
