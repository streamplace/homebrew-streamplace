
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.7.28"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.28/streamplace-v0.7.28-darwin-arm64.tar.gz"
      sha256 "9453b46ad40faeff5ec69f5ce7b98c6aea20173c41410ebce522e757948628c5"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.28/streamplace-v0.7.28-darwin-amd64.tar.gz"
      sha256 "fff7e745f1b93161b4d0220f272cbec2064e66871a07e17d97fec16eb5a7e7b6"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.28/streamplace-v0.7.28-linux-arm64.tar.gz"
      sha256 "b99f4c595530af030d6a0fa5969072ae2169b29222b7dde32ee885af79de44af"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.28/streamplace-v0.7.28-linux-amd64.tar.gz"
      sha256 "30f74fd15fbc4f3ed5c4fae701e4fed6aaf1eff0948e29ee7d989548eac82098"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
