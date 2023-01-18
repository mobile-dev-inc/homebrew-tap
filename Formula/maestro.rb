# Generated with JReleaser 1.0.0 at 2023-01-18T23:10:48.974Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.19.5/maestro.zip"
  version "1.19.5"
  sha256 "619366ac0d39fc979a78a51692f268fa34b4c2a76ef1c8cc3476d9d52f7719b2"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.19.5", output
  end
end
