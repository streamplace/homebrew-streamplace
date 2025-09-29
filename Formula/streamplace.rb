
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.7.33"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.33/streamplace-v0.7.33-darwin-arm64.tar.gz"
      sha256 "ef28e596442f1c91c85e5cf99434e434e43784bdd5db71beb9c830724fed6088"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.33/streamplace-v0.7.33-darwin-amd64.tar.gz"
      sha256 "15e1a2f479080a8f288dc913918d6a103b82a39169186df2738c1ff0340f9875"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.33/streamplace-v0.7.33-linux-arm64.tar.gz"
      sha256 "7e930dea1e9a8f0ff4c1e9e928458125cdd53154ed2a416a890294cc0c69769f"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.33/streamplace-v0.7.33-linux-amd64.tar.gz"
      sha256 "41f434d136aea4a969d29a722a86a2802134126b823a55fdca8f36b1910b9cd4"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
