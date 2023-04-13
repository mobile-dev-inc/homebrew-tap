# Generated with JReleaser 1.0.0 at 2023-04-13T09:30:48.131Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.26.0/maestro.zip"
  version "1.26.0"
  sha256 "d2620a3ed45e68d2ee2e36b47ba9976032c7baf7e0ffe4d8d898c12242d1a5a9"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.26.0", output
  end
end
