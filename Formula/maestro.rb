# Generated with JReleaser 1.0.0 at 2023-08-10T07:50:20.879Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.31.0/maestro.zip"
  version "1.31.0"
  sha256 "0a76deb9edc82cc1cce6685eb9207ef0f3317b83aea20d3ba81c82dc7ddcf365"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.31.0", output
  end
end
