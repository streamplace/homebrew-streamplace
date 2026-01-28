
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.9.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.8/streamplace-v0.9.8-darwin-arm64.tar.gz"
      sha256 "35acba796645cca3e80b34d6b1c022797dbf4fd2bc57d69810bb84dc3d3e47e4"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.8/streamplace-v0.9.8-darwin-amd64.tar.gz"
      sha256 "22c398974043768906999e4626e81954c2ac13ec104dc80a538f956b0992ba57"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.8/streamplace-v0.9.8-linux-arm64.tar.gz"
      sha256 "16a595fadeb54e06941147c8bfd110b66f3bb2604638e66938e88475db08e360"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.8/streamplace-v0.9.8-linux-amd64.tar.gz"
      sha256 "d1eba32a43204b6ac35ea39ab8b667c201dd6c05c10dc2c177b5a4bc451e5635"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
