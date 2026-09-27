class Vivace < Formula
  desc "Fast composer install from composer.lock"
  homepage "https://github.com/svandragt/vivace"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/svandragt/vivace/releases/download/v0.18.0/vivace-v0.18.0-aarch64-apple-darwin.tar.gz"
      sha256 "f734d131e3d80276851354afe0deb132804032c7e12deaf2350058189addf7f5"
    end
    on_intel do
      url "https://github.com/svandragt/vivace/releases/download/v0.18.0/vivace-v0.18.0-x86_64-apple-darwin.tar.gz"
      sha256 "b73cbf23aa494cff0f300cc66c6a998cb11c8add852139bdf12794126da1b0ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/svandragt/vivace/releases/download/v0.18.0/vivace-v0.18.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "327816422f9c63ae4dbcf77b70476e14c83ea2006af77d2c63e7a6d5633f95b1"
    end
    on_intel do
      url "https://github.com/svandragt/vivace/releases/download/v0.18.0/vivace-v0.18.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5e3fa8c66889355bfe798c585e21fb8353f29bcb11263afa26e16ea7211cd88d"
    end
  end

  def install
    bin.install "viv"
  end

  test do
    system "#{bin}/viv", "--version"
  end
end
