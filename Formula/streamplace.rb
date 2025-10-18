
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.8.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.1/streamplace-v0.8.1-darwin-arm64.tar.gz"
      sha256 "a84f4b93636d99827ac4003a77bfb791eb7b904a701d50eb1a0f16a8da91c14e"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.1/streamplace-v0.8.1-darwin-amd64.tar.gz"
      sha256 "37eb7d769244ce922b45a1adf4d900cbfaf2eb0837b1ce4e79b822eeed410dcc"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.1/streamplace-v0.8.1-linux-arm64.tar.gz"
      sha256 "b7e55b07ddfd4bf776e9d0c16eaccad474d53217a90a6681a674e1b4df00a8bb"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.1/streamplace-v0.8.1-linux-amd64.tar.gz"
      sha256 "0ee9c6d90dda67dc2e2c445e2db25805817471314c7a9018b15ee60d1ee0db69"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
