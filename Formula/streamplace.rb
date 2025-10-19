
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.8.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.2/streamplace-v0.8.2-darwin-arm64.tar.gz"
      sha256 "39e4cfdb6297ab608ccab7f7cc15277c5a077dc60fa086834611006c1d92fb65"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.2/streamplace-v0.8.2-darwin-amd64.tar.gz"
      sha256 "5119510cb087cef444655ee8a2ba47fcae3ac6cb24cd189d81383083be117f45"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.2/streamplace-v0.8.2-linux-arm64.tar.gz"
      sha256 "65fc7cdc46d5ad70bba23a64304d8c8ead31ff1879bb98e467a1ca77acf61182"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.8.2/streamplace-v0.8.2-linux-amd64.tar.gz"
      sha256 "19b49972d884c94c6d7863c1e3a3ff559ebeaeaf6419629cb26770ba08353454"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
