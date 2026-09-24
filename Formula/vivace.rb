class Vivace < Formula
  desc "Fast composer install from composer.lock"
  homepage "https://github.com/svandragt/vivace"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/svandragt/vivace/releases/download/v0.16.0/vivace-v0.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "5d01f203508d71f7d5fa545ed9d3239a1a12fe5ed4abbe418f91a87580f9a79b"
    end
    on_intel do
      url "https://github.com/svandragt/vivace/releases/download/v0.16.0/vivace-v0.16.0-x86_64-apple-darwin.tar.gz"
      sha256 "d6255eeb78b131ff83f251245af016382afea69015bb2e0fb2bde449ec66c4e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/svandragt/vivace/releases/download/v0.16.0/vivace-v0.16.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7fce4f09d3b48e23f21b336af15e61657c4cc26b40c29d40b6d54207e4bddc64"
    end
    on_intel do
      url "https://github.com/svandragt/vivace/releases/download/v0.16.0/vivace-v0.16.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "eb1ec50348a8da73d27e47e8e850ca7db064e659b3d98ddc502dbd787417bab1"
    end
  end

  def install
    bin.install "viv"
  end

  test do
    system "#{bin}/viv", "--version"
  end
end
