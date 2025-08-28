
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.7.18"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.18/streamplace-v0.7.18-darwin-arm64.tar.gz"
      sha256 "65f3630da2e4a659340c235eb47fee4e44c082b515c281ed124d5a43e71497e9"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.18/streamplace-v0.7.18-darwin-amd64.tar.gz"
      sha256 "c96c1768381ee2056f0cc9918a0a61e6f97ecf3dbf45144e04f9836753365258"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.18/streamplace-v0.7.18-linux-arm64.tar.gz"
      sha256 "addb5d45bd87f88993b9babc0472e7829d9dbc602f30c48f07b4f80ae2bd3a11"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.18/streamplace-v0.7.18-linux-amd64.tar.gz"
      sha256 "d374decd0bcc5d0066b72701a12977205adac1121e33ae3d1daeb86cd704eecd"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
