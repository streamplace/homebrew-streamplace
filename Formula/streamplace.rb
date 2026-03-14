
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.10.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.3/streamplace-v0.10.3-darwin-arm64.tar.gz"
      sha256 "a5a1ad39cdbf3ba41c612abc8358b10d2da85261ef0356b24a8bb53b9601850a"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.3/streamplace-v0.10.3-darwin-amd64.tar.gz"
      sha256 "b683cc218927f374d178293b60e20f128a263692017a2d8f9c978d0ba33a77ee"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.3/streamplace-v0.10.3-linux-arm64.tar.gz"
      sha256 "cbb5add06069db2329506c634696cbf2fec07bddcbb38a8cc0beb016be63dd7f"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.3/streamplace-v0.10.3-linux-amd64.tar.gz"
      sha256 "da5f89c4cc5d3560a7b58d989d2c2e0557e71ef797cf4f44b02d9a820296a4cd"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
