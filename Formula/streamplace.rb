
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.10.14"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.14/streamplace-v0.10.14-darwin-arm64.tar.gz"
      sha256 "bec1d41e68bfe4c8feccd29a1782154a3934a1b9a9dafe306f1e54a91af63506"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.14/streamplace-v0.10.14-darwin-amd64.tar.gz"
      sha256 "81ef5139b268a5c67eb12a8861f7fb755b3d035366273662f2e2c933133faf74"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.14/streamplace-v0.10.14-linux-arm64.tar.gz"
      sha256 "c35db0a125cea4556ec489943b4764e807d692bca5b679cb0419878ee78f6d92"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.14/streamplace-v0.10.14-linux-amd64.tar.gz"
      sha256 "37ee5713de0a1b3b46112f21c9109245b92db5311bd10ead0724896fef757bd6"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
