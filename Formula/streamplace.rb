
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.10.13"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.13/streamplace-v0.10.13-darwin-arm64.tar.gz"
      sha256 "029d0b1d20598ddc9a133b1f1546516491d0148b6c2b31163d77e79593c2cf45"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.13/streamplace-v0.10.13-darwin-amd64.tar.gz"
      sha256 "505bef61933462d877b421fa3d6c6a2396b4ac468ef38eb556c4bd3f5ccf2d4e"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.13/streamplace-v0.10.13-linux-arm64.tar.gz"
      sha256 "4f990e8dc68e36e0ec38314090a16a334d17953ae7ef017f9a397b959c178c72"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.13/streamplace-v0.10.13-linux-amd64.tar.gz"
      sha256 "e72f42b3a794d0c06dde068ac59a73dbd3c74f014e13ef5d8a9242dd75987ae1"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
