# Generated with JReleaser 1.0.0 at 2023-06-19T12:26:56.846Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.29.0/maestro.zip"
  version "1.29.0"
  sha256 "c73de127076e232cff6b70180301f6f4601cc15db86f0300213feda4f4f8b7e7"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.29.0", output
  end
end
