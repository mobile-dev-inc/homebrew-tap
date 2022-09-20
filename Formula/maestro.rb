# Generated with JReleaser 1.0.0 at 2022-09-20T10:21:30.804571Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.7.2/maestro-1.7.2.zip"
  version "1.7.2"
  sha256 "489236d8cb264312bf546c18f6b6a01648c95f032548a6984819870ce758b99b"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.7.2", output
  end
end
