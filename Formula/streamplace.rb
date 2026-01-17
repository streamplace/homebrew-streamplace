
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.9.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.4/streamplace-v0.9.4-darwin-arm64.tar.gz"
      sha256 "7980aed4356347f69db6baa789e6ff01291199cf4af7153d4ddf976ae4ca5a15"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.4/streamplace-v0.9.4-darwin-amd64.tar.gz"
      sha256 "83c7e80e5e26971001d689b354c8948311afeec780ffec9aebadec2e3bc9c62e"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.4/streamplace-v0.9.4-linux-arm64.tar.gz"
      sha256 "80f25549b5bfb27c5d5c45c2477312094546bab58a5084d4032c5f555495665a"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.4/streamplace-v0.9.4-linux-amd64.tar.gz"
      sha256 "05f612c2e1eba1660d12fd5d2dcd6912115a51b881ee6cc4225405b5ebc0ed54"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
