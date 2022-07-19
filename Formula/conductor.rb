# Generated with JReleaser 1.0.0 at 2022-07-19T15:45:21.722555Z
class Conductor < Formula
  desc "Conductor CLI"
  homepage "https://conductor.mobile.dev"
  url "https://github.com/mobile-dev-inc/conductor/releases/download/cli-1.3.0/conductor-1.3.0.zip"
  version "1.3.0"
  sha256 "397f39886ca5aea02ddef41d3a77fa07c563e79d0c603d8ced83a17036a70fb7"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/conductor" => "conductor"
  end

  test do
    output = shell_output("#{bin}/conductor --version")
    assert_match "1.3.0", output
  end
end
