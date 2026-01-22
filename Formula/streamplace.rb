
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.9.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.6/streamplace-v0.9.6-darwin-arm64.tar.gz"
      sha256 "8c2b7eec36b0cac5ed4491918300a685aa3ac6eeed20af9c69034ec302323ed3"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.6/streamplace-v0.9.6-darwin-amd64.tar.gz"
      sha256 "272ba3a65b812aa287515b5f3152a6bbd5a617b011ad0bfb5ce32521b41c0827"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.6/streamplace-v0.9.6-linux-arm64.tar.gz"
      sha256 "2d3f21223db4c725ede2c5ec83339a1db559cae96235d3d1c10be1a75a2a967a"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.6/streamplace-v0.9.6-linux-amd64.tar.gz"
      sha256 "8c165cab07fff888042be9b0c65d9e07cbe9d8a4c394adca35b42462a2f56996"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
