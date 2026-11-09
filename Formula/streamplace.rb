
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.13.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.13.3/streamplace-v0.13.3-darwin-arm64.tar.gz"
      sha256 "51c13eef1dd3c6dee74705da39d26c437c5155553f6bd0ddb7a6783ee6df60a0"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.13.3/streamplace-v0.13.3-darwin-amd64.tar.gz"
      sha256 "e30bff7fd36b22b90cc6fa78664ec9f881b7029244bc34b550cbe0cc05a0d247"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.13.3/streamplace-v0.13.3-linux-arm64.tar.gz"
      sha256 "ea1708de07f548ece1ee7bab1633453b1fac01b630e7ce3b3ec252ef21240bdc"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.13.3/streamplace-v0.13.3-linux-amd64.tar.gz"
      sha256 "c9d12abbcef6d51d4b3059874fcd6ab765e3e8ddfa7c8e8d3554a174716ff8fb"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
