
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.10.37"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.37/streamplace-v0.10.37-darwin-arm64.tar.gz"
      sha256 "2069c4ad138537ab46895b7d79d073392f5fa256cb241c09b40a0f2392e32f04"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.37/streamplace-v0.10.37-darwin-amd64.tar.gz"
      sha256 "e5b0e697ecbb83a16a072d28705b4f06f0250b3b110410d8e30762d06b3bf50f"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.37/streamplace-v0.10.37-linux-arm64.tar.gz"
      sha256 "7a9bf642cb1227e0f68b9d86331b8bd903d25307a3d7d826d6e2a5ee828ee201"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.37/streamplace-v0.10.37-linux-amd64.tar.gz"
      sha256 "4ba700b7b9a103a50d2bbab786cdfe99c8fe661210a96b5d5a650798ed59e460"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
