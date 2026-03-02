
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.9.13"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.13/streamplace-v0.9.13-darwin-arm64.tar.gz"
      sha256 "175696df85f3a9c46f941d992ef4a069f9b7f50036396a3a4611f7385bb382ad"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.13/streamplace-v0.9.13-darwin-amd64.tar.gz"
      sha256 "b62b8963aac399a0d3a246fbbf11487fe45f5ebcf0b73181dd3fcbdf41546f6d"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.13/streamplace-v0.9.13-linux-arm64.tar.gz"
      sha256 "c8a4633a501c333da0a35a7010bfbfe38a15a762f65ccfaf63f4e6ff65aabad7"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.13/streamplace-v0.9.13-linux-amd64.tar.gz"
      sha256 "2e9d4d4f4164a72e62c6a285c3a56167ac0a966de060512cae5266427b6f8297"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
