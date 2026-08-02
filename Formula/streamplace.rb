
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.11.22"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.22/streamplace-v0.11.22-darwin-arm64.tar.gz"
      sha256 "7a7789a84ba957b3c32c7803b6309bffc558e96755f035a8aa901e4f560c9147"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.22/streamplace-v0.11.22-darwin-amd64.tar.gz"
      sha256 "c2495191ce487762458c20dfaaf0ec5003a88185145885a879ce047501e69c0a"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.22/streamplace-v0.11.22-linux-arm64.tar.gz"
      sha256 "9c2591ce75efc94d106499ac1147beae0918b88639e885997c5285f5f23ccbfd"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.22/streamplace-v0.11.22-linux-amd64.tar.gz"
      sha256 "438075cbf2fb91f30bc70978eb476fef54c87ab34828c77149d61a883bba1f4e"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
