
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.11.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.9/streamplace-v0.11.9-darwin-arm64.tar.gz"
      sha256 "678f872d3c545cd4a58254e1a9910d7319eeb6cc1fc61e8a00e341e39d059bd8"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.9/streamplace-v0.11.9-darwin-amd64.tar.gz"
      sha256 "ce9b32a7f6ed46a74a6d461e06d92c90acabc276c263da6d54628ea83022bacf"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.9/streamplace-v0.11.9-linux-arm64.tar.gz"
      sha256 "5e0d9e53a0a6fd19e71e3284156cdf15d7ef9e65f5218e53baf3890c6a5b0152"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.9/streamplace-v0.11.9-linux-amd64.tar.gz"
      sha256 "5bccc15dc61524ebbbd458bfee5c76ae784b5e7e5a06dffbc8e295778d8bba14"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
