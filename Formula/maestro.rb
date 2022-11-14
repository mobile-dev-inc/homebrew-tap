# Generated with JReleaser 1.0.0 at 2022-11-14T14:31:01.465Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.14.0/maestro.zip"
  version "1.14.0"
  sha256 "e199df62bdfc94a03ab81ddbf9680d5e2aabe4ef45bedc92c37f95adfb83ef0a"
  license "Apache-2.0"

  depends_on "openjdk@8"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.14.0", output
  end
end
