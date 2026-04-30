
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.10.20"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.20/streamplace-v0.10.20-darwin-arm64.tar.gz"
      sha256 "b0271a17a9c3994562a5d39271dce5a109bcf7b5f4d095498441f921b0f6e2dc"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.20/streamplace-v0.10.20-darwin-amd64.tar.gz"
      sha256 "0ea5b3f8ab5021f3ba1c706b27aa753cccdd4907967f2f2512c7b5bd4aab5b5b"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.20/streamplace-v0.10.20-linux-arm64.tar.gz"
      sha256 "c6dd3482bc23d0fbeb1bd2714ff26282f5240fde414269c939236af510ab205c"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.20/streamplace-v0.10.20-linux-amd64.tar.gz"
      sha256 "019158c6fb1549224f41022cb28e4fe4266e8777b154d67c41b99263506c4f66"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
