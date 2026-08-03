
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.11.25"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.25/streamplace-v0.11.25-darwin-arm64.tar.gz"
      sha256 "94df4505b4949329af2eca2591387b98f127f050475b677e6b532adb30af3ee3"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.25/streamplace-v0.11.25-darwin-amd64.tar.gz"
      sha256 "ee420a91927599e50f500442b35f504d44dc883d364cddc15ce3daa657d97e48"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.25/streamplace-v0.11.25-linux-arm64.tar.gz"
      sha256 "f750c319b8d7005aa857c8e9d91f472178ac6bc05a9564de80be7837288ea3c2"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.25/streamplace-v0.11.25-linux-amd64.tar.gz"
      sha256 "e117c5543692342d13265ed8f742e198d7251fde5e4a346618e83dcc5866a68d"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
