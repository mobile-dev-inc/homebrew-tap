# Generated with JReleaser 1.13.1 at 2026-10-26T11:49:34.991436099Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-2.12.0/maestro.zip"
  version "2.12.0"
  sha256 "a6044a84542f522f434c5dc3d609e60c7446d423f3ed1b2ae513f5c48663ec5e"
  license "Apache-2.0"

  depends_on "openjdk" => "17+"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "2.12.0", output
  end
end
