
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.12.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.12.0/streamplace-v0.12.0-darwin-arm64.tar.gz"
      sha256 "8c681a95acf299a2629d560a8af4a4e554f8d20a7ca6b0d713bd98d10d65cf2d"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.12.0/streamplace-v0.12.0-darwin-amd64.tar.gz"
      sha256 "2dd348a3e354a2a0b8b4626efcea7e076fec73ff289a98c803f5c4a21bff7cd2"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.12.0/streamplace-v0.12.0-linux-arm64.tar.gz"
      sha256 "6bc9758e429077205851689881b32d211bd9f1685cdd413f7d3cfc606523e1d9"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.12.0/streamplace-v0.12.0-linux-amd64.tar.gz"
      sha256 "be24a784e5b766e0b9e327b8690dd377bcad6eeba7c0914d99759ab8594624b0"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
