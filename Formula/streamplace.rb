
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.11.16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.16/streamplace-v0.11.16-darwin-arm64.tar.gz"
      sha256 "7f04185e607998cb4291ad826b97dffb90c0aee10f9863236eabe0c2d55b664f"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.16/streamplace-v0.11.16-darwin-amd64.tar.gz"
      sha256 "f61a19348fd448371febe7d44d43f42b27dce24ed05d4d0d19349071ddb34f89"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.16/streamplace-v0.11.16-linux-arm64.tar.gz"
      sha256 "c9263a4a72834415d3f536023310e3363deb27da74fb2e5b56f00bf0bc4d7935"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.16/streamplace-v0.11.16-linux-amd64.tar.gz"
      sha256 "16cb66e932905699ae62a589bfc5e6a4ddb6914c4a30d7da63705dee56c973e3"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
