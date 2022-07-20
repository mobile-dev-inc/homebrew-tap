# Generated with JReleaser 1.0.0 at 2022-07-20T14:19:33.077631Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.0.0/maestro-1.0.0.zip"
  version "1.0.0"
  sha256 "f929c41460fa6d25784981ddb37bdac4ae136cd7c5266e04a502df9c2f33446a"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.0.0", output
  end
end
