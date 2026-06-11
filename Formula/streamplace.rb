
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.11.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.10/streamplace-v0.11.10-darwin-arm64.tar.gz"
      sha256 "c7dde3bfa542c203f3b4825c351ee874b8d92fb2706247831cfdf455b5e71c2a"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.10/streamplace-v0.11.10-darwin-amd64.tar.gz"
      sha256 "220931dea71f1e13399df8d2c3eb672992e191f7b2e8076ac0a2004ef973fe7d"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.10/streamplace-v0.11.10-linux-arm64.tar.gz"
      sha256 "a126b1e5efa7af24cf61c45f773624557f617659cde074ab61343454a5835d5e"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.10/streamplace-v0.11.10-linux-amd64.tar.gz"
      sha256 "d254cb9764198e87b6f7f21eda86f8cdf82faca7128f9f22a453791ddb75cf46"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
