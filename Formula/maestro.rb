# Generated with JReleaser 1.0.0 at 2022-09-16T17:05:28.050175Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.7.0/maestro-1.7.0.zip"
  version "1.7.0"
  sha256 "5b74f855cb16ff62d72b38b9bd25d0e1fb5c8a314aa64ecb2a4f94260b3289d6"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.7.0", output
  end
end
