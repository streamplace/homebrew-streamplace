
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.7.16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.16/streamplace-v0.7.16-darwin-arm64.tar.gz"
      sha256 "7b2bb980f178617076f286dfb4de98d0ea5114e77a45b6959252740ef7590da8"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.16/streamplace-v0.7.16-darwin-amd64.tar.gz"
      sha256 "b37f897aee6d275a52c364ca11bb0b1f1b71ff141d2229f7d7d1812a3de31961"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.16/streamplace-v0.7.16-linux-arm64.tar.gz"
      sha256 "04e7cf07f8d80e156117f275e7d4a469cccd2da4953038f136428469efeadf65"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.16/streamplace-v0.7.16-linux-amd64.tar.gz"
      sha256 "9676b85731d8558008add9263da88b97169eecb4d854e3dac4052be502075203"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
