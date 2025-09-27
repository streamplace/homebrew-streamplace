
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.7.30"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.30/streamplace-v0.7.30-darwin-arm64.tar.gz"
      sha256 "83c6a054af2e27d4458fc9da81760cae0b2d6a8fb800ea8dd186ed7aa2947d5a"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.30/streamplace-v0.7.30-darwin-amd64.tar.gz"
      sha256 "25a03c7eea29773b2969a542269a6b18a4b0b04b00ec303b3bb3d6272d0caff7"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.30/streamplace-v0.7.30-linux-arm64.tar.gz"
      sha256 "81545d2477929212161729033d2230b7eb1893c8baa18821a3b516e73bdf3a0c"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.30/streamplace-v0.7.30-linux-amd64.tar.gz"
      sha256 "d34439617e258e02346aaa237eb4bd981a338581db8817736560e04f9f7908c5"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
