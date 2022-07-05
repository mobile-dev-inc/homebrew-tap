# Generated with JReleaser 1.0.0 at 2022-07-05T23:43:03.196766Z
class Conductor < Formula
  desc "Conductor CLI"
  homepage "https://conductor.mobile.dev"
  url "https://github.com/mobile-dev-inc/conductor/releases/download/cli-1.1.0/conductor-1.1.0.zip"
  version "1.1.0"
  sha256 "7bd6d234b306c214b913c8efbb9d7d4407979ff92ea7880e9a56df9014309904"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/conductor" => "conductor"
  end

  test do
    output = shell_output("#{bin}/conductor --version")
    assert_match "1.1.0", output
  end
end
