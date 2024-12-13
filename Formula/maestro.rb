# Generated with JReleaser 1.13.1 at 2024-12-13T19:51:52.631134Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.39.5/maestro.zip"
  version "1.39.5"
  sha256 "dafcfca90213650f72fc03f2d2f38b31a077b3553c3861eafb56d2b5d08b0ab1"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.39.5", output
  end
end
