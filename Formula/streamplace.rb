
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.9.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.5/streamplace-v0.9.5-darwin-arm64.tar.gz"
      sha256 "62ae2db476edaa76bc34c8af51f62c513121a74af680cbb4117a193f4260e40b"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.5/streamplace-v0.9.5-darwin-amd64.tar.gz"
      sha256 "e959d652e5c29e87fc793aa77d01dfc658c65defe17f040943a239ebf5fde7aa"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.5/streamplace-v0.9.5-linux-arm64.tar.gz"
      sha256 "9a53ffce778ab52bf0065dfcbb23778129285bbd4e3282d07c8f2aa5db082090"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.5/streamplace-v0.9.5-linux-amd64.tar.gz"
      sha256 "e8be55dbf3780675d104cefd292ae17a0b34d00ee7b98983cabeed943d39a205"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
