# Generated with JReleaser 1.0.0 at 2022-08-15T11:18:41.43543Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.2.3/maestro-1.2.3.zip"
  version "1.2.3"
  sha256 "801f0ff513e12e865174344b48166f6e2002d00ab2998e34a60ab1b93b746560"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.2.3", output
  end
end
