
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.12.14"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.12.14/streamplace-v0.12.14-darwin-arm64.tar.gz"
      sha256 "3528d90712f07ffcfff9477b5634c7620d01b83e6e5a7b96310da0a3e84aedef"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.12.14/streamplace-v0.12.14-darwin-amd64.tar.gz"
      sha256 "21747450fdcbdd4a520190a4c7a631862b1a9daee6bac4a8c23c826f3803dc5c"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.12.14/streamplace-v0.12.14-linux-arm64.tar.gz"
      sha256 "b97559283f76abf7796d5fd66b42f32a3b7eff44674dc07d77e4edcd548c633f"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.12.14/streamplace-v0.12.14-linux-amd64.tar.gz"
      sha256 "e664ae9f3bfb7f704fd051af06c9459aec32050b6732a46328d1cc2192f750f6"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
