
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.10.24"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.24/streamplace-v0.10.24-darwin-arm64.tar.gz"
      sha256 "fc3c00ce21590b1364185930ff4dc073bb244f9f2961d8612ce1d2f521c9f753"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.24/streamplace-v0.10.24-darwin-amd64.tar.gz"
      sha256 "af7bc6829286e6d454ba2fe077d114cf21bc6f433ac3f31dea4ebe43472a2dda"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.24/streamplace-v0.10.24-linux-arm64.tar.gz"
      sha256 "87bec50192981b506066d76664d486fe6ebd4b7a2db3f90d061ff0f5803c550d"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.24/streamplace-v0.10.24-linux-amd64.tar.gz"
      sha256 "06aa1221b5265b2c232571725c5e81e408e846419b0c7403cfdf0248852a8eec"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
