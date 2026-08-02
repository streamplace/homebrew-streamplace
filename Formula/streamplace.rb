
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.11.23"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.23/streamplace-v0.11.23-darwin-arm64.tar.gz"
      sha256 "aaacb756c7add5ff2a238d7729d81de4c6c4e1dcc6e104ccfd8e1dafe6b5863e"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.23/streamplace-v0.11.23-darwin-amd64.tar.gz"
      sha256 "fd9b087eb612eadfd82ca8267acfa71f918929cfaa80da27faab3ad532c22e9e"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.23/streamplace-v0.11.23-linux-arm64.tar.gz"
      sha256 "bdc51feaae5e16aed85d449f1c96abc70f2bb0e5f5e843ff07277752876fd171"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.23/streamplace-v0.11.23-linux-amd64.tar.gz"
      sha256 "8d5daa45781737092bcce792493684823527f90895defcc7d41a3a784d9f3ee5"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
