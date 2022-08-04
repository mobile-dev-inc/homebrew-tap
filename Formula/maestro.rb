# Generated with JReleaser 1.0.0 at 2022-08-04T22:50:56.987537Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.2.0/maestro-1.2.0.zip"
  version "1.2.0"
  sha256 "2b483e04191f6cb24786de640bee81bdc8b45401531b6a7e80a218ff43609369"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.2.0", output
  end
end
