class Vivace < Formula
  desc "Fast composer install from composer.lock"
  homepage "https://github.com/svandragt/vivace"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/svandragt/vivace/releases/download/v0.14.0/vivace-v0.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "d340d77ce1818beb4dc55863ad76f32ca2281f478d97906d3807b60187bfeeae"
    end
    on_intel do
      url "https://github.com/svandragt/vivace/releases/download/v0.14.0/vivace-v0.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "a9db7a8535b6e0e17642b51d5b05c17c9778b44ebd48f0684daa1c2f52c1f36b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/svandragt/vivace/releases/download/v0.14.0/vivace-v0.14.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7a40e9fe0a64579eb47e960f2218da6c690021b4fff28c17eb7a36ff162014ad"
    end
    on_intel do
      url "https://github.com/svandragt/vivace/releases/download/v0.14.0/vivace-v0.14.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a150c14f30eea2346712467b1bb74124987ecae1bfc0215a9bad9c0c5efa1ddf"
    end
  end

  def install
    bin.install "viv"
  end

  test do
    system "#{bin}/viv", "--version"
  end
end
