# Generated with JReleaser 1.0.0 at 2022-12-27T14:09:00.846Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.18.0/maestro.zip"
  version "1.18.0"
  sha256 "d64818f94327f0e296d697dfd463c18b103291964e209e2ae40cefde4b3f95c3"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.18.0", output
  end
end
