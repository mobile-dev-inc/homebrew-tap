# Generated with JReleaser 1.0.0 at 2022-12-12T23:43:50.772Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.17.0/maestro.zip"
  version "1.17.0"
  sha256 "dc5c182423c19dcc21129b30c1f22642f9182a0187b2ca96ae089e0ec46b6a4a"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.17.0", output
  end
end
