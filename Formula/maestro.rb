# Generated with JReleaser 1.13.1 at 2025-09-12T15:16:13.693403196Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-2.0.3/maestro.zip"
  version "2.0.3"
  sha256 "275e5c4aec5254ec8f2c43cf5406cbdf9fc94db05195bf3ed5b03d404dde35e4"
  license "Apache-2.0"

  depends_on "openjdk" => "17+"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "2.0.3", output
  end
end
