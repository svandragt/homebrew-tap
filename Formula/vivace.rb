class Vivace < Formula
  desc "Fast composer install from composer.lock"
  homepage "https://github.com/svandragt/vivace"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/svandragt/vivace/releases/download/v0.13.0/vivace-v0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "c1da5809af905f24c7c28a9de20271b41676296c943099b3b966be1c92dc4c1c"
    end
    on_intel do
      url "https://github.com/svandragt/vivace/releases/download/v0.13.0/vivace-v0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "11e2c379141c3ec715f2e4ceabeacdb552f1aa1c637bcf1634611e16fae29021"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/svandragt/vivace/releases/download/v0.13.0/vivace-v0.13.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "da20bb3f99edb5be33753a9907f6ba217031a1ad88794d4a57ef9abf0ca5e554"
    end
    on_intel do
      url "https://github.com/svandragt/vivace/releases/download/v0.13.0/vivace-v0.13.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3569d25cd348d1631a62c9809a33bd8ac4301714895337a8afb16d21fe31b6ad"
    end
  end

  def install
    bin.install "viv"
  end

  test do
    system "#{bin}/viv", "--version"
  end
end
