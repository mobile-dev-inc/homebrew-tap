# Generated with JReleaser 1.13.1 at 2025-10-27T08:04:06.858906119Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-2.0.7/maestro.zip"
  version "2.0.7"
  sha256 "43ce3090227bc0be27df73ba1a89d34e3db509961ba84ace1826616e8006d763"
  license "Apache-2.0"

  depends_on "openjdk" => "17+"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "2.0.7", output
  end
end
