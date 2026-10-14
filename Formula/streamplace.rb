
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.12.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.12.5/streamplace-v0.12.5-darwin-arm64.tar.gz"
      sha256 "3efb0c48e2d00d630d4d22158a092d755df3c4f944a00b8f24861c6d25e70c00"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.12.5/streamplace-v0.12.5-darwin-amd64.tar.gz"
      sha256 "cc05569215aedcf8265fcb3151643fe38835fc51fa1250e5f73190d93d687d62"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.12.5/streamplace-v0.12.5-linux-arm64.tar.gz"
      sha256 "52e2f2f363b912b379d658aba408c3246ba449875ecddb376e0046216836025f"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.12.5/streamplace-v0.12.5-linux-amd64.tar.gz"
      sha256 "a93efa62ed756e9f387a456cc5dd92232deac268a52757534eb77375d78f9c15"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
