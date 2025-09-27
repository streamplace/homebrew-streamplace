
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.7.29"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.29/streamplace-v0.7.29-darwin-arm64.tar.gz"
      sha256 "deadd26264f14b5f31ceadaafc61522d2faeb572c7961fb2fa49622bdeff5a7b"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.29/streamplace-v0.7.29-darwin-amd64.tar.gz"
      sha256 "6d33b77dbc03f2a39502f8473ba451f7d57d398eca93f78cf295a4cb9e84809e"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.29/streamplace-v0.7.29-linux-arm64.tar.gz"
      sha256 "a50b90a011ea30c3ca3232c84a37c765ca640e2bbad60ced36573a6333fffad1"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.29/streamplace-v0.7.29-linux-amd64.tar.gz"
      sha256 "a13fdfc0cb2b16df840b6cf6dedf52075f8635df7df9e53ed99a958135e92bb8"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
