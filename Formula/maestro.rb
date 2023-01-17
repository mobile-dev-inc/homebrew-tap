# Generated with JReleaser 1.0.0 at 2023-01-17T13:42:38.916Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.19.1/maestro.zip"
  version "1.19.1"
  sha256 "4aaedbb104cf52cac3d5c6ebf429ea8444b4f890ea1ad4f5c27724b130f2d0b4"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.19.1", output
  end
end
