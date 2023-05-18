# Generated with JReleaser 1.0.0 at 2023-05-18T13:03:14.396Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.28.0/maestro.zip"
  version "1.28.0"
  sha256 "a460368c30f1fa7634ab0a4e71d70d65dd67627791ab22f310ef7b0708476c97"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.28.0", output
  end
end
