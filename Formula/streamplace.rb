
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.11.19"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.19/streamplace-v0.11.19-darwin-arm64.tar.gz"
      sha256 "123a521918d32588f0e3e098974d964c22d6b74c1406fb0c788a5d583e545f13"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.19/streamplace-v0.11.19-darwin-amd64.tar.gz"
      sha256 "c893d0b53242fafab9ff705a71e1cdef81f2aa17b55acb6e0f9f6124026fe0e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.19/streamplace-v0.11.19-linux-arm64.tar.gz"
      sha256 "bb50294dd5b441ae792d17c06b1873ed26f386617ae4e2e37e132efe9b71f15b"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.19/streamplace-v0.11.19-linux-amd64.tar.gz"
      sha256 "8394b44de9a061481753794d9343fbb43e39b93a8328a2c092ce844c063fdc54"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
