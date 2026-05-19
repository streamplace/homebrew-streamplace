
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.10.28"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.28/streamplace-v0.10.28-darwin-arm64.tar.gz"
      sha256 "488b598e4651c0ba88bd74a19d029bfd8015205058331e2776d6d2b5bdef567b"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.28/streamplace-v0.10.28-darwin-amd64.tar.gz"
      sha256 "537675d3fa975de66cacea6e3654e404a9e0fb2b3c799e7964f21c3701444c2d"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.28/streamplace-v0.10.28-linux-arm64.tar.gz"
      sha256 "9f8b7f1f073024ec23945636e135a0dd4d42f00952991f2f1a57c445312885b8"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.28/streamplace-v0.10.28-linux-amd64.tar.gz"
      sha256 "2612d95cb4d0c46a1b97e6fd5e5473e3cd8c98784e5ecb0bb7cf2580e52db36e"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
