
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.13.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.13.0/streamplace-v0.13.0-darwin-arm64.tar.gz"
      sha256 "a9e2c7dbe5db1e07c674ce0d7947f248da20d802e409afe17adb420115148cd5"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.13.0/streamplace-v0.13.0-darwin-amd64.tar.gz"
      sha256 "4549db2ac0b21a0bf70b3b61eced8c1c9af4f9d340a24a7734c8e5088bbf1dfb"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.13.0/streamplace-v0.13.0-linux-arm64.tar.gz"
      sha256 "5330cccfef751963f58993b085825724b3662839737fb5e9df6d96bd843ef52a"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.13.0/streamplace-v0.13.0-linux-amd64.tar.gz"
      sha256 "19612c05362fa8fd21b97756b563323a6055962051b4d86f4c5a2f62f1fb9015"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
