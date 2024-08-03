# Generated with JReleaser 1.13.1 at 2024-08-03T18:02:31.049Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.37.7/maestro.zip"
  version "1.37.7"
  sha256 "18192c1ded8034d492d96200e7791502103e92c9cfeb30af87896d22f068a182"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.37.7", output
  end
end
