# Generated with JReleaser 1.13.1 at 2025-02-13T11:43:39.18045Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.39.13/maestro.zip"
  version "1.39.13"
  sha256 "2751b2d76545e42ece4c308eb38b3bb16bb08b1651d6dcf8850c91c4a7306a13"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.39.13", output
  end
end
