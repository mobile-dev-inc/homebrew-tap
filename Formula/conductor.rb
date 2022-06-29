# Generated with JReleaser 1.0.0 at 2022-06-29T19:04:29.627348+02:00
class Conductor < Formula
  desc "Conductor CLI"
  homepage "https://conductor.mobile.dev"
  url "https://github.com/mobile-dev-inc/conductor/releases/download/0.0.1/conductor-0.0.1.zip"
  version "0.0.1"
  sha256 "b7dc4da9d0b1dda02d5a38a0fc0cb23f7ceda56fd8868ead5a5cba347808f8f2"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/conductor" => "conductor"
  end

  test do
    output = shell_output("#{bin}/conductor --version")
    assert_match "0.0.1", output
  end
end
