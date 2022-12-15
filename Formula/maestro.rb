# Generated with JReleaser 1.0.0 at 2022-12-15T20:06:48.355Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.17.3/maestro.zip"
  version "1.17.3"
  sha256 "57734e2a32edee1755d72818db698306898872a3940dcf9c266cc8149bd811d1"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.17.3", output
  end
end
