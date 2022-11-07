class MaestroHead < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/"
  version "head"
  license "Apache-2.0"

  conflicts_with "mobile-dev-inc/tap/maestro", because: "This is the head version of maestro"
  depends_on "openjdk@11"

  head do
    url "https://github.com/mobile-dev-inc/maestro.git", branch: "main"
  end

  def install
    system "./gradlew", ":maestro-cli:installDist"

    libexec.install Dir["maestro-cli/build/install/maestro/bin"]
    lib = libexec + "lib"
    lib.install Dir["**/build/**/*.jar"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    shell_output("#{bin}/maestro --version")
  end
end
