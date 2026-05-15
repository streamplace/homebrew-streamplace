
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.10.25"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.25/streamplace-v0.10.25-darwin-arm64.tar.gz"
      sha256 "9e3b2bb57df77987d243741f0611e2ef14e1880c19bc34ce81520b6ddc804013"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.25/streamplace-v0.10.25-darwin-amd64.tar.gz"
      sha256 "2f4fef929c610e6477a598fbc7aa4dde51fdae14939c9e60f0388f0ffd64861b"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.25/streamplace-v0.10.25-linux-arm64.tar.gz"
      sha256 "e3d25c139ce5f6d7aeef53297e873fa2a85fa0278666cd6aa761b1f16853a44a"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.25/streamplace-v0.10.25-linux-amd64.tar.gz"
      sha256 "895579c75005a2fd4ccf0420e8706ffa2ccd9cd7985a3995292af92fc57c0101"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
