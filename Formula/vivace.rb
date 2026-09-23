class Vivace < Formula
  desc "Fast composer install from composer.lock"
  homepage "https://github.com/svandragt/vivace"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/svandragt/vivace/releases/download/v0.15.0/vivace-v0.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "e87387a34d9e76994693c589db5cc5282430eaf501b9df6e45cae5d4b59dc2e9"
    end
    on_intel do
      url "https://github.com/svandragt/vivace/releases/download/v0.15.0/vivace-v0.15.0-x86_64-apple-darwin.tar.gz"
      sha256 "cb4c023c40a2da459ea99a8d8e8532fc1cd2f196736079a52b2f9a3d74d4e640"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/svandragt/vivace/releases/download/v0.15.0/vivace-v0.15.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1a92da2d9fe22128e1e87f4c3c59d0423a86e742d7acb1baed673372589a93e2"
    end
    on_intel do
      url "https://github.com/svandragt/vivace/releases/download/v0.15.0/vivace-v0.15.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4dcb272a503468d6587e6c3c1490e7d2c116156d5e264bb7bdd070cbf8869d62"
    end
  end

  def install
    bin.install "viv"
  end

  test do
    system "#{bin}/viv", "--version"
  end
end
