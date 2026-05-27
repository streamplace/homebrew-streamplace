
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.10.35"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.35/streamplace-v0.10.35-darwin-arm64.tar.gz"
      sha256 "cbabbba215068542c2c2d7cea99ca90c06bb1affbcc605c7d9c0141453b959de"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.35/streamplace-v0.10.35-darwin-amd64.tar.gz"
      sha256 "e7dd64fbb8e5fce7dd4f5afd197d82e3b15b72a840938384eee92ddbd50a9a5d"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.35/streamplace-v0.10.35-linux-arm64.tar.gz"
      sha256 "8991901337fb0b92993fd2e9a4e5c5ffa78589a6a69616e41d27f50ad2622b5d"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.35/streamplace-v0.10.35-linux-amd64.tar.gz"
      sha256 "8000a62e429c4777eca71946850ba605fc48f94c88baa796666ac9f4afaa0832"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
