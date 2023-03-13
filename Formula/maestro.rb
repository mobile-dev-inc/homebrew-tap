# Generated with JReleaser 1.0.0 at 2023-03-13T15:59:34.935Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.25.0/maestro.zip"
  version "1.25.0"
  sha256 "034bb2a735eaae2113b945d793e5109b4ec9858de54ff1985f99e4b55e167566"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.25.0", output
  end
end
