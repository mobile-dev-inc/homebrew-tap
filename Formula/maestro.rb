# Generated with JReleaser 1.0.0 at 2022-09-30T15:14:29.241093Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.9.0/maestro-1.9.0.zip"
  version "1.9.0"
  sha256 "1f07185bb42694ab523631e7ad3dbf30cba9bd7bdf3f3b82f80ab19fd9fe26c1"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.9.0", output
  end
end
