
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.11.27"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.27/streamplace-v0.11.27-darwin-arm64.tar.gz"
      sha256 "04639466d5839ca2188e899dd41f3a06a43ecdca9787f7a7671761ebef5a6b57"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.27/streamplace-v0.11.27-darwin-amd64.tar.gz"
      sha256 "4c3c89c02dc42d355868ba08e1a0076130f6e374bf0c363be7725484ea088eab"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.27/streamplace-v0.11.27-linux-arm64.tar.gz"
      sha256 "d2c57efac30b273ad0633ee5eafefb01c45b1f025345219568028a8b39a495be"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.27/streamplace-v0.11.27-linux-amd64.tar.gz"
      sha256 "45db925a941cd75f3fcef99c5f266c45f8670ac09f4e884f91bf991888b4620b"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
