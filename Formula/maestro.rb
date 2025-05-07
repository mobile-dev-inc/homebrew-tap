# Generated with JReleaser 1.13.1 at 2025-05-07T07:13:39.191832Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.40.2/maestro.zip"
  version "1.40.2"
  sha256 "fc961648dfd8e46379a6d691a7d188b615033458d4fbacce242d875e396f9721"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.40.2", output
  end
end
