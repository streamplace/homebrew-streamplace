
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.7.34"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.34/streamplace-v0.7.34-darwin-arm64.tar.gz"
      sha256 "ea896a223bac11baf78c8b3313f1908ffd33ec17666b95fe24d8320d6edf6e1a"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.34/streamplace-v0.7.34-darwin-amd64.tar.gz"
      sha256 "e5823ae0693f80a3284c4df513fa124314dab64a8d0bb23ba3bd581397ba88e4"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.34/streamplace-v0.7.34-linux-arm64.tar.gz"
      sha256 "539baf3b878e77a0f23544cb64018dec4a4312d8111a9612efa41c1115507250"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.34/streamplace-v0.7.34-linux-amd64.tar.gz"
      sha256 "ceb10f4c02c0824776890819308665158b194c03b6b3ac095d00ba03df26a9bf"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
