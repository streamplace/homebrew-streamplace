
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.11.28"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.28/streamplace-v0.11.28-darwin-arm64.tar.gz"
      sha256 "d4d513ce6863b1bec897c626eb33608a3922db4f4ed0e6a5c3ec38389e4befd9"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.28/streamplace-v0.11.28-darwin-amd64.tar.gz"
      sha256 "0ec8e1b3576a2663773a9f87d6129ca8ef5785ba8a6673ac7268a8bc5ae169a4"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.28/streamplace-v0.11.28-linux-arm64.tar.gz"
      sha256 "f75dbb62a0dda92f8ef5f89db713827203071e45390c73e05082061c27b52d9a"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.28/streamplace-v0.11.28-linux-amd64.tar.gz"
      sha256 "afa6629af323f52deb290c9fe84755d1e80faf69a7f91b8725aeeac45e6debb8"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
