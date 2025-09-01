
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.7.24"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.24/streamplace-v0.7.24-darwin-arm64.tar.gz"
      sha256 "f33365f9641ccad49d83f8f6e8d1c4cb1e3aee856c749ba9911ba04a1ad4862d"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.24/streamplace-v0.7.24-darwin-amd64.tar.gz"
      sha256 "497d7af598b096b908e0d78a69bc12229da16db8690c7e367a52dc40c2b8e339"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.24/streamplace-v0.7.24-linux-arm64.tar.gz"
      sha256 "86c81220a5f4dd902d66e3ff0f2a9ff83b48e5dc5698efba394d88ea6ec450fb"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.24/streamplace-v0.7.24-linux-amd64.tar.gz"
      sha256 "de426fe75fe9c2728164b6b38d4b7fdffa75df7b1fe131a00bf899327d593d08"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
