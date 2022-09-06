# Generated with JReleaser 1.0.0 at 2022-09-06T19:16:48.673849Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.4.2/maestro-1.4.2.zip"
  version "1.4.2"
  sha256 "1a2dd916792009795c57d5e27f2592dddbe3d6a48ce1e264529ee1ea55af357f"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.4.2", output
  end
end
