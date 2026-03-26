
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.10.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.8/streamplace-v0.10.8-darwin-arm64.tar.gz"
      sha256 "d9a88ca02c75e437b02dcf38e22cf3e22c2c21a7fa819a812f41b38f3f071f95"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.8/streamplace-v0.10.8-darwin-amd64.tar.gz"
      sha256 "0701685511c69cb94913ef831ad973fb1de3d9dac977ed795123a323105040ae"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.8/streamplace-v0.10.8-linux-arm64.tar.gz"
      sha256 "9ff1f0281e7ed25ccf98ddb6ae100f83f4143e4cef4adb9a4db610d4176e9a0c"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.8/streamplace-v0.10.8-linux-amd64.tar.gz"
      sha256 "d1bf9c46c7cd8d4ad7b8e872c974a320fabf665c25fadd012671ed362cc3032f"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
