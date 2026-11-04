
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.12.15"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.12.15/streamplace-v0.12.15-darwin-arm64.tar.gz"
      sha256 "d6d3ae7af48ec5d8ec78dc53af6347d47ed113c0b2cb615f24a4fa79bfb888a5"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.12.15/streamplace-v0.12.15-darwin-amd64.tar.gz"
      sha256 "86eb55ac6f94483109f67e64145ce704873094ad7cfcc51fbb811450282525d0"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.12.15/streamplace-v0.12.15-linux-arm64.tar.gz"
      sha256 "65cec2a2334c225ef448f404c4cd010c817ef633377f781083da5b35842606a7"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.12.15/streamplace-v0.12.15-linux-amd64.tar.gz"
      sha256 "0c4652550fabdaf38f1ab1afaf655368953f086f60288745035a5e44e3d108b1"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
