# Generated with JReleaser 1.0.0 at 2023-01-25T15:56:57.758Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.21.0/maestro.zip"
  version "1.21.0"
  sha256 "8c6a4a6199a121a2a993b7ccad2a3a9d827bdc5364cc49ad6a5f1f06eff4628d"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.21.0", output
  end
end
