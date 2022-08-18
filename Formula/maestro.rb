# Generated with JReleaser 1.0.0 at 2022-08-18T22:18:58.785771Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.3.0/maestro-1.3.0.zip"
  version "1.3.0"
  sha256 "3ca86ecd46902aa824c247a49316d5eed6b7884c8057c9245313761bda2460de"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.3.0", output
  end
end
