
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.0/streamplace-v0.9.0-darwin-arm64.tar.gz"
      sha256 "71f07c0be352187f1013e30cc8d0c9733d88c39f771d146873e087e6d63bbc74"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.0/streamplace-v0.9.0-darwin-amd64.tar.gz"
      sha256 "ca786721d39d1b1adde4d48647c84581dd257770ed02a15759415c9e2df84907"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.0/streamplace-v0.9.0-linux-arm64.tar.gz"
      sha256 "6a987670e8fe2ba7362d9009ca118a1a40dfead2470f1d21134b515490ed9bfd"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.0/streamplace-v0.9.0-linux-amd64.tar.gz"
      sha256 "a8e6d70e95156434da4e45b09126b65d024f34f03465efc353b304e8bb36e66f"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
