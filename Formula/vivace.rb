class Vivace < Formula
  desc "Fast composer install from composer.lock"
  homepage "https://github.com/svandragt/vivace"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/svandragt/vivace/releases/download/v0.23.0/vivace-v0.23.0-aarch64-apple-darwin.tar.gz"
      sha256 "54d940fdaab18006a92b9d2f6cc43cfc6351410faa834944e51623a0c7c7cca1"
    end
    on_intel do
      url "https://github.com/svandragt/vivace/releases/download/v0.23.0/vivace-v0.23.0-x86_64-apple-darwin.tar.gz"
      sha256 "cc57028a0506dd2a48da0f8c77d8af9c1c3370681c25a128d958a1fe44b333e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/svandragt/vivace/releases/download/v0.23.0/vivace-v0.23.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a0464306b6efa8f0e239ac756dc83db44a980fdd620860a36d684f0bc174f693"
    end
    on_intel do
      url "https://github.com/svandragt/vivace/releases/download/v0.23.0/vivace-v0.23.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f242b74db0970ca178ff74fc722fcfbd5191fe642fb96ef17f55e51545e05af9"
    end
  end

  def install
    bin.install "viv"
    man1.install Dir["man/*.1"]
    bash_completion.install "completions/viv"
    zsh_completion.install "completions/_viv"
    fish_completion.install "completions/viv.fish"
  end

  test do
    system "#{bin}/viv", "--version"
  end
end
