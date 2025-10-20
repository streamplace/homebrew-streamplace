
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.8.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.3/streamplace-v0.8.3-darwin-arm64.tar.gz"
      sha256 "4b731abbd246f5453be9a5dcd8000fdf63b42e8729f4a9f8d40ff436f4f36c7a"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.3/streamplace-v0.8.3-darwin-amd64.tar.gz"
      sha256 "68001eebea62a345b171a9d75a444cd1748dc84e08d1c58d495894a11154744b"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.3/streamplace-v0.8.3-linux-arm64.tar.gz"
      sha256 "0286816a991a54f0f678622fa89dc8cfe24dbec9a40bcee2842ab93fe9b64796"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.3/streamplace-v0.8.3-linux-amd64.tar.gz"
      sha256 "d22b1301d3d8e4685b768d5dcb5d141413420e4cf6aa5215ef0b36aa8e29b7b1"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
