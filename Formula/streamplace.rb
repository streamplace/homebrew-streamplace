
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.10.18"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.18/streamplace-v0.10.18-darwin-arm64.tar.gz"
      sha256 "ed2e61e8f3656cb0b3c34792e417e5b45e76281a2691e703fdf68e7d131da905"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.18/streamplace-v0.10.18-darwin-amd64.tar.gz"
      sha256 "cb18c1bc54752238b570f53b71b7ad0bb5546145cd4f6f1d04074e44c4a910e8"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.18/streamplace-v0.10.18-linux-arm64.tar.gz"
      sha256 "d4eeaf1a0d9cfb2a655a37c682ae88e15c2a58ae31492efe68e716d14972ca73"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.18/streamplace-v0.10.18-linux-amd64.tar.gz"
      sha256 "453521c77d7e2177dd2d7cf80794578aa84acc00568117701ee2353d1b7c6b08"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
