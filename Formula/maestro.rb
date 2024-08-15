# Generated with JReleaser 1.13.1 at 2024-08-15T02:26:11.611Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.37.9/maestro.zip"
  version "1.37.9"
  sha256 "6d666e0f6fafea6a25c16d5e7f66b776306755f62c7018c82cb19779e4949a85"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.37.9", output
  end
end
