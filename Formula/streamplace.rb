
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.10.22"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.22/streamplace-v0.10.22-darwin-arm64.tar.gz"
      sha256 "be907d666887c5adcfb22c0499de97f5fdac3e48d262066ca0b3069d5b4769fa"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.22/streamplace-v0.10.22-darwin-amd64.tar.gz"
      sha256 "5e38b0d5cf1d4227929ef88cb115c417d00da5f23b31bb3925acd2d43e7d5d69"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.22/streamplace-v0.10.22-linux-arm64.tar.gz"
      sha256 "c25e5b4fd8fe95c0f616adb8a83905a47d49d800a208e0259d4816dedab9b735"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.22/streamplace-v0.10.22-linux-amd64.tar.gz"
      sha256 "1b2110526c3b2f181eda52550c368d12e166f748a4429b3d1208c8bd13a52f62"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
