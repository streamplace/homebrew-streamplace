
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.11.26"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.26/streamplace-v0.11.26-darwin-arm64.tar.gz"
      sha256 "f63d8d63633d9f9d508b9dc72af7c792f14a0420732ae277d816c2d0416e78f9"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.26/streamplace-v0.11.26-darwin-amd64.tar.gz"
      sha256 "e7fb40a40a7545e514ba6674c94323acefce35ee5f2e5017fe16590aa1b8dcd0"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.26/streamplace-v0.11.26-linux-arm64.tar.gz"
      sha256 "41eb0d5a7095bf9b81b5d4b7300d770b4326590f910d36aa525a0ea2663e82dd"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.26/streamplace-v0.11.26-linux-amd64.tar.gz"
      sha256 "b93a1c10c61469bac9917aa3059e354189f130c95822ee8c37ae550b550a50b4"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
