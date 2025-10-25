
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.8.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.8/streamplace-v0.8.8-darwin-arm64.tar.gz"
      sha256 "149d4db841f8c2d49af510e9f8da204767feb5e0c4e0140c762906082e473523"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.8/streamplace-v0.8.8-darwin-amd64.tar.gz"
      sha256 "6a5851943b83c09932cd1d44c1ee5ce14243c0ad003c43745335322152572b40"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.8/streamplace-v0.8.8-linux-arm64.tar.gz"
      sha256 "68ed0e27d303ab16c25b5ae8b430848ad595a860cc2bfabb3ee943ff08e64d54"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.8/streamplace-v0.8.8-linux-amd64.tar.gz"
      sha256 "7e185e4560486fc13d672fe87c1d41b8cef17359a01ea2fa5e12334e0305bea7"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
