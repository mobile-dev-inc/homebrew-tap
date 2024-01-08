# Generated with JReleaser 1.0.0 at 2024-01-08T12:12:34.051Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.35.0/maestro.zip"
  version "1.35.0"
  sha256 "51fde965de2b8aedc9c7f0531502060d1969fc8285fc64039732a997238c23e7"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.35.0", output
  end
end
