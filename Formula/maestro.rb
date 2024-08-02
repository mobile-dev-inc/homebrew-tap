# Generated with JReleaser 1.13.1 at 2024-08-02T11:21:41.124Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.37.5/maestro.zip"
  version "1.37.5"
  sha256 "7333db795857c430fa0a759c26cc5d773f6cf7b0985cf1f16ffca758b5b51a8c"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.37.5", output
  end
end
