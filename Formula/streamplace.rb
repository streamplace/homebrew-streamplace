
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.12.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.12.4/streamplace-v0.12.4-darwin-arm64.tar.gz"
      sha256 "3e4ec471365b84051361a15ed54e9f90f07615f23380fd81667200f3c16584c0"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.12.4/streamplace-v0.12.4-darwin-amd64.tar.gz"
      sha256 "b3ba5acb189d841a658854fadede6394288ee5c1e796b7e0c3ae4200dc85c55a"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.12.4/streamplace-v0.12.4-linux-arm64.tar.gz"
      sha256 "658402de3b1c25e37477f116b287a53d22d17ba3387ec7d33ff82866d5e00e8b"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.12.4/streamplace-v0.12.4-linux-amd64.tar.gz"
      sha256 "4712b2df7a0184d5702e280af2e7864e0166e4a5f759d5ee2e097b639dbde802"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
