# Generated with JReleaser 1.0.0 at 2022-10-27T19:01:06.519831Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.11.1/maestro-1.11.1.zip"
  version "1.11.1"
  sha256 "dad354d64d42282225d7df590681e8bc6bcd9f16665f0ff01758d48e49f0f21f"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.11.1", output
  end
end
