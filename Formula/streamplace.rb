
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.12.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.12.2/streamplace-v0.12.2-darwin-arm64.tar.gz"
      sha256 "ad0366e19d9f305a0ca0a3a5d3793d3d8bd87f56191eb2cd742c2d4d2dbcd2d2"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.12.2/streamplace-v0.12.2-darwin-amd64.tar.gz"
      sha256 "0980da33f4a14ac71412365854baac4899cd99d2725eaf106e4edd52e9d34235"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.12.2/streamplace-v0.12.2-linux-arm64.tar.gz"
      sha256 "cae182d4120c5f6efc59f6eba734ca0a03bc364b486fb05abdc8c1e129ecc412"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.12.2/streamplace-v0.12.2-linux-amd64.tar.gz"
      sha256 "9782efecf3ade4cd14ab8b6ce8ede709cef1f75695df277b29741c4f46569506"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
