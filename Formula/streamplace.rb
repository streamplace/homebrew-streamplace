
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.9.15"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.15/streamplace-v0.9.15-darwin-arm64.tar.gz"
      sha256 "d9ca32ac6267de021b6624654fd0948b3e4ee0e7e7e6ef9fdc372629e6954b01"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.15/streamplace-v0.9.15-darwin-amd64.tar.gz"
      sha256 "2e64bc0f1837305d43a3ba31ed76abaf765b6411b6f058c8dddfe82f13c70c00"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.15/streamplace-v0.9.15-linux-arm64.tar.gz"
      sha256 "8ecd33700dcb0c40f3a0b7d65cd88452cfc0e2d984e9256fe2048ba4204edfb6"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.15/streamplace-v0.9.15-linux-amd64.tar.gz"
      sha256 "54dd79b014575d3cf10c15a48e44ec6f0e8ae8a04f13083ab00b1e70ec978b9a"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
