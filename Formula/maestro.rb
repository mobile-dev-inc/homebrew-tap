# Generated with JReleaser 1.0.0 at 2022-10-28T10:12:37.010809Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.11.2/maestro-1.11.2.zip"
  version "1.11.2"
  sha256 "3cffdc9d60681db7f7770bbdcb017a720709a7fdf43253340814874ec10c364e"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.11.2", output
  end
end
