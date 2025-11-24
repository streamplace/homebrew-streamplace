
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.8.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.11/streamplace-v0.8.11-darwin-arm64.tar.gz"
      sha256 "beef0f7b071273af96f2701c99814599c3f8a622c857e8e3c73a5252ce2a854b"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.11/streamplace-v0.8.11-darwin-amd64.tar.gz"
      sha256 "7e4e0d0635f088f10ea3d8b87e3d3db5ba05fbb3d2bcaf4adf84b90059c659f8"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.11/streamplace-v0.8.11-linux-arm64.tar.gz"
      sha256 "ffd267175b95a6a80be21101178e2e62d8759c0f84ab68374585a5f8e8deee15"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.11/streamplace-v0.8.11-linux-amd64.tar.gz"
      sha256 "57e353b92196ba7cbfd39ba16b5248805acc923ffb2e0c8dfad669c9074f9e40"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
