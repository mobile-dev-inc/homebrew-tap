# Generated with JReleaser 1.0.0 at 2022-08-23T11:18:43.238166Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.3.3/maestro-1.3.3.zip"
  version "1.3.3"
  sha256 "1ab43f64d65df9d9eadfcb4c0016abb42eb1f5d3cb2fd606e24067d234174a3f"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.3.3", output
  end
end
