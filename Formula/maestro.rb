# Generated with JReleaser 1.0.0 at 2022-08-24T17:20:05.184057Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.3.5/maestro-1.3.5.zip"
  version "1.3.5"
  sha256 "45c2ca6e56ae09226836d692011a6e87c3081896c38cd7e06200a423e9c1c1d7"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.3.5", output
  end
end
