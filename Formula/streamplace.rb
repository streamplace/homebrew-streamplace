
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.8.12"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.12/streamplace-v0.8.12-darwin-arm64.tar.gz"
      sha256 "c063c43437efecceadcdbaae1999680d9f475e37352f2a156e2b617e1259febd"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.12/streamplace-v0.8.12-darwin-amd64.tar.gz"
      sha256 "abbcf8717f479674695a1ea00406273d2452c51a1f13be62e338d3423b76f3fb"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.12/streamplace-v0.8.12-linux-arm64.tar.gz"
      sha256 "575bdf2d98a0c7494ea4e16d92cb6f0f0120cf9e52affa48d521521f3d6203d6"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.12/streamplace-v0.8.12-linux-amd64.tar.gz"
      sha256 "e9f3467846b18d1c73217415a5d752a0ce04203c316cb6ca49641515b828d53b"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
