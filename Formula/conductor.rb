# Generated with JReleaser 1.0.0 at 2022-07-06T08:46:55.903742Z
class Conductor < Formula
  desc "Conductor CLI"
  homepage "https://conductor.mobile.dev"
  url "https://github.com/mobile-dev-inc/conductor/releases/download/cli-1.1.1/conductor-1.1.1.zip"
  version "1.1.1"
  sha256 "6adcc688861948a4239424e40b0604fe8eac325d486510da9205c904b3520e89"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/conductor" => "conductor"
  end

  test do
    output = shell_output("#{bin}/conductor --version")
    assert_match "1.1.1", output
  end
end
