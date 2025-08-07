
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.7.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.11/streamplace-v0.7.11-darwin-arm64.tar.gz"
      sha256 "cf829de91f730846c37722284c1bb1dadf0bd0a64fceafe7e0cd4ac17e4fe4c1"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.11/streamplace-v0.7.11-darwin-amd64.tar.gz"
      sha256 "5e13ad69ba349129296311cda78d39a61a662f886c209e17d0f39a1e69e194bf"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.11/streamplace-v0.7.11-linux-arm64.tar.gz"
      sha256 "4d5570085789ca2f5c65d74066accc04816912b5d9461cd32390d715e3e70d2c"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.11/streamplace-v0.7.11-linux-amd64.tar.gz"
      sha256 "6704da99489bd05b8c017a6bcf147cc17918e7e8c8372a1373a645a901c819af"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
