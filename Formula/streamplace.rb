
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.8.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.4/streamplace-v0.8.4-darwin-arm64.tar.gz"
      sha256 "bfb21a1f43e7338b75723496f4d668d67321ee0696af8ba78ee53959f350066c"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.4/streamplace-v0.8.4-darwin-amd64.tar.gz"
      sha256 "6ec1aa9db2ad4e92cba89766f1212c3a72d48d02f042e3a5f8f350b3b2253579"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.4/streamplace-v0.8.4-linux-arm64.tar.gz"
      sha256 "29b9e1d05135da114ca3645082744a1894b723b571d93f45b344554a3bbdc308"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.4/streamplace-v0.8.4-linux-amd64.tar.gz"
      sha256 "8a17c736a17586fdd56329b5471bf85adc76526b4ee1e70629408d9c24b93a8d"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
