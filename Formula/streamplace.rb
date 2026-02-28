
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.9.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.10/streamplace-v0.9.10-darwin-arm64.tar.gz"
      sha256 "6b0c5235969b55522ee6ff8c1d5143f5f75ec76f6f97bcf084742d34d9cefcb4"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.10/streamplace-v0.9.10-darwin-amd64.tar.gz"
      sha256 "0f65a15da94d27272ddb4a7adaae8b1d65f87c8c44d84a3a4e87f49e8f18885d"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.10/streamplace-v0.9.10-linux-arm64.tar.gz"
      sha256 "e2675258b31d6c640689dd5b24edd0d33a0783667170cc4636faf27c0ff1b347"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.10/streamplace-v0.9.10-linux-amd64.tar.gz"
      sha256 "77f384e9dbe13dc6b399a40059568f60d7bd9df7f6fd1763ca17ce40f073f280"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
