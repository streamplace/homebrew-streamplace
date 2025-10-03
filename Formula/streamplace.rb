
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.7.35"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.35/streamplace-v0.7.35-darwin-arm64.tar.gz"
      sha256 "8c96e9f8738fc561bee1d60e34261ba7c59872d62bdba8c4e0a7a4f25040e1e3"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.35/streamplace-v0.7.35-darwin-amd64.tar.gz"
      sha256 "6fcaff28b8f1ad31b1e1b8ba27280ea54a3c9ed9718461bf71f50e4a80566871"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.35/streamplace-v0.7.35-linux-arm64.tar.gz"
      sha256 "c60d2162524244ad5694bb651acfb90e07123f80fd03c39b038c01b30a0fc1af"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.35/streamplace-v0.7.35-linux-amd64.tar.gz"
      sha256 "d1d3f1dfeaf9f6af835162333fa297f87239d8cde8b11f24b2f9cc4fa95c8b48"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
