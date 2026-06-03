
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.11.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.1/streamplace-v0.11.1-darwin-arm64.tar.gz"
      sha256 "3a1878e9ea56c0ff66053037527289f3e5d0ae39686702ac852525149d6479fd"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.1/streamplace-v0.11.1-darwin-amd64.tar.gz"
      sha256 "882a379273ba7dbdc0b5ae2dd318caad2ce9d51a49347bdd1b42a0e308af9ac3"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.1/streamplace-v0.11.1-linux-arm64.tar.gz"
      sha256 "f6cca4e91ba060b83666d2b17ba09b0a14e83760029694d3373ab8fb5df537ba"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.1/streamplace-v0.11.1-linux-amd64.tar.gz"
      sha256 "e971bdb6449f4640f0ed2a46d932bdc7ed79f16bc74703912c040c0fddf6fde7"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
