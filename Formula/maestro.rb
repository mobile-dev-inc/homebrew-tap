# Generated with JReleaser 1.0.0 at 2022-12-28T07:38:32.252Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.18.2/maestro.zip"
  version "1.18.2"
  sha256 "c8cac0bf7370691001c652b2dbc1ac77011216c1e0665607f5caf3563021850b"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.18.2", output
  end
end
