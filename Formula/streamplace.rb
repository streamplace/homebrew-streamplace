
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.11.12"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.12/streamplace-v0.11.12-darwin-arm64.tar.gz"
      sha256 "632cea04565f3013f6382b91fa1f4a855c1c56a5f0474dd9eb18449cca2f9eb4"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.12/streamplace-v0.11.12-darwin-amd64.tar.gz"
      sha256 "97989391c5a1a2adeb697c1de5eb0cc489b4ed8dc74f530daad45bf83539b10c"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.12/streamplace-v0.11.12-linux-arm64.tar.gz"
      sha256 "c40a05123f25d34725435220910b96e1cb8cc8054e9f8f0067a9cd89988e6506"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.12/streamplace-v0.11.12-linux-amd64.tar.gz"
      sha256 "4788b9bd741f1ec5766ccaf71928c19cb007e765193c48f57dbcf69102c27cd3"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
