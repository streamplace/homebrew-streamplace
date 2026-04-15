
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.10.15"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.15/streamplace-v0.10.15-darwin-arm64.tar.gz"
      sha256 "69b8db1eb8dce8a65c3eb11dc2ee7a0d4dddadf315c1a59bc59120e140ca9169"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.15/streamplace-v0.10.15-darwin-amd64.tar.gz"
      sha256 "83aedaef467499b9cfa0bcc52684e05645e9e7d06ae8294cd46fd1a0a8d88cea"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.15/streamplace-v0.10.15-linux-arm64.tar.gz"
      sha256 "55b6293af3604f21b9c698aaaef6dfc346a20e006bde20fb18d3ea5e3c80d3f9"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.15/streamplace-v0.10.15-linux-amd64.tar.gz"
      sha256 "8b553e1ffa0c9ade1bc72ab8710d7811cc673c86d8ff2c5fd843adfba8182e50"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
