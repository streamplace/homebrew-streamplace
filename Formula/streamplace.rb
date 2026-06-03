
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.11.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.2/streamplace-v0.11.2-darwin-arm64.tar.gz"
      sha256 "11228060731a6ce680886f31b1c23f15ce72b8c77bf211f2e667cc21e212ee08"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.2/streamplace-v0.11.2-darwin-amd64.tar.gz"
      sha256 "9e7b8766b6155823202e0c2323533b0a72a6c20fc86b7582482ad391f51d47a2"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.2/streamplace-v0.11.2-linux-arm64.tar.gz"
      sha256 "02a13f9ce6bf5baf72f8b1a6b766e1db65da7e124cda18946ce57e1b05d4dd58"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.2/streamplace-v0.11.2-linux-amd64.tar.gz"
      sha256 "09154a329ab79ad81ade354b8906c8c1a95b6058d34c721ff5a9993a223889b8"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
