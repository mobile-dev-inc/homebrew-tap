# Generated with JReleaser 1.0.0 at 2023-07-15T00:47:34.828Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.30.2/maestro.zip"
  version "1.30.2"
  sha256 "2cdfaf1577a781dd22dbbf45708a61abc3fb764e67990202430578be5a2e921c"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.30.2", output
  end
end
