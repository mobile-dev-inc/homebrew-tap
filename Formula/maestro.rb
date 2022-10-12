# Generated with JReleaser 1.0.0 at 2022-10-12T15:25:39.84368Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.10.0/maestro-1.10.0.zip"
  version "1.10.0"
  sha256 "7192197d9a7c2509e8714ed29abce748cb7dcbcfe0799ec156b1ddc489d5198b"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.10.0", output
  end
end
