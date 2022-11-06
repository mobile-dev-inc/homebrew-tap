# Generated with JReleaser 1.0.0 at 2022-11-06T19:41:46.862575Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.12.0/maestro.zip"
  version "1.12.0"
  sha256 "e15c7f2a24e3b38d345f2103abb2bbe9ec515156faa77acad5b9e154a9d8a54b"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.12.0", output
  end
end
