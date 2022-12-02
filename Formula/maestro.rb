# Generated with JReleaser 1.0.0 at 2022-12-02T10:37:43.287Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.16.2/maestro.zip"
  version "1.16.2"
  sha256 "4394aa994ca4e222e420c51f5f6cdf3dc523f5b31af62911e7556e13f0768776"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.16.2", output
  end
end
