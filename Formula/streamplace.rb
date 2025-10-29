
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.8.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.10/streamplace-v0.8.10-darwin-arm64.tar.gz"
      sha256 "0d66d277efe147a18ba6f810ec271ede73aa6b0692bcd9d86d7ffbb3084ea670"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.10/streamplace-v0.8.10-darwin-amd64.tar.gz"
      sha256 "7ed7181d10af5bd1508c9740a766fb368b1a92ad771a38df46b82067a306fbcc"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.10/streamplace-v0.8.10-linux-arm64.tar.gz"
      sha256 "3d19203acd4b642ce105a8eb87ba2449a32307b977c522cb53d2ae54ef24a6b9"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.10/streamplace-v0.8.10-linux-amd64.tar.gz"
      sha256 "6030b250dbf41ea14b6a439f01a7d867186db19761ccf3f026847080b1eab833"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
