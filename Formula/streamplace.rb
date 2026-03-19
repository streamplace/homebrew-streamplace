
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.10.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.6/streamplace-v0.10.6-darwin-arm64.tar.gz"
      sha256 "6cd64768bdea8bafed9472ef04cac9e8d06650c6c8bb5edd6df36a104afeaa0d"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.6/streamplace-v0.10.6-darwin-amd64.tar.gz"
      sha256 "c2ba941d0cd14560b9d068bc176a5093508ebd165f7ac23a4b9cc864c9e316ea"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.6/streamplace-v0.10.6-linux-arm64.tar.gz"
      sha256 "c7a60cbff731e00ee9953a0b1ece756bb067ce49291911ad352ca4a1d8653cff"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.6/streamplace-v0.10.6-linux-amd64.tar.gz"
      sha256 "d1b043346585268f0032b9e26797338991802d7a27ce0a3de86ebd08fda9e944"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
