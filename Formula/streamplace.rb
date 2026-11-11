
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.13.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.13.4/streamplace-v0.13.4-darwin-arm64.tar.gz"
      sha256 "d0e7a429337b3f46e9af1b5f9dd030a76290011f2f38842bd825e69b1fa41b9a"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.13.4/streamplace-v0.13.4-darwin-amd64.tar.gz"
      sha256 "c9025a53929e0b3cc1cd21279f99aa04f5e0daa742843b5359349ac1283e18a8"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.13.4/streamplace-v0.13.4-linux-arm64.tar.gz"
      sha256 "d4a0523f9f9adeabd02fee27a23fc5a4246e9034ef93a851ab0f88ce26807935"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.13.4/streamplace-v0.13.4-linux-amd64.tar.gz"
      sha256 "6fa0cd3931ac3d8e0b52273b65728a619ec93a6f11d4df25ae27c908918f98d9"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
