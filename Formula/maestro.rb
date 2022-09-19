# Generated with JReleaser 1.0.0 at 2022-09-19T17:25:11.097288Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.7.1/maestro-1.7.1.zip"
  version "1.7.1"
  sha256 "223ed40cd36cdd088fdc6eee054c4e810f4c1d2af38ce253ac0ba157b3eee211"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.7.1", output
  end
end
