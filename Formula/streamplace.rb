
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.12.13"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.12.13/streamplace-v0.12.13-darwin-arm64.tar.gz"
      sha256 "e982603d646f34fe42d20e6e48149e393910691b707a4ab81fb1b3e2a0770541"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.12.13/streamplace-v0.12.13-darwin-amd64.tar.gz"
      sha256 "438c1a6a9c75cc03afccfccff4d8150891533005ffd0a33b10ee41a04bb5ee32"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.12.13/streamplace-v0.12.13-linux-arm64.tar.gz"
      sha256 "6bce078c25bfe782905bc15771ab3cd927245ddda98ed080f0ee7010432051ec"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.12.13/streamplace-v0.12.13-linux-amd64.tar.gz"
      sha256 "a37311aead3a686edac34c8604009761dcf40e6ba9ea791bc86ab9a5c081aba3"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
