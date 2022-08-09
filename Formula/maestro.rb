# Generated with JReleaser 1.0.0 at 2022-08-09T13:34:12.816014Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.2.2/maestro-1.2.2.zip"
  version "1.2.2"
  sha256 "e617ea5dcc9bdcb388075dcd0c156d6e795fc57ddadf71f8c37b234b2e72386c"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.2.2", output
  end
end
