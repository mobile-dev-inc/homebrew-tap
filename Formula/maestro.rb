# Generated with JReleaser 1.0.0 at 2023-02-15T21:20:45.501Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.23.0/maestro.zip"
  version "1.23.0"
  sha256 "31577755bb953c26cb67ee5630bd891bcc11041b996e322bbcc7c29d4e47a03c"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.23.0", output
  end
end
