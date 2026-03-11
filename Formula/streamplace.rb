
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.10.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.0/streamplace-v0.10.0-darwin-arm64.tar.gz"
      sha256 "b986e8ab4859ed58e05642c1697db4e940c678b974f385ac72e86c9ad2879880"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.0/streamplace-v0.10.0-darwin-amd64.tar.gz"
      sha256 "227e16fe5669ba3c19921718b9717cd0197fff2c1b34a1808d3e08f0daa279a2"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.0/streamplace-v0.10.0-linux-arm64.tar.gz"
      sha256 "8f45631d4be2c36e1583e103c48d6494128b8761633f2f594d51b93e81944777"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.0/streamplace-v0.10.0-linux-amd64.tar.gz"
      sha256 "2f28d764d49ca16c1cd191dc60e175abb6e05cff3fe1210a975de7194114a4f5"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
