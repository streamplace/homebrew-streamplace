
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.10.12"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.12/streamplace-v0.10.12-darwin-arm64.tar.gz"
      sha256 "329fd9f37de6d37bb0c53e79308ec2be11ef788f070451c8b31eb106e46c10e1"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.12/streamplace-v0.10.12-darwin-amd64.tar.gz"
      sha256 "2c5d3f6313c81b90781127c5744662bccc9e0d5a4a2874b1e3dccf8ff8f97339"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.12/streamplace-v0.10.12-linux-arm64.tar.gz"
      sha256 "d14bb502b2da71e33afe9b5e67b97ef88dbab41586b0bdb7ea88aa4234b0c2c4"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.12/streamplace-v0.10.12-linux-amd64.tar.gz"
      sha256 "eee4fdddca258e6b3386f67b768dd83a43712af264b233cc58e9b7987a8c0e81"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
