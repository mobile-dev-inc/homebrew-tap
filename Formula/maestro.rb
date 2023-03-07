# Generated with JReleaser 1.0.0 at 2023-03-07T16:53:31.256Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.24.0/maestro.zip"
  version "1.24.0"
  sha256 "c02940b563cfbd610a847a5ab548558226289cb261c0b6b17ccbe68f94d0ffa7"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.24.0", output
  end
end
