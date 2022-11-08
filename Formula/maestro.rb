# Generated with JReleaser 1.0.0 at 2022-11-08T18:03:07.129495Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.13.0/maestro.zip"
  version "1.13.0"
  sha256 "3b88a88f0d5f84ac2af1e4de313a77acbe748093207450cd775d7b8a6033786c"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.13.0", output
  end
end
