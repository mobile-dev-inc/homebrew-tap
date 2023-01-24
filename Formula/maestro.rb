# Generated with JReleaser 1.0.0 at 2023-01-24T13:23:39.264Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.20.0/maestro.zip"
  version "1.20.0"
  sha256 "8293d1a31df7f389b4975de218889900d32516716ed472d02938646f4cb72e43"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.20.0", output
  end
end
