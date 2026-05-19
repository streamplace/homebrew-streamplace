
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.10.29"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.29/streamplace-v0.10.29-darwin-arm64.tar.gz"
      sha256 "cf477fd1109ff9d04af3f48a203b4b046a77f3a7f0d1c210fa13137ec2a5b8a3"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.29/streamplace-v0.10.29-darwin-amd64.tar.gz"
      sha256 "7188a6960071c53a25287d0959eb257db39d67788c37aac54723c60fe4dca88f"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.29/streamplace-v0.10.29-linux-arm64.tar.gz"
      sha256 "0d70dbc265c71c11cd7530ab1d2b4aba2e9a00b5cab14c050fa9c981802b56b2"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.29/streamplace-v0.10.29-linux-amd64.tar.gz"
      sha256 "d303540a6d7690a4dc8b846385757102e0fb3c0bad824aaaf1d8d2065f8013f9"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
