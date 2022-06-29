# Generated with JReleaser 1.0.0 at 2022-06-29T18:28:11.526267+02:00
class Conductor < Formula
  desc "Conductor CLI"
  homepage "https://conductor.mobile.dev"
  url "https://github.com/mobile-dev-inc/conductor/releases/download/0.0.1-setup-test/conductor-0.0.1-setup-test.zip"
  version "0.0.1-setup-test"
  sha256 "46af6a5dea1de15710514b99e092f7b5ba5c6bc4c9c7c58bfafc7f1834d4713a"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/conductor" => "conductor"
  end

  test do
    output = shell_output("#{bin}/conductor --version")
    assert_match "0.0.1-setup-test", output
  end
end
