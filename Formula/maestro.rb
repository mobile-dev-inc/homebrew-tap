# Generated with JReleaser 1.13.1 at 2024-12-18T06:47:16.012655Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.39.7/maestro.zip"
  version "1.39.7"
  sha256 "f8fb67d785a424b43e3dbeeb6175b9d7271ce61740198df25ebd9f6838059630"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.39.7", output
  end
end
