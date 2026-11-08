
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.13.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.13.1/streamplace-v0.13.1-darwin-arm64.tar.gz"
      sha256 "9fcb524768ca4007610e4d9164343b114d014b5d0daac09087e91fc35bb98e21"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.13.1/streamplace-v0.13.1-darwin-amd64.tar.gz"
      sha256 "c76d7c2832616bdedbc9d908cb55bc5c03e93087fd6aed75aa29edc33163ef29"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.13.1/streamplace-v0.13.1-linux-arm64.tar.gz"
      sha256 "2229844d2ef4ddf40a3aa0cf74707e2bb2d0d00688d35c11df32d113e53b8958"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.13.1/streamplace-v0.13.1-linux-amd64.tar.gz"
      sha256 "56e9c00157ae9ab0739e8c01b04e14636809453570442641737ba4fb4d842e9e"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
