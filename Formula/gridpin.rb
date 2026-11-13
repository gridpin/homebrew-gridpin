class Gridpin < Formula
  desc "Offline geocoder: addresses to coordinates from a country sheet"
  homepage "https://gridpin.dev"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/gridpin/gridpin/releases/download/v0.9.0/gridpin-aarch64-apple-darwin.tar.gz"
      sha256 "87436d28179b803e4ba9198069298308e730f816aaf0e70775dfbb7eafa16c40"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/gridpin/gridpin/releases/download/v0.9.0/gridpin-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9e2a5495f81c04b3416aa36003bc5fb29e268dfbfeffc70c9c498ac09986eb5a"
    end
  end

  def install
    bin.install "gridpin"
  end

  test do
    assert_match "gridpin", shell_output("#{bin}/gridpin --version")
  end
end
