# Generated with JReleaser 1.13.1 at 2025-05-05T08:15:29.241597Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.40.1/maestro.zip"
  version "1.40.1"
  sha256 "f1339fc7f26b8de924bb3d3dadd4408eec015e7e4e38c2332b839fc7cf2774f9"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.40.1", output
  end
end
