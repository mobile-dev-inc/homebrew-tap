# Generated with JReleaser 1.0.0 at 2022-08-22T14:20:16.535214Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.3.2/maestro-1.3.2.zip"
  version "1.3.2"
  sha256 "9be852777076113c4807807f531f159b79221f795a155e46a5f1fca2a88565f7"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.3.2", output
  end
end
