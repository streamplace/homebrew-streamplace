
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.9.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.3/streamplace-v0.9.3-darwin-arm64.tar.gz"
      sha256 "8180608cbd12ec6d3c2e8123621f1175f200bfbeb91150a7ebc265295b78a02d"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.3/streamplace-v0.9.3-darwin-amd64.tar.gz"
      sha256 "13a28975407d75be5b5e6a3d0a7a8c78fc395faca35ac7a2b0a9676887808e91"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.3/streamplace-v0.9.3-linux-arm64.tar.gz"
      sha256 "57b869ff36ac1db30d92fcf551e53517246a95a70b7a59906580a56453ebdcf1"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.3/streamplace-v0.9.3-linux-amd64.tar.gz"
      sha256 "f893f5a0313a07a3208ad6767a47d8fb567feb22ad01b3c067bffea30f54fd60"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
