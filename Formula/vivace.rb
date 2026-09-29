class Vivace < Formula
  desc "Fast composer install from composer.lock"
  homepage "https://github.com/svandragt/vivace"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/svandragt/vivace/releases/download/v0.20.0/vivace-v0.20.0-aarch64-apple-darwin.tar.gz"
      sha256 "035262faeb1f12a517a0a4a5f0c31bd1eff69bc8b5646f0295464cd7fb1a0cca"
    end
    on_intel do
      url "https://github.com/svandragt/vivace/releases/download/v0.20.0/vivace-v0.20.0-x86_64-apple-darwin.tar.gz"
      sha256 "329f821beace6c1f36989394fa4fc119e00f6a44cafba25ef37cff06d83a6cc7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/svandragt/vivace/releases/download/v0.20.0/vivace-v0.20.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e37f0ba3011b7bb17f886467951db9aca377ae95511cec4f66eef06ef341d085"
    end
    on_intel do
      url "https://github.com/svandragt/vivace/releases/download/v0.20.0/vivace-v0.20.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4da4019e82c0c8a5f1b81e6b364ce6479cb9934c46eb56bc118e90bdf6d800df"
    end
  end

  def install
    bin.install "viv"
  end

  test do
    system "#{bin}/viv", "--version"
  end
end
