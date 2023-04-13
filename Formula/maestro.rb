# Generated with JReleaser 1.0.0 at 2023-04-13T19:36:22.843Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.26.1/maestro.zip"
  version "1.26.1"
  sha256 "33efa4018122827e2524a32123cc2da9a38b8b3a9789274c5ad570cb31f204c3"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.26.1", output
  end
end
