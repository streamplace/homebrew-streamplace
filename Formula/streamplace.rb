
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.9.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.11/streamplace-v0.9.11-darwin-arm64.tar.gz"
      sha256 "3d14e5df77b66e570599d43f5926ae0b690c262459f28ec0f31da7039bfd1329"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.11/streamplace-v0.9.11-darwin-amd64.tar.gz"
      sha256 "350df7a797815f377c34fa298a99a8500b9272a80893f1222e64bcd75074eb4e"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.11/streamplace-v0.9.11-linux-arm64.tar.gz"
      sha256 "aec7817c08a93ee6eb29182ffc98d05735fe611fbef9e46af5216713e68d9c6d"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.11/streamplace-v0.9.11-linux-amd64.tar.gz"
      sha256 "50450bfe354f965379be7d02ba9737a4ddef0ed67c897fce1728adb9fca81152"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
