
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.10.31"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.31/streamplace-v0.10.31-darwin-arm64.tar.gz"
      sha256 "64d4916f1daa0fc3f52d7d4a994b5e9e2ca7fd22f7f8c39b1460a1cbef9c3f0f"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.31/streamplace-v0.10.31-darwin-amd64.tar.gz"
      sha256 "da7852a93611fcd7233b3bd8e7e3836d29de13eb7b2cd7334d2c2c8c9946a4cc"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.31/streamplace-v0.10.31-linux-arm64.tar.gz"
      sha256 "c72761127288eff079db7b0aa546e9881fd321ef850ce7c4298556e36156a7fb"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.31/streamplace-v0.10.31-linux-amd64.tar.gz"
      sha256 "fd8bf2ecb5afb78b71088f81cbb5aa93dc311abeb0338824e2dc67389558b775"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
