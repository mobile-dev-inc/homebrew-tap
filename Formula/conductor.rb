# Generated with JReleaser 1.0.0 at 2022-07-17T16:40:01.939382Z
class Conductor < Formula
  desc "Conductor CLI"
  homepage "https://conductor.mobile.dev"
  url "https://github.com/mobile-dev-inc/conductor/releases/download/cli-1.1.2/conductor-1.1.2.zip"
  version "1.1.2"
  sha256 "1e71548e461503390700911d9e4d5ddd14255d01f82d0e1358c008d11ebbfffc"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/conductor" => "conductor"
  end

  test do
    output = shell_output("#{bin}/conductor --version")
    assert_match "1.1.2", output
  end
end
