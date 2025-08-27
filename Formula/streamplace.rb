
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.7.17"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.17/streamplace-v0.7.17-darwin-arm64.tar.gz"
      sha256 "a1f804f285207ff014acd40e5be00744584a26eaf03044c4ab1893b1ebced6b5"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.17/streamplace-v0.7.17-darwin-amd64.tar.gz"
      sha256 "a763102bf1dce9d4131adec10a3156955b7e4733395aa7d217eb5d1ea449ba0e"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.17/streamplace-v0.7.17-linux-arm64.tar.gz"
      sha256 "227271009c59796945f7c5d908a498730e68a158ed1a5e0863aa1048a0d3ec8c"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.17/streamplace-v0.7.17-linux-amd64.tar.gz"
      sha256 "04e5eaa85443a93a748b307d02abf091433f1408d794c45732d558f73b2717aa"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
