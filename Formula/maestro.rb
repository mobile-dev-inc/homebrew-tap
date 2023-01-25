# Generated with JReleaser 1.0.0 at 2023-01-25T21:15:50.206Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.21.1/maestro.zip"
  version "1.21.1"
  sha256 "a46884614f7327df0fe94e38c8132a285d4bd24d3cb83d1e3197369884249c5d"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.21.1", output
  end
end
