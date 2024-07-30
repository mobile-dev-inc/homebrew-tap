# Generated with JReleaser 1.13.1 at 2024-07-30T10:05:26.187Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.37.4/maestro.zip"
  version "1.37.4"
  sha256 "fc256034b953d3bb65d3ab8566bde98882c4d41fc71cc3dfe788995f2769cec0"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.37.4", output
  end
end
