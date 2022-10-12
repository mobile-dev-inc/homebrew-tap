# Generated with JReleaser 1.0.0 at 2022-10-12T18:23:36.224714Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.10.1/maestro-1.10.1.zip"
  version "1.10.1"
  sha256 "e127abf486f176a510ab7cd31103b614a14311a59d9d755b68d3103dc0aad458"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.10.1", output
  end
end
