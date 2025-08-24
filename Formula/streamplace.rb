
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.7.15"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.15/streamplace-v0.7.15-darwin-arm64.tar.gz"
      sha256 "3399018a1d963f6feaf3fde31a02d11d131f785ac9dcaf7ff2a0d097a074d606"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.15/streamplace-v0.7.15-darwin-amd64.tar.gz"
      sha256 "9f164744371b4f53da219a5d7241857054616cc6a77f3770d291d771a7012f2f"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.15/streamplace-v0.7.15-linux-arm64.tar.gz"
      sha256 "e328211cc3e4300d822b9dba5fcd24053208b6fc5758500bbd9c1b5c4cc6009c"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.15/streamplace-v0.7.15-linux-amd64.tar.gz"
      sha256 "1521a4e5105ec63e5512e1dc13a0f53689790c5b606648f56df1522ebc703cb1"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
