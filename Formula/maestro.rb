# Generated with JReleaser 1.0.0 at 2024-07-29T10:46:13.664Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.37.0/maestro.zip"
  version "1.37.0"
  sha256 "487c8ad9dce412b78a8cf0793711a111abb05f5992e299dd86c5f8ab35344b7a"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.37.0", output
  end
end
