
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.0/streamplace-v0.8.0-darwin-arm64.tar.gz"
      sha256 "30bcc9bf258d2791e4721cc1473ca994a5a2c35731a9942e496e1912ad109f06"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.0/streamplace-v0.8.0-darwin-amd64.tar.gz"
      sha256 "d03bca81fc7f3fc49cc63682c1c9e7d107fe7f70b01fb5900a84e4eded56345e"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.0/streamplace-v0.8.0-linux-arm64.tar.gz"
      sha256 "891253aca3e9f0bc6627dbdeda8afb186c0ac3966aaa36689d2d746b8b209b23"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.0/streamplace-v0.8.0-linux-amd64.tar.gz"
      sha256 "2690b9da7a1b0d41fd1fa34f8618425750feafbd5c7face72df8cb479c48f26b"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
