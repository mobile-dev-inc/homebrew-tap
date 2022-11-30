# Generated with JReleaser 1.0.0 at 2022-11-30T15:43:36.639Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.16.1/maestro.zip"
  version "1.16.1"
  sha256 "1e64df1f57e3353c028ff68ca55e48028daaf4cba26f3e8fc970eda147047667"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.16.1", output
  end
end
