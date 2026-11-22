class Gridpin < Formula
  desc "Offline geocoder: addresses to coordinates from a country sheet"
  homepage "https://gridpin.dev"
  version "0.10.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/gridpin/gridpin/releases/download/v0.10.0/gridpin-aarch64-apple-darwin.tar.gz"
      sha256 "973d2eb874e9b6ac7efb53e068f59318e05118e8d30414935fec65cc90900e89"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/gridpin/gridpin/releases/download/v0.10.0/gridpin-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a83bd66a967353191fbca0c877f7edefdf5728a6ca018df954fe1f0d16d897d7"
    end
    on_intel do
      url "https://github.com/gridpin/gridpin/releases/download/v0.10.0/gridpin-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3dec72b506d5ed4c3693dd8b9b4f83af8f5791b7ae497d5d4ab3327875692c5d"
    end
  end

  def install
    bin.install "gridpin"
  end

  test do
    assert_match "gridpin", shell_output("#{bin}/gridpin --version")
  end
end
