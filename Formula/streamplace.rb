
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.10.32"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.32/streamplace-v0.10.32-darwin-arm64.tar.gz"
      sha256 "e8a074495db98246f06f831618661a17a70ad6f0aa032df28bfd71a6363956f1"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.32/streamplace-v0.10.32-darwin-amd64.tar.gz"
      sha256 "69e171ff00ff5565592bc1f9b210cc634171eae4bad9e10be5e1e14609cfc347"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.32/streamplace-v0.10.32-linux-arm64.tar.gz"
      sha256 "b4ee17578b2634af179beb7551b80645712a78e6f5ff5db84db21ee9cf2e4638"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.32/streamplace-v0.10.32-linux-amd64.tar.gz"
      sha256 "3b21067721799e1c842a62629ab4419d884775fd44457ee2348d006b2b422baf"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
