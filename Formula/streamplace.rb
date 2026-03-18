
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.10.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.5/streamplace-v0.10.5-darwin-arm64.tar.gz"
      sha256 "e8f7c5db9dd4c0f4541dc8484f4c483f58b4657eecc175c44de5df197c19505b"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.5/streamplace-v0.10.5-darwin-amd64.tar.gz"
      sha256 "e2a81e33a5ed1dd907e7131b144a0b293813e66ad80607a86a2af1abf4d0b36f"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.5/streamplace-v0.10.5-linux-arm64.tar.gz"
      sha256 "499bba099b66b2139b71804543c4489726e47c718c1cd1196109e3dae856ea55"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.5/streamplace-v0.10.5-linux-amd64.tar.gz"
      sha256 "2f94058ec8aaf2bc97ba31b4d431f5272618e3b6477dca0ec0915c49e74c1209"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
