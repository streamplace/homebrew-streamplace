
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.8.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.9/streamplace-v0.8.9-darwin-arm64.tar.gz"
      sha256 "1e3d99d82a6f43bfc3bd3074dec0ffa7a71e419a7e30b95873fa48c07510a281"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.9/streamplace-v0.8.9-darwin-amd64.tar.gz"
      sha256 "f9c072588a3cbe6aa4d001677b84368f083112b45e3bdb4df8823935bbd75897"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.9/streamplace-v0.8.9-linux-arm64.tar.gz"
      sha256 "7b4ec705813688b7a46937f63c6b5bf7963e956519fc651b5ec92b36a4e70371"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.9/streamplace-v0.8.9-linux-amd64.tar.gz"
      sha256 "be99e82f1f74d6439e88bfbf52e6113ea812d23a6f6bfc0aee618ff103c457e6"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
