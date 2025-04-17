# Generated with JReleaser 1.13.1 at 2025-04-17T07:16:00.13808Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.40.0/maestro.zip"
  version "1.40.0"
  sha256 "2b42929520362727aa724d025d9c37921d2a7b122f2fabc39f712102d2330897"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.40.0", output
  end
end
