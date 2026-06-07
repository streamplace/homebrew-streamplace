
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.11.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.8/streamplace-v0.11.8-darwin-arm64.tar.gz"
      sha256 "dda7b68011f1eb981d570cf73f63277f4c3af63df5e539a2287dce4ecb5389a1"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.8/streamplace-v0.11.8-darwin-amd64.tar.gz"
      sha256 "6d11e4aa67c5257cf12dbd721c226b6b3670ea5f8e610700586ff138e57fd333"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.8/streamplace-v0.11.8-linux-arm64.tar.gz"
      sha256 "913ba13bf398c41fbb697f2ad7f1d17d188f826a9583321e919ae4b607c596b9"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.8/streamplace-v0.11.8-linux-amd64.tar.gz"
      sha256 "19bf1e6928dfc7b3176bc8e638a00119d5468a80d2300f9fa0fabfdc04246a7f"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
