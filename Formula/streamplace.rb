
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.9.12"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.12/streamplace-v0.9.12-darwin-arm64.tar.gz"
      sha256 "11f2145ca13e06cfde9059de326e540135ead01850c34c9e48af51cdcaa51e14"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.12/streamplace-v0.9.12-darwin-amd64.tar.gz"
      sha256 "df316363465ab91373246ed8fe1c6266bc8b5232d7d30f2aaba9eb28a1a623a6"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.12/streamplace-v0.9.12-linux-arm64.tar.gz"
      sha256 "875425dc9c72afbc45f60bcddc2b1ba4ebcc478064f5a34a55199b568484f59f"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.12/streamplace-v0.9.12-linux-amd64.tar.gz"
      sha256 "2ca4b722a7196f1590eae97539f6935deb025d8c194496a3593c2ed591b1feec"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
