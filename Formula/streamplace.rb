
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.11.15"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.15/streamplace-v0.11.15-darwin-arm64.tar.gz"
      sha256 "f33c195093bfffdec2d1960ceab93ba9998efb00fd497413c11eb6cdc5cdfecc"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.15/streamplace-v0.11.15-darwin-amd64.tar.gz"
      sha256 "f7358e98152ea3672d091be000bf64a176c14e04effa9d5a001654d8f118ae1b"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.15/streamplace-v0.11.15-linux-arm64.tar.gz"
      sha256 "13a05933bccc718814c32bfede4943d1313907d88ca15ccec2f8c275afdd6d28"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.15/streamplace-v0.11.15-linux-amd64.tar.gz"
      sha256 "248bde7892fe238d35e5c4821ea83bc29c4fcb48609fdeebbf2c4e415838c5e4"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
