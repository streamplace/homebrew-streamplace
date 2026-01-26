
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.9.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.7/streamplace-v0.9.7-darwin-arm64.tar.gz"
      sha256 "836e7d21ec8de210ae78c25ea30523d9ee314c23c1bbe748f85615f05d57bc49"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.7/streamplace-v0.9.7-darwin-amd64.tar.gz"
      sha256 "63b90c69e0d48838a4e235c6f0487b182827bfff27c997f0ab2edcdfcb1bae9d"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.7/streamplace-v0.9.7-linux-arm64.tar.gz"
      sha256 "ac2fa786bdb8f3bbcf3aa80d0c23e4f4292af3fb09eb429f6fb884ebc732ef9b"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.7/streamplace-v0.9.7-linux-amd64.tar.gz"
      sha256 "d3fc2579790fb0a04a203097e40fcdc686b3e1b35925bb88f0478ab4bfc5ac31"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
