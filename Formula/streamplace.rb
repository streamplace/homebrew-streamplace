
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.7.13"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.13/streamplace-v0.7.13-darwin-arm64.tar.gz"
      sha256 "b0658df458e9e2af9da35912ca47ceea85e697143bbed3f70d57a73950ca8885"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.13/streamplace-v0.7.13-darwin-amd64.tar.gz"
      sha256 "644ddd331051f6fbb88058a1d67d80dc3d31728c1f2a9079f6d9fe2b475c7d8e"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.13/streamplace-v0.7.13-linux-arm64.tar.gz"
      sha256 "260083909c94fc07293ee57ab618bf130f77beaee7e82d59e4b99c4624dcec8d"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.13/streamplace-v0.7.13-linux-amd64.tar.gz"
      sha256 "dde081b4c0dd8985230b2f5353749ff6619f9b765f4d31535c283f4ea9f1b2ed"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
