
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.10.39"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.39/streamplace-v0.10.39-darwin-arm64.tar.gz"
      sha256 "b3ae3e39213d544b078fdc586b58ced97af742b01dcdb50fd8e9cc807698757a"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.39/streamplace-v0.10.39-darwin-amd64.tar.gz"
      sha256 "51eb023940b8193c7474dd2bf1a41f2df4cc771b5a49c181b1603e289a579f4d"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.39/streamplace-v0.10.39-linux-arm64.tar.gz"
      sha256 "63f0d09108775b60ecb07a894144abdb3e180818e51d5cf3a61bf65c6b77c488"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.39/streamplace-v0.10.39-linux-amd64.tar.gz"
      sha256 "53d8ec314fc97c554dd0aeaa9785c139e600bbf08a54aea86327fb602a24979c"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
