
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.10.17"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.17/streamplace-v0.10.17-darwin-arm64.tar.gz"
      sha256 "cdcf6811c51529ba3ace87d49a4330018720689209ca89adc45338f7c88a20a4"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.17/streamplace-v0.10.17-darwin-amd64.tar.gz"
      sha256 "550e65ee2cdcd1c212c360eada337b4b5f967dad37ce2b851035a0750fc14ddc"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.17/streamplace-v0.10.17-linux-arm64.tar.gz"
      sha256 "31c004a7cc87390730e6ee16857ff3028aeeeac4ad6c6375fe67d6aa8d945dd5"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.17/streamplace-v0.10.17-linux-amd64.tar.gz"
      sha256 "790580dff828c10c8bedf80781a563aab85a322ed892af0452d2cc1a37e89060"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
