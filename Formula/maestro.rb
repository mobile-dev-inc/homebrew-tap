# Generated with JReleaser 1.0.0 at 2023-01-17T14:55:42.147Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.19.2/maestro.zip"
  version "1.19.2"
  sha256 "87bb8d57f7313adafcfad1661017e973aa7c05a45f227771e78e60eed30cf716"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.19.2", output
  end
end
