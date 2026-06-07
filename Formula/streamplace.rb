
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.11.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.7/streamplace-v0.11.7-darwin-arm64.tar.gz"
      sha256 "b91158befaa758d8805bc613222e48ebf81a628f2bd27f9bfc8357201f9ae15c"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.7/streamplace-v0.11.7-darwin-amd64.tar.gz"
      sha256 "165205da33720f6037b25b9e614896945fad1e05d9cfe93ee27403a8ee49258c"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.7/streamplace-v0.11.7-linux-arm64.tar.gz"
      sha256 "33353c10bdee48e5c1083ec7d00e461db607fdf7c92f418473ca25996b6f2807"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.7/streamplace-v0.11.7-linux-amd64.tar.gz"
      sha256 "6014365efdd978610f3e05378373fcabcf04ec20c49e64319f41ddf2732f4534"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
