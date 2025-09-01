
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.7.21"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.21/streamplace-v0.7.21-darwin-arm64.tar.gz"
      sha256 "a323d4ae7185e02e75ddebc924da8797ac18617025d3c9e67ec0f342a4ed73a5"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.21/streamplace-v0.7.21-darwin-amd64.tar.gz"
      sha256 "edbb16d9204ab5e57abea68d6e48269f863e359b7cc29346ef74862c9f302c78"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.21/streamplace-v0.7.21-linux-arm64.tar.gz"
      sha256 "d1ca88a6dd49f43a083ac58d0e940cc492408db246ef75ead765b54be3f5b0a9"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.21/streamplace-v0.7.21-linux-amd64.tar.gz"
      sha256 "79384c94ee672fafea2a1d23eea904a668793f9767067ba68b3867ab29c8b512"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
