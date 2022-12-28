# Generated with JReleaser 1.0.0 at 2022-12-28T20:06:20.74Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.18.3/maestro.zip"
  version "1.18.3"
  sha256 "cccdf203d4586f5ee37cb4496acf3536f12bc296c5b26b2d056a76d19a377b8e"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.18.3", output
  end
end
