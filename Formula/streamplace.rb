
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.10.42"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.42/streamplace-v0.10.42-darwin-arm64.tar.gz"
      sha256 "11bdca74feee9e8bbb8c187cf4781ffbc89daa9e994c4d04d26cdcae56105546"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.42/streamplace-v0.10.42-darwin-amd64.tar.gz"
      sha256 "e5b71cb628dc27e587786a392d19852f369b0eba3e9f8b37c870d05790817887"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.42/streamplace-v0.10.42-linux-arm64.tar.gz"
      sha256 "2caa1f1fb4713bbf5ec4e7ab734171c9ee71b835caa0e2ccf52c620f0c9f62d0"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.42/streamplace-v0.10.42-linux-amd64.tar.gz"
      sha256 "ae9c0271eaa0521c6c323e0e5174ab9bd76a343d84525331c3a720c50f5c2896"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
