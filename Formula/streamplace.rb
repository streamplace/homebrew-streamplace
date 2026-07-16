
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.11.17"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.17/streamplace-v0.11.17-darwin-arm64.tar.gz"
      sha256 "8cb998ab9558c656d3f6040384cfb51212ebc7f90e9e0b86e3c9de01f4dd33fe"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.17/streamplace-v0.11.17-darwin-amd64.tar.gz"
      sha256 "cae9d69f0d6e7e85bb770da50b2b5e01090a2b5b565fe346581defb68d5814ff"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.17/streamplace-v0.11.17-linux-arm64.tar.gz"
      sha256 "4d2440dcee4b2195071f4c1cf23b7b123beb9510058524396cdf2d41ebe00c1b"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.17/streamplace-v0.11.17-linux-amd64.tar.gz"
      sha256 "739d44acf09155493fd15b0b103f2e83bc56bb21148d319d3cfbe3615ea314d2"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
