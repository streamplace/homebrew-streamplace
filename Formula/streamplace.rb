
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.11.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.0/streamplace-v0.11.0-darwin-arm64.tar.gz"
      sha256 "2816754bc07ab3f1a767b63cda9a1805e736f15be934dbd296150fc5663fca85"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.0/streamplace-v0.11.0-darwin-amd64.tar.gz"
      sha256 "80ff45d06cf231665a23eeb787fc8e93369db36f06e2ffe2e90b02534eb4c9dd"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.0/streamplace-v0.11.0-linux-arm64.tar.gz"
      sha256 "b2efea451507f45ca43a7521baecf96d77c1415ef00cd1f858094941f5cbf23e"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.0/streamplace-v0.11.0-linux-amd64.tar.gz"
      sha256 "1b175077ef006fa4f0eaee8569375f40983feee5d64a4ca845f5a79a61d15025"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
