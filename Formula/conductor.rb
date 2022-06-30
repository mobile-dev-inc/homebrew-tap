# Generated with JReleaser 1.0.0 at 2022-06-30T11:45:38.688Z
class Conductor < Formula
  desc "Conductor CLI"
  homepage "https://conductor.mobile.dev"
  url "https://github.com/mobile-dev-inc/conductor/releases/download/cli-0.0.2/conductor-0.0.2.zip"
  version "0.0.2"
  sha256 "1817580adeddb09ee3bef71c5e019093433d44cc1b5c2d760a90a59b92b86b35"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/conductor" => "conductor"
  end

  test do
    output = shell_output("#{bin}/conductor --version")
    assert_match "0.0.2", output
  end
end
