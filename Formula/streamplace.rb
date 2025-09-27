
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.7.31"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.31/streamplace-v0.7.31-darwin-arm64.tar.gz"
      sha256 "11f4a967d775ffad7191ac25b06d4c78b1bbe2f59a1e69226e6410f6237bcce6"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.31/streamplace-v0.7.31-darwin-amd64.tar.gz"
      sha256 "47957d25da2e0f1aeb0bd62feb414e6684e10019f8242114112a05980e4561eb"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.31/streamplace-v0.7.31-linux-arm64.tar.gz"
      sha256 "13bb3c119c3f89d361793b7c909d5d0cfcb0e75d1b0536ffab41876250e7bfa1"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.31/streamplace-v0.7.31-linux-amd64.tar.gz"
      sha256 "8df7090e1afba852568760a9ae97ee6aea38449f346f6113c9996e66931febbf"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
