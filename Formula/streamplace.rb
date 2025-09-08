
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.7.25"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.25/streamplace-v0.7.25-darwin-arm64.tar.gz"
      sha256 "e8621da647ffc797e660f11b55d42b63c8dcee8e7b14cbce1d46e6d686094534"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.25/streamplace-v0.7.25-darwin-amd64.tar.gz"
      sha256 "f06afcfa0364d886256813a9ec9e5269517030f193be32fa262a7f21a3be414a"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.25/streamplace-v0.7.25-linux-arm64.tar.gz"
      sha256 "e9f6ecf0f45cd83e3ea3db9c1c1b49890bb330f348cdfdfd2fd7bb248349a637"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.25/streamplace-v0.7.25-linux-amd64.tar.gz"
      sha256 "1d91c2db333b4b8025cf851ec9942133f72878d184061565319576f826d34ac3"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
