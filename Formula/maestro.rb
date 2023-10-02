# Generated with JReleaser 1.0.0 at 2023-10-02T22:49:55.838Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.33.1/maestro.zip"
  version "1.33.1"
  sha256 "9f5c21af7a6edb22dfb6deaee851cc6c87735a564951deee4a71c5caf1285090"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.33.1", output
  end
end
