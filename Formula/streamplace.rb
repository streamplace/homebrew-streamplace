
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.10.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.9/streamplace-v0.10.9-darwin-arm64.tar.gz"
      sha256 "a0060b68ae4b6022b364bb9c9862229c495401d62fe6d008805238f8fcf42958"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.9/streamplace-v0.10.9-darwin-amd64.tar.gz"
      sha256 "8adeb65887b0682f00403e68b82416659e693c0679958cb7a692d3116a4f0365"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.9/streamplace-v0.10.9-linux-arm64.tar.gz"
      sha256 "fb82d5ab233879f5c021c1df11e1f1ad37a6f61c2512eefc0d55c99f6fedc759"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.9/streamplace-v0.10.9-linux-amd64.tar.gz"
      sha256 "bacd2e9ec7e578dab40c30ff6825a4e520b746db79096a1377f7e0c66db45aa3"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
