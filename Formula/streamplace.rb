
class Streamplace < Formula
  desc "Live video for the AT Protocol. Solving video for everybody forever."
  homepage "https://stream.place"
  license "GPL-3.0-or-later"
  version "0.7.12"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.12/streamplace-v0.7.12-darwin-arm64.tar.gz"
      sha256 "85ce08462f2957e8e64fd2402a717c1f8a3868d0f34837a7bf3224c830e53853"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.12/streamplace-v0.7.12-darwin-amd64.tar.gz"
      sha256 "5931e3c204d13d22c86dc3392afe757b2ef56505666d23ef2e4b450c157ec518"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.12/streamplace-v0.7.12-linux-arm64.tar.gz"
      sha256 "d414618edb4f1c5e7a590a2bd0eaaad99f320818d64c67ff5a3ed5619e4a36be"
    end

    if Hardware::CPU.intel?
      url "https://git-cloudflare.stream.place/api/v4/projects/1/packages/generic/latest/v0.7.12/streamplace-v0.7.12-linux-amd64.tar.gz"
      sha256 "04fae3938c84df2a2b203dec31e8d1150eb39f8b15bce3e27e20105afb122539"
    end
  end

  def install
    bin.install "streamplace" => "streamplace"
  end
end
