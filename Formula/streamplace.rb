
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.11.29"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.29/streamplace-v0.11.29-darwin-arm64.tar.gz"
      sha256 "ead20f0eb0bd34d98bf947331bc1250c8d3d060ef522dccf99eef033623137ca"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.29/streamplace-v0.11.29-darwin-amd64.tar.gz"
      sha256 "2f27078b8ae6f2ebe964a1b477e3271967ab67247ab02aead0aa0476e0bc5ec3"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.29/streamplace-v0.11.29-linux-arm64.tar.gz"
      sha256 "a7c963c11178dd1db7e2d61a42368f41465e1efed62baa8acd5f32167048ff2a"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.29/streamplace-v0.11.29-linux-amd64.tar.gz"
      sha256 "e65e2a27a82f22f40a02f0329c7ac89520ef969f84592e0e7e95f4cf26181e1b"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
