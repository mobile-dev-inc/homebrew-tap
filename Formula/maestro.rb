# Generated with JReleaser 1.0.0 at 2022-08-23T18:41:07.413495Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.3.4/maestro-1.3.4.zip"
  version "1.3.4"
  sha256 "e13960442aefc2ae908f34f1ba03769d715d2f73514604fb52032f5f21807d43"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.3.4", output
  end
end
