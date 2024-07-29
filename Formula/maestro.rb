# Generated with JReleaser 1.0.0 at 2024-07-29T15:58:58.913Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.37.3/maestro.zip"
  version "1.37.3"
  sha256 "dc6983af5b72e39bd6532457348fc206997f02ff4ac2f3af6f98448d534eff89"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.37.3", output
  end
end
