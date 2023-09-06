# Generated with JReleaser 1.0.0 at 2023-09-06T14:34:38.823Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.32.0/maestro.zip"
  version "1.32.0"
  sha256 "6054cd6eaf3780f778a3236aa34567350663746f28a1393d50ebf16638781eae"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.32.0", output
  end
end
