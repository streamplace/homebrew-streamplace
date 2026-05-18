
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.10.26"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.26/streamplace-v0.10.26-darwin-arm64.tar.gz"
      sha256 "f43bfa266f5d43433ea3480120c3d305e5c65bdda51bbf4b458dfde23bbab0c4"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.26/streamplace-v0.10.26-darwin-amd64.tar.gz"
      sha256 "ce50cc15f795b464ad5fc689512f1cf08764045ce72e04d8faf3c68b42f3881e"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.26/streamplace-v0.10.26-linux-arm64.tar.gz"
      sha256 "cf23587192e89ddb2bf3b2a5f6d0da758d21edb74ddb41fa4842368b6b2dedd7"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.26/streamplace-v0.10.26-linux-amd64.tar.gz"
      sha256 "a415f2012a2007e26343b2401618b65c67311872fe46dec55c41ecff3b2706b9"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
