class Vivace < Formula
  desc "Fast composer install from composer.lock"
  homepage "https://github.com/svandragt/vivace"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/svandragt/vivace/releases/download/v0.17.0/vivace-v0.17.0-aarch64-apple-darwin.tar.gz"
      sha256 "6bddb8a1dac8602ce24523a2ae8d4f3b12c8d78d5e3f02652d95c7baeb7f243b"
    end
    on_intel do
      url "https://github.com/svandragt/vivace/releases/download/v0.17.0/vivace-v0.17.0-x86_64-apple-darwin.tar.gz"
      sha256 "f7e40b358dc5a84bca5243249048feb77dd11e709f68cf8c3c98e4739562de94"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/svandragt/vivace/releases/download/v0.17.0/vivace-v0.17.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f1a371e2b5a0a59aeb9742faf17a3878c8ecab953641a4915bcddc09c4989690"
    end
    on_intel do
      url "https://github.com/svandragt/vivace/releases/download/v0.17.0/vivace-v0.17.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "06444a7a0fea754555a90355f51c769f9c69f489d77f52be05e8ab84ee0c8116"
    end
  end

  def install
    bin.install "viv"
  end

  test do
    system "#{bin}/viv", "--version"
  end
end
