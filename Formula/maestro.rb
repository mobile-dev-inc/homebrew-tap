# Generated with JReleaser 1.0.0 at 2022-12-13T04:30:07.904Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.17.1/maestro.zip"
  version "1.17.1"
  sha256 "eb74fd57db6f60c898215d15b2deab99cbc7d39958f5d49ec7cf2b2b8d0a9265"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.17.1", output
  end
end
