
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.8.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.6/streamplace-v0.8.6-darwin-arm64.tar.gz"
      sha256 "90716b1ca328a09d3dc1e1c46f0d604145487200ac0c5e0d92886a7d45627412"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.6/streamplace-v0.8.6-darwin-amd64.tar.gz"
      sha256 "624054256168a1d657a3fb0f5c14d3e24fdb5e33cd716e7cf88adf799b292526"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.6/streamplace-v0.8.6-linux-arm64.tar.gz"
      sha256 "5de00448a6451ea7fcc4c1b06c75fa81b80b0ec955b6f46cba183c5212c77a27"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.6/streamplace-v0.8.6-linux-amd64.tar.gz"
      sha256 "7d48f38f97f55b3865938b85edcec23ac89fa581f9adb9feb1c011f616545c5c"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
