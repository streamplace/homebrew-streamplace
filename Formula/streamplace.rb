
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.11.24"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.24/streamplace-v0.11.24-darwin-arm64.tar.gz"
      sha256 "43e8bf56d2f6a9289e6089f5edda1d6956c29addcdbc2bc84c3c52d345aafe96"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.24/streamplace-v0.11.24-darwin-amd64.tar.gz"
      sha256 "e16c9c73d46689a967fbf2b3be3e0a467fe9cf1aec663dacd38fb6d152a02e5b"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.24/streamplace-v0.11.24-linux-arm64.tar.gz"
      sha256 "54fcd3e997c7bd416b1dd8737e8c602b074a646de8b196a26ba631e5c58d1b7d"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.24/streamplace-v0.11.24-linux-amd64.tar.gz"
      sha256 "6b8239dc425cd0cd8113f39ae0272c966bd4fe8475ffdedb4a74b79676641d18"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
