
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.10.19"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.19/streamplace-v0.10.19-darwin-arm64.tar.gz"
      sha256 "adb3fa148248886d13825da9ce553ecc0531c8cf39b91bd00f64f7cf1d2441cc"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.19/streamplace-v0.10.19-darwin-amd64.tar.gz"
      sha256 "86b8cd51eed7b14299025114f2bb6d387ec2d267b3a8ec6209a0ce49a696baee"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.19/streamplace-v0.10.19-linux-arm64.tar.gz"
      sha256 "acd5df44ab649c5c7552e6a26203eb817e8bc1027fa85fdb00b6653fff5a969b"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.10.19/streamplace-v0.10.19-linux-amd64.tar.gz"
      sha256 "303e0c8fa832cc61d976eadc249535838b68bec7b3d38f2e5e962568ee8ef809"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
