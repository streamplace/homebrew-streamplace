
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.8.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.7/streamplace-v0.8.7-darwin-arm64.tar.gz"
      sha256 "d7f2214c3e7d7a89256917790d992887a4b8984564ce05eb59b2c52922237811"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.7/streamplace-v0.8.7-darwin-amd64.tar.gz"
      sha256 "cd228cd23128fd98f80b1e83184555f65b9751e3707f48b662f84a4819ab1b88"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.7/streamplace-v0.8.7-linux-arm64.tar.gz"
      sha256 "918dada712920ba26b47a00f74256c7c86c4b652fb5652c8754e4cda99d6a773"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.7/streamplace-v0.8.7-linux-amd64.tar.gz"
      sha256 "9ffb8e7275ccb1eb1f5843f769d5d01caed3fd3bc86234c67fa333b38d49ac0e"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
