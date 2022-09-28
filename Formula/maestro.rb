# Generated with JReleaser 1.0.0 at 2022-09-28T13:33:21.035617Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.8.3/maestro-1.8.3.zip"
  version "1.8.3"
  sha256 "8eb4a6b5b71d93b8aa84afbb6bf97c8288f8c20440657d66e91914f7821f8eb5"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.8.3", output
  end
end
