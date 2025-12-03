
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.8.13"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.13/streamplace-v0.8.13-darwin-arm64.tar.gz"
      sha256 "80ff03aa14526e946a6f8fc7d75c7b32d0a0c8f35a6380e35061474c03c08cc7"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.13/streamplace-v0.8.13-darwin-amd64.tar.gz"
      sha256 "4d8c465a6b69b97528cdeb3f5f9329b7e3a1317195f5d93b163dba6aa2d64177"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.13/streamplace-v0.8.13-linux-arm64.tar.gz"
      sha256 "ef6d65908ab38cc04e08f65810381cbb32820b8f887569a53d2e857f7cd8c256"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.13/streamplace-v0.8.13-linux-amd64.tar.gz"
      sha256 "dcc6641b352774a025e471161f5f0c95a2ab73522ed8d068d8079d8413a5d20c"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
