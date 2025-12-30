
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.8.18"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.18/streamplace-v0.8.18-darwin-arm64.tar.gz"
      sha256 "6963e105418afc01304b5bf15a41feb4fadac0ddd142bff730487d4298542e2f"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.18/streamplace-v0.8.18-darwin-amd64.tar.gz"
      sha256 "f19e9094107c42a51f8da812b461943461fe94a09870f4d4d49f1d81d929f20f"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.18/streamplace-v0.8.18-linux-arm64.tar.gz"
      sha256 "f56ccf2b3108d99ed45a46cb175a6be9adb4e0a720594818ec81c2e10bd6830f"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.18/streamplace-v0.8.18-linux-amd64.tar.gz"
      sha256 "f8c52cf2e627b9140bfa679f4dbfacb70e668f615f0978f6c565bac43a139b4d"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
