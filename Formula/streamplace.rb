
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.8.17"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.17/streamplace-v0.8.17-darwin-arm64.tar.gz"
      sha256 "b6f72c42edfd331c61bb177b912842fc1320487e0ebfcd06d5d6ea8628a14d44"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.17/streamplace-v0.8.17-darwin-amd64.tar.gz"
      sha256 "e22c4cb691cd8339f2d028b6ea616ac4d016781d1734d00388c7d4c2776458e6"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.17/streamplace-v0.8.17-linux-arm64.tar.gz"
      sha256 "a3bc4b0a3b38e4b84ffacd4e62e075b8c9587458fe5db7b51703609feb0fe94a"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.17/streamplace-v0.8.17-linux-amd64.tar.gz"
      sha256 "e30d7bea1da7b405f5bebac20ee1d98a319e3ca7f5dac05d68f9c86218acd321"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
