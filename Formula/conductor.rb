# Generated with JReleaser 1.0.0 at 2022-06-30T12:58:29.521Z
class Conductor < Formula
  desc "Conductor CLI"
  homepage "https://conductor.mobile.dev"
  url "https://github.com/mobile-dev-inc/conductor/releases/download/cli-1.0.0/conductor-1.0.0.zip"
  version "1.0.0"
  sha256 "9e39997f81cb27f2d907a89b4d5a61c5d98cc68543ddc6d313bf8f22928a8f90"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/conductor" => "conductor"
  end

  test do
    output = shell_output("#{bin}/conductor --version")
    assert_match "1.0.0", output
  end
end
