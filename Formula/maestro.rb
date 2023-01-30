# Generated with JReleaser 1.0.0 at 2023-01-30T12:43:49.541Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.21.3/maestro.zip"
  version "1.21.3"
  sha256 "c8d8cd2524976cc656a4de0b5bb518519b697a1878ffbe876c91926fe79ff0ea"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.21.3", output
  end
end
