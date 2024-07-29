# Generated with JReleaser 1.0.0 at 2024-07-29T11:27:33.044Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.37.1/maestro.zip"
  version "1.37.1"
  sha256 "9bb52606892ce5cbf4a8e05dec87c91b7efa4da7c350a5b1354877118a85aac7"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.37.1", output
  end
end
