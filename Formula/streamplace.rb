
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.10.16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.16/streamplace-v0.10.16-darwin-arm64.tar.gz"
      sha256 "e83a735ba44723e8f50f47dfde5ba8cbb328c94022985aca017b57db86172105"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.16/streamplace-v0.10.16-darwin-amd64.tar.gz"
      sha256 "7fbdbbde49cbdf4b12aee95ca486275caf1ff27ec1647f3c5615e224a6833f4b"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.16/streamplace-v0.10.16-linux-arm64.tar.gz"
      sha256 "e0a582b13f8ce54046c6a1da0f13beb7f811a8b942fe434570d5986ddc65d58f"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.16/streamplace-v0.10.16-linux-amd64.tar.gz"
      sha256 "612ed09e769d11e8f16bb16bf7c4518db34a2b19b0c8a3ed5ecfbef6b5a80497"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
