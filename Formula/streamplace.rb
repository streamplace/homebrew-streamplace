
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.10.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.7/streamplace-v0.10.7-darwin-arm64.tar.gz"
      sha256 "d571c003378c6361af1292e2d61c07c1eeacde7b87d6c4684a0558326f4904b8"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.7/streamplace-v0.10.7-darwin-amd64.tar.gz"
      sha256 "5afa54441b833597db1dbda2844e23f02225fe04075abf91d7c6d44c0456028b"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.7/streamplace-v0.10.7-linux-arm64.tar.gz"
      sha256 "e324c5d246aec686f7cbed4e0f32dbc463412865564a93cf0ce3ac4a7b296729"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.7/streamplace-v0.10.7-linux-amd64.tar.gz"
      sha256 "130173ce13481394b2924cbc976a6ef6370509e29c0b5fc469416b8819db81d2"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
