# Generated with JReleaser 1.0.0 at 2022-09-27T10:53:24.509349Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.8.1/maestro-1.8.1.zip"
  version "1.8.1"
  sha256 "64a3c5a55dd0347efb10c7a6fec7d72e00db95d6e60ea401232ac52c8625b3c4"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.8.1", output
  end
end
