
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.10.40"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.40/streamplace-v0.10.40-darwin-arm64.tar.gz"
      sha256 "81d59787357caa62b86fc8397675fa7ba6962066021f472541ee376ae17a37d2"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.40/streamplace-v0.10.40-darwin-amd64.tar.gz"
      sha256 "0991f51f7c28afaa355b0528d5bd0cbb8c6777d3de7b6a9bb94d752972b9d009"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.40/streamplace-v0.10.40-linux-arm64.tar.gz"
      sha256 "5caaa666080c5932a45e203ee6e822ac5ba5da481c7480c08d9278ee705cab2f"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.40/streamplace-v0.10.40-linux-amd64.tar.gz"
      sha256 "4c9a509097fd3d2198de576f1fc4afe58f8f1d286d38c7f5dd7356f64c97c6c5"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
