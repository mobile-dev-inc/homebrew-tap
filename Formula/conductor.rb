# Generated with JReleaser 1.0.0 at 2022-06-29T19:09:36.435791+02:00
class Conductor < Formula
  desc "Conductor CLI"
  homepage "https://conductor.mobile.dev"
  url "https://github.com/mobile-dev-inc/conductor/releases/download/cli-0.0.2/conductor-0.0.2.zip"
  version "0.0.2"
  sha256 "c988beeab20251c5bf2141b73fc94e114c1052063f8c260f4ad232a5c531f2e5"
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
