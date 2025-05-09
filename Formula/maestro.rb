# Generated with JReleaser 1.13.1 at 2025-05-09T05:42:41.423919Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.40.3/maestro.zip"
  version "1.40.3"
  sha256 "80b753d4c725967b32b1be0dd8961c93d3b1422f66eb795e1fdcdbe677b0a2d5"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.40.3", output
  end
end
