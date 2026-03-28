
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.10.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.11/streamplace-v0.10.11-darwin-arm64.tar.gz"
      sha256 "213b1624c48784f3689cc8ca2d0ad75f133bb3b384aba47ae2427ff2d25f434e"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.11/streamplace-v0.10.11-darwin-amd64.tar.gz"
      sha256 "bcc610085e004699adbd14fa2b21cf377f47990b1c79238e1a3d06ebaf5d09ea"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.11/streamplace-v0.10.11-linux-arm64.tar.gz"
      sha256 "beef181821174ef37dbe864a6e6fe20e2f0b9d9c47448edf1845fa7967036b60"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.11/streamplace-v0.10.11-linux-amd64.tar.gz"
      sha256 "22df9364d861ea2e01e751d0db069c4598bd9eacea9f2e8dd312c5ee28829271"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
