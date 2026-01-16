
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.9.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.1/streamplace-v0.9.1-darwin-arm64.tar.gz"
      sha256 "339dd96d68a5235827a45d424b353235ea9fb940e046169c69939d06c65f09f6"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.1/streamplace-v0.9.1-darwin-amd64.tar.gz"
      sha256 "647e5dedaa752e5e863227893519ac549eb7ebbc4dbbba5a5b53e2061c6b6b03"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.1/streamplace-v0.9.1-linux-arm64.tar.gz"
      sha256 "82baf3ed7b74ab775cdcbe038323bc259c25cb751efb188f03880e389677a54c"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.9.1/streamplace-v0.9.1-linux-amd64.tar.gz"
      sha256 "346b734eda3c6fd7f1273579bb67b940aec0688ac103003e5122ef3d03cf43ad"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
