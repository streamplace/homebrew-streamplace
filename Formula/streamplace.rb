
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.10.23"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.23/streamplace-v0.10.23-darwin-arm64.tar.gz"
      sha256 "805f6429486bcf1557b6db1cc860be2eae23644a87df6ba9706aea14c06d657e"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.23/streamplace-v0.10.23-darwin-amd64.tar.gz"
      sha256 "3a2f7408b92c4d82afd03543b80c85e393acd6e32c8afea347df6a97003e9f63"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.23/streamplace-v0.10.23-linux-arm64.tar.gz"
      sha256 "b4e083f8f4b3fbe010a49381606074025ca8531637c6bcab0740672966e5c7b9"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.23/streamplace-v0.10.23-linux-amd64.tar.gz"
      sha256 "5718bfa96df904f730a178b9fb6673a19407445995d63b64c606295929edb713"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
