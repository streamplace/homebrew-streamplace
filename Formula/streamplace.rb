
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.11.21"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.21/streamplace-v0.11.21-darwin-arm64.tar.gz"
      sha256 "504dafbec3d15605e1543f2b7dd876ce9b52f2a577263df9e2709785e69177c3"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.21/streamplace-v0.11.21-darwin-amd64.tar.gz"
      sha256 "3e0a5cb24750e45533a56793c885ff72c80cd67e0981c29a6596c0fd6016ec57"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.21/streamplace-v0.11.21-linux-arm64.tar.gz"
      sha256 "dc165a0e262de27c61020afb47904eb9fec1c854f68e8ef68dac44753b247d52"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.21/streamplace-v0.11.21-linux-amd64.tar.gz"
      sha256 "cd2891f64009ce9549766726a3f98fe0c2fd866fe55b06ab9c26394a26a49956"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
