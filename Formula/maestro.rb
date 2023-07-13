# Generated with JReleaser 1.0.0 at 2023-07-13T21:21:10.982Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.30.0/maestro.zip"
  version "1.30.0"
  sha256 "fd025fc70470abe1f906b622c5078563dd4654d3afcd31c33fe04ec7fbcc35fd"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.30.0", output
  end
end
