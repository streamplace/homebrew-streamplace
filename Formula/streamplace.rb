
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.8.16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.16/streamplace-v0.8.16-darwin-arm64.tar.gz"
      sha256 "4dff71f027dbce9b2e056b3d44726aba19d69e71f1e6b0418631d46cd0bb4f2d"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.16/streamplace-v0.8.16-darwin-amd64.tar.gz"
      sha256 "eb7cf71dce9162355765aa41e5eab4776d03fff5f1aadc2b0a601090f41d4849"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.16/streamplace-v0.8.16-linux-arm64.tar.gz"
      sha256 "16d8803612e3af4080e00ef2d1200a143be44039eeb84b416238cf2f96790ce1"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.16/streamplace-v0.8.16-linux-amd64.tar.gz"
      sha256 "1012ea5521a9cf28fc30036ef89a6165b02b0b6c8b70bc3ccd0b4350a100567b"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
