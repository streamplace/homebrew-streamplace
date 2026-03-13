
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.10.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.2/streamplace-v0.10.2-darwin-arm64.tar.gz"
      sha256 "639c8a92091340528276d15410da3a33032d88818783a946ebe4f941db838f43"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.2/streamplace-v0.10.2-darwin-amd64.tar.gz"
      sha256 "404dee26f90d0b88df3b057de5f931f8c95af3f99c692c54e980e888b8b75e06"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.2/streamplace-v0.10.2-linux-arm64.tar.gz"
      sha256 "bada4f3035f6bcbc00e74e4e5c381a657dbf2a736bcf7137ff9735bd33e9c713"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.2/streamplace-v0.10.2-linux-amd64.tar.gz"
      sha256 "a16172fb2d541236cdf95fdb57253e06206ee76f5d818bf0d359db803919a807"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
