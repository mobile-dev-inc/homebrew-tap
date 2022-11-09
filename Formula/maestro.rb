# Generated with JReleaser 1.0.0 at 2022-11-09T14:58:52.286003Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.13.1/maestro.zip"
  version "1.13.1"
  sha256 "39939883e2aca1207be5b6a4a893114658cff8230b8ba2ba82cb90392473275a"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.13.1", output
  end
end
