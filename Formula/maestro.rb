# Generated with JReleaser 1.0.0 at 2022-09-22T14:56:01.262062Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.8.0/maestro-1.8.0.zip"
  version "1.8.0"
  sha256 "d4faecd5fa5210c68656c9133ad905d25525171ab897b9bb093688202e6ee784"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.8.0", output
  end
end
