# Generated with JReleaser 1.0.0 at 2022-12-16T04:40:02.257Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.17.4/maestro.zip"
  version "1.17.4"
  sha256 "d771b8349b1658aaaefe1af43831a4894e0beae0940ed22e59e657afe5e36459"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.17.4", output
  end
end
