
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.8.15"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.15/streamplace-v0.8.15-darwin-arm64.tar.gz"
      sha256 "6c0f8be287d6c07458a70ce523f786e308fb020b731d734a2409e675930bc848"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.15/streamplace-v0.8.15-darwin-amd64.tar.gz"
      sha256 "614e14a2ce7e56cfb58e2869dcbfd75b6e8450bb1e84b83edf4de0bcebe9700d"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.15/streamplace-v0.8.15-linux-arm64.tar.gz"
      sha256 "5af079a998276407b0c489ac13cc1a3bd822f4004d92b06f88c88091f5426909"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.15/streamplace-v0.8.15-linux-amd64.tar.gz"
      sha256 "d0bdfac942fe243dae23df9ac7a52e984566385c1fdb1729c4124bfc30bf6f2e"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
