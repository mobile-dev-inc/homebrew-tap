# Generated with JReleaser 1.13.1 at 2026-08-26T13:54:16.046403663Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-2.9.0/maestro.zip"
  version "2.9.0"
  sha256 "855bb2ce1399d82f4f4a73d84a4d945f70b0d43eb86127e027af82809f63f0bd"
  license "Apache-2.0"

  depends_on "openjdk" => "17+"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "2.9.0", output
  end
end
