# Generated with JReleaser 1.0.0 at 2022-09-05T16:13:04.288114Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.4.1/maestro-1.4.1.zip"
  version "1.4.1"
  sha256 "fbd612a4f304c4cde6fa7434d72ab853564ccd9d3b9cd0c6c4bf0d439163bd7a"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.4.1", output
  end
end
