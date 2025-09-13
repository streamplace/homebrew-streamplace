
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.7.26"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.26/streamplace-v0.7.26-darwin-arm64.tar.gz"
      sha256 "7f17cdacbdb8b998614af7e76dc2dccce3da5b8842d9a320b6620d6d1dfa7e40"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.26/streamplace-v0.7.26-darwin-amd64.tar.gz"
      sha256 "0cf26ce827f2d68b95bd63ef72fd2399a5d28c1cec72874bcff5ba1caac2f036"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.26/streamplace-v0.7.26-linux-arm64.tar.gz"
      sha256 "81747e6fe08eb03fe784501a2858bf95d1d50da94fe6bfc5a209e30909eb9066"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.26/streamplace-v0.7.26-linux-amd64.tar.gz"
      sha256 "16b0c765586873f3cbfa7f70305c2b8ba41331c9ec04c5a873c99217d260d93e"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
