# Generated with JReleaser 1.13.1 at 2025-08-29T15:21:04.565902885Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-2.0.1/maestro.zip"
  version "2.0.1"
  sha256 "d75a0e6c15b63104e649fe1708acad8e6ede7212e36aebe8d37dc888b45867e8"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "2.0.1", output
  end
end
