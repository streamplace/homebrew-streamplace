
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.11.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.5/streamplace-v0.11.5-darwin-arm64.tar.gz"
      sha256 "3d2e4ac114d1d6630e5c91038e46d7f8d578877bbb0d769ca3199c903752a00e"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.5/streamplace-v0.11.5-darwin-amd64.tar.gz"
      sha256 "1489dff6b2d80a09f63be6b14775016d411cb0b3303657ea80d8ab6449101a33"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.5/streamplace-v0.11.5-linux-arm64.tar.gz"
      sha256 "abe9a2f16c124b56f383cd0d18364b130c3a48dddedee653706de03586c0eaba"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.5/streamplace-v0.11.5-linux-amd64.tar.gz"
      sha256 "16eb1e778805c53a5dde3252710d9f9cb0a5cead4c6e6c45033d23d6505f18da"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
