
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.11.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.11/streamplace-v0.11.11-darwin-arm64.tar.gz"
      sha256 "207ca8844e5615252bf6c7f3105cdd20de5cb0f5b405a8f94169cb045b815aed"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.11/streamplace-v0.11.11-darwin-amd64.tar.gz"
      sha256 "9595de48409a97634ddf0a05900c30516ed8a40461f51be4da55628d339b2e00"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.11/streamplace-v0.11.11-linux-arm64.tar.gz"
      sha256 "de8f7af1ace22a5c43ae8c36624c7c2fd225450f5c65e7f5c7ce3ae3c116b9f5"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.11.11/streamplace-v0.11.11-linux-amd64.tar.gz"
      sha256 "72847c04b6d2210eef5a40108b8fe325642ad4ab551cecc7b8a7a78eeb14269f"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
