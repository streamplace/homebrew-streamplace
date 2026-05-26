
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.10.33"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.33/streamplace-v0.10.33-darwin-arm64.tar.gz"
      sha256 "b2dba1afdee077fa5a32444b703271199c4875be781e3aa868a180b0b814df01"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.33/streamplace-v0.10.33-darwin-amd64.tar.gz"
      sha256 "e625a3f9b365293efea382119f3f865c726e22c88835dbec3963869b3811524f"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.33/streamplace-v0.10.33-linux-arm64.tar.gz"
      sha256 "24f30c74be7949d028212ecfa19e5f22e0c553755e8ee8a88ea4c9bdd722e1b0"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.33/streamplace-v0.10.33-linux-amd64.tar.gz"
      sha256 "8de443ba51c73659f55a4bb68276f0552a368b1654ef5ee8c28f2099d71d4586"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
