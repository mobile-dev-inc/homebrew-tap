# Generated with JReleaser 1.0.0 at 2022-11-10T13:35:32.856035Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.13.2/maestro.zip"
  version "1.13.2"
  sha256 "a6a1e1d267196fa1268b79146426d43f834a7873b15ebf36b8857fa1d8b19bdc"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.13.2", output
  end
end
