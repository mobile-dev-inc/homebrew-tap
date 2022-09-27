# Generated with JReleaser 1.0.0 at 2022-09-27T18:12:52.919334Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.8.2/maestro-1.8.2.zip"
  version "1.8.2"
  sha256 "cb05ab16275e7598c63b136adba809df2bdc17b2c6acb87b048afe4c7d778982"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.8.2", output
  end
end
