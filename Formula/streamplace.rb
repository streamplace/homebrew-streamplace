
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.9.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.9/streamplace-v0.9.9-darwin-arm64.tar.gz"
      sha256 "8914e63ef223333d145c1fb93f1c2a9003ff52e0a884e15e396a7fa05be4bace"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.9/streamplace-v0.9.9-darwin-amd64.tar.gz"
      sha256 "74cf1a2f5f908cd243dd54bcdcbbcdc90d055fbb7d83d5e4e7c372b8af2a0e1d"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.9/streamplace-v0.9.9-linux-arm64.tar.gz"
      sha256 "7ba5cd43ef7639e58927c45574a385ea80f08bbaadaf5ae3e0d2ffe39b890b26"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.9/streamplace-v0.9.9-linux-amd64.tar.gz"
      sha256 "22b7bfa3be80af29f846e0bef435ffd892b1c8e0241132cc2e49e8f76d7baa70"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
