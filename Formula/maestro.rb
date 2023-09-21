# Generated with JReleaser 1.0.0 at 2023-09-21T10:45:10.02Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.33.0/maestro.zip"
  version "1.33.0"
  sha256 "db8c26c7c48d8f739bc0b9873285589aa3f0fb5d1c7348371dfce091ed9a6777"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.33.0", output
  end
end
