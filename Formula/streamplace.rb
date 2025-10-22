
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.8.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.5/streamplace-v0.8.5-darwin-arm64.tar.gz"
      sha256 "38078f46eee6d3642f57eb0a573a56ba184ea7d131433c12fa481e1ca0a1e750"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.5/streamplace-v0.8.5-darwin-amd64.tar.gz"
      sha256 "1f261cdaa5af668ba9987709aa3755bbb9fb6788b755b022d7f8eb4871dee386"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.5/streamplace-v0.8.5-linux-arm64.tar.gz"
      sha256 "2c96d4d34ad2768e09896894c9f31b99e68f35beecd41959303ad944c3073167"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.5/streamplace-v0.8.5-linux-amd64.tar.gz"
      sha256 "ba4f403e600a79dd8bf4a4d624d67163b0c44e8f084a9766353293b0b662673d"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
