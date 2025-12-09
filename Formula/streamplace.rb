
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.8.14"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.14/streamplace-v0.8.14-darwin-arm64.tar.gz"
      sha256 "89b50159570805db2df3f352cdc56edd40f3ba402c2a172938d3dff55f3ad47f"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.14/streamplace-v0.8.14-darwin-amd64.tar.gz"
      sha256 "6faef91b7bfef74650aaf3d54a0a9d6a7a36bb7666981a70c35eff43af915637"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.14/streamplace-v0.8.14-linux-arm64.tar.gz"
      sha256 "9efda908e5dd8aab0ff8b07f124ad314a4d371ce5ec7418989f4b1416e655c4f"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.14/streamplace-v0.8.14-linux-amd64.tar.gz"
      sha256 "65d75979004c9d3d889d458c09626ff6788df854e8c1f7e6c92a3545e387ffc8"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
