# Generated with JReleaser 1.0.0 at 2023-05-02T11:59:54.077Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.27.0/maestro.zip"
  version "1.27.0"
  sha256 "3f3f91b23e3b029103d505d0c94175468dcb6307ff716c2021fe5b243162b4d1"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.27.0", output
  end
end
