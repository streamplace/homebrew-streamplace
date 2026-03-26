
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.10.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.10/streamplace-v0.10.10-darwin-arm64.tar.gz"
      sha256 "4070bf626084ff794e9292fb3ff940320fa415453ebcf8d04f1d3948ea77c40e"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.10/streamplace-v0.10.10-darwin-amd64.tar.gz"
      sha256 "df52e435326ee8c89a9066c0793e82ae70c74260df20ccd8d1ab3173ec965312"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.10/streamplace-v0.10.10-linux-arm64.tar.gz"
      sha256 "e68cb882353984b988df818df2d76f271b2ffc31ba9ffaaeaf768053600d02ae"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.10/streamplace-v0.10.10-linux-amd64.tar.gz"
      sha256 "9ad8f0a849515ad9905240664c16b7e74981daa66be6d9b90102af0441ba0a31"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
