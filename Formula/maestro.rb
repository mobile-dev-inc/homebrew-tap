# Generated with JReleaser 1.0.0 at 2023-02-09T13:47:57.898Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.22.1/maestro.zip"
  version "1.22.1"
  sha256 "10fdb1069336d6c4e0d3652775f4e3f7059c0f5eb053e782836422deaa082040"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.22.1", output
  end
end
