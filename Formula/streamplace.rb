
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.7.14"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.14/streamplace-v0.7.14-darwin-arm64.tar.gz"
      sha256 "0c15758b65829f7771787daa0cc70a727431ad99815688612a6f957003a7264f"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.14/streamplace-v0.7.14-darwin-amd64.tar.gz"
      sha256 "ddf299d73970257936c3fa68a535b60a7f523011c4e6b931f2566c1c3a94da30"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.14/streamplace-v0.7.14-linux-arm64.tar.gz"
      sha256 "9035e672c8c77e6f0d7cf61e3d9562a54ac068f6a0b67028a5c9af2bcdd08b12"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.14/streamplace-v0.7.14-linux-amd64.tar.gz"
      sha256 "a2dff7d6375ae4b2201e2c177dd1a15dba0506a483280dd325b866469135a92e"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
