# Generated with JReleaser 1.13.1 at 2024-08-14T15:23:32.727Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.37.8/maestro.zip"
  version "1.37.8"
  sha256 "a89729b1d53ee05af4130fbf6f82fcba286dcff6dbf7f5c5f7db0d773d5e8828"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.37.8", output
  end
end
