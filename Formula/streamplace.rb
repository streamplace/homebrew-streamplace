
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.7.23"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.23/streamplace-v0.7.23-darwin-arm64.tar.gz"
      sha256 "6078dc17e7bdb0543a2452b1ad8e68e0de540861eefe55a8ac45208ecdcaec91"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.23/streamplace-v0.7.23-darwin-amd64.tar.gz"
      sha256 "4510e0265eaa70eeddfd1a537a8c9b0debcf728e6c5f39d254e81f8706181a89"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.23/streamplace-v0.7.23-linux-arm64.tar.gz"
      sha256 "0dbd7938ff6cfc216f9f426fabac5f782fcb8f07b8ce62f1eabd6765f5e454dd"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.23/streamplace-v0.7.23-linux-amd64.tar.gz"
      sha256 "a875c8ee25dca42e3b9d039249a35267dfd9bedc6228ffe4a34f3f7c806e52ed"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
