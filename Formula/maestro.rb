# Generated with JReleaser 1.13.1 at 2024-10-16T06:54:41.689465Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.39.0/maestro.zip"
  version "1.39.0"
  sha256 "9ef9f19378b2928da981a8e640ef05ecdf44a4fb5ede0da2e72f96cacb75e265"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.39.0", output
  end
end
