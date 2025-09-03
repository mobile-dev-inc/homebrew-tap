# Generated with JReleaser 1.13.1 at 2025-09-03T10:27:08.258597297Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-2.0.2/maestro.zip"
  version "2.0.2"
  sha256 "6ba03b6f09f7df7d40fdc2eb02f8022d89cad04b39e0eee11b794ef9757b2a2c"
  license "Apache-2.0"

  depends_on "openjdk" => "17+"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "2.0.2", output
  end
end
