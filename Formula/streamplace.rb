
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.12.16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.12.16/streamplace-v0.12.16-darwin-arm64.tar.gz"
      sha256 "5f2ed81d72988ad17252fbc6cc7c8b3a71cfb85777b40db3c5873bce69e7d986"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.12.16/streamplace-v0.12.16-darwin-amd64.tar.gz"
      sha256 "5570a98483d586649af039b69a252cdb46efd4eb6584c9434db22679f9b20e95"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.12.16/streamplace-v0.12.16-linux-arm64.tar.gz"
      sha256 "c6c58da2094f7739aacd5fe73cd9c24b8f39ccf23523fcf48442104fa7ffa3f5"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.12.16/streamplace-v0.12.16-linux-amd64.tar.gz"
      sha256 "b9c6d74d16da84a201f5f2e94bd897168034f37a492e2dfe00646580e64ebb2d"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
