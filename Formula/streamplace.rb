
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.7.32"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.32/streamplace-v0.7.32-darwin-arm64.tar.gz"
      sha256 "6baa35878d75706bdbb65ac1ac1cfee2a67281128aedbe6f2dd8ca2cccebc4f6"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.32/streamplace-v0.7.32-darwin-amd64.tar.gz"
      sha256 "bdc620fe123fb34326d66129c65eda1fc9831fca1b2bf62db93934dd60e8f693"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.32/streamplace-v0.7.32-linux-arm64.tar.gz"
      sha256 "af8bdddc064db32f8e64ece39659ae0eb05f818e8bad21a8a425ae6e0a38e537"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.32/streamplace-v0.7.32-linux-amd64.tar.gz"
      sha256 "e16337d6226dfeec0d97086c826468df80ae9e75d5601bab15fff1e1c1895122"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
