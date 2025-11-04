# Generated with JReleaser 1.13.1 at 2025-11-04T12:00:37.223097438Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-2.0.9/maestro.zip"
  version "2.0.9"
  sha256 "6f5a79d2aa8dbf0aa4bb7a6fdddca591182c667670131c31f79450eb3579a503"
  license "Apache-2.0"

  depends_on "openjdk" => "17+"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "2.0.9", output
  end
end
