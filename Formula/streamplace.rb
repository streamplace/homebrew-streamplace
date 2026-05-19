
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.10.27"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.27/streamplace-v0.10.27-darwin-arm64.tar.gz"
      sha256 "2f690204a7633c89c809bb82cd969dd9d06c7ff19a761ceef4d24db864261435"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.27/streamplace-v0.10.27-darwin-amd64.tar.gz"
      sha256 "d1eafb7990f0e27a8d28e8b330360c1580704fae8a3cfb1afd1bde2a8963273b"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.27/streamplace-v0.10.27-linux-arm64.tar.gz"
      sha256 "875f9f69fbe4cbd071baf0f43e743c36c74905a684cf8dddd68116972f79c027"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.27/streamplace-v0.10.27-linux-amd64.tar.gz"
      sha256 "3a0b0f632961c9d1ceabf92ec320d27582867a6009fc2f6c07eac03d568efbe4"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
