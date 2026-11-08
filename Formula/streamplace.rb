
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.13.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.13.2/streamplace-v0.13.2-darwin-arm64.tar.gz"
      sha256 "8f21a7314ad44066a5aec324bede5453ec3a5c19cacb189c5900962312597e2d"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.13.2/streamplace-v0.13.2-darwin-amd64.tar.gz"
      sha256 "565b51c568c0308ae835159db093f59d44c851d871bb26e564a740320437295d"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.13.2/streamplace-v0.13.2-linux-arm64.tar.gz"
      sha256 "0258b7950f06724f5c6d0b00e8c8f418ce5a5eebe8af5b2b6e8ba1a86be1fedf"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.13.2/streamplace-v0.13.2-linux-amd64.tar.gz"
      sha256 "cfe99b22eeb572fa16b53ec0bc2296fb7b405631ce59106b49b8ccf32659e277"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
