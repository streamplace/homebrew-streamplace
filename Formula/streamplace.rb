
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.11.14"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.14/streamplace-v0.11.14-darwin-arm64.tar.gz"
      sha256 "102e889cb9401f19db1604bb61dc7b26934e35ddf267ada4cba34b8a92856fcb"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.14/streamplace-v0.11.14-darwin-amd64.tar.gz"
      sha256 "b171b483e47cd8cacf79e5b5636f7bf42493a8ba3966c27b0547721af65fb69f"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.14/streamplace-v0.11.14-linux-arm64.tar.gz"
      sha256 "db61fef88f49c524df580888b35ee2fbcd2c2278d5f01dd863c0e4312ee1afff"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.14/streamplace-v0.11.14-linux-amd64.tar.gz"
      sha256 "eb0254b1bbd9f3c2cb9426eb6a62c81c328e5662bb5efbb45a509ca71d4ad4b0"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
