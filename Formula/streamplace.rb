
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.7.19"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.19/streamplace-v0.7.19-darwin-arm64.tar.gz"
      sha256 "8e0a042a8dbf59f710605b36823f649a2d08f841ba57eca6c501220966ff4942"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.19/streamplace-v0.7.19-darwin-amd64.tar.gz"
      sha256 "e4f4b8b29396aad924847beaf8bddb4e331b5f182f289b8efa8f5e4fe1a27b9e"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.19/streamplace-v0.7.19-linux-arm64.tar.gz"
      sha256 "a2892c9bda86103e0ae5e422154c0e4c52ead7b517d54d7afbc9c1103a55fcb0"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.19/streamplace-v0.7.19-linux-amd64.tar.gz"
      sha256 "23308c53a6733d54fde1c8ef406a2dc934a08c72f14063eafc4c8304886039a1"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
