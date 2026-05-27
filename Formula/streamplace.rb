
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.10.34"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.34/streamplace-v0.10.34-darwin-arm64.tar.gz"
      sha256 "153b488639ee96b2fab993f78b2ba5f5d175a89c8e05bb7516351948eff5dbf7"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.34/streamplace-v0.10.34-darwin-amd64.tar.gz"
      sha256 "952affb0a4e9b152d2663e408b6f882d3e74747a64aa885078153b6438b4ea73"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.34/streamplace-v0.10.34-linux-arm64.tar.gz"
      sha256 "098c380f83c7fbec5122875ba82df2fef2506dca8f8876ced7514466ef41baa6"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.34/streamplace-v0.10.34-linux-amd64.tar.gz"
      sha256 "11a296bf475111094617cc2b71ace2b7bc42d6c5aebf7475e0b589e38fe080c3"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
