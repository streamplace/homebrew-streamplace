
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.11.20"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.20/streamplace-v0.11.20-darwin-arm64.tar.gz"
      sha256 "a18d0a2c461cf00326d4d9b3f5cc1fc232a1ed8cd86c86883a2dd9e40a607cbc"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.20/streamplace-v0.11.20-darwin-amd64.tar.gz"
      sha256 "e4093c4302ad640c20b7fd47b6ba809ea4510ff3d9e7d6d3475ca993b6155e7d"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.20/streamplace-v0.11.20-linux-arm64.tar.gz"
      sha256 "b2c5aee2a7ae8c956f83c2787ce654a585fe93289b9f771dfa2d961cfcd2d4be"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.20/streamplace-v0.11.20-linux-amd64.tar.gz"
      sha256 "f21c946af19d7a66f4c1aef54bd3a8a0a4cb9a026d1f8fb3164a99456ae65bd1"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
