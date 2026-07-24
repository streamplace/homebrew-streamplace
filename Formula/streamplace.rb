
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.11.18"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.18/streamplace-v0.11.18-darwin-arm64.tar.gz"
      sha256 "4fabda3de2d0331fed463a9670a395b9f1dd52e17ab003fb0d0ff077da4358f1"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.18/streamplace-v0.11.18-darwin-amd64.tar.gz"
      sha256 "fc0e7c9eba9c162eec98017ddc7f9864256d8c37c28098c6b8d181ec2fb260ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.18/streamplace-v0.11.18-linux-arm64.tar.gz"
      sha256 "9ff4816ecc4ebad7299e0ad806555d3c5910f5e03956a3297912b70a4d3a9c4c"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.18/streamplace-v0.11.18-linux-amd64.tar.gz"
      sha256 "b741113836648a984618f9e30b0ed87f08f918f24050f4b2a103e3b7537cb30f"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
