# Generated with JReleaser 1.0.0 at 2023-01-26T15:42:45.739Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.21.2/maestro.zip"
  version "1.21.2"
  sha256 "1ffd9374571ae1643d3b99fb5cd9c73a38bf59e218e37a934829647e7f44a3dd"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.21.2", output
  end
end
