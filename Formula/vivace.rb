class Vivace < Formula
  desc "Fast composer install from composer.lock"
  homepage "https://github.com/svandragt/vivace"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/svandragt/vivace/releases/download/v0.22.0/vivace-v0.22.0-aarch64-apple-darwin.tar.gz"
      sha256 "8aad1177b89e8ae5838c6d91ae10747de5ee5f3d5e68712757fe3f23ab0861fb"
    end
    on_intel do
      url "https://github.com/svandragt/vivace/releases/download/v0.22.0/vivace-v0.22.0-x86_64-apple-darwin.tar.gz"
      sha256 "2bd3a0465d268cb58700376945fe6b866505a2aa7344386587d10b5952c5415c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/svandragt/vivace/releases/download/v0.22.0/vivace-v0.22.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "130e03f7c0fc4c5820c00b81ede58ec830b43b76195b6ba074d2abd578616696"
    end
    on_intel do
      url "https://github.com/svandragt/vivace/releases/download/v0.22.0/vivace-v0.22.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "53b9244b321a9d6a8632f9fea17751bd91b5fe46a6413c9b3659769c2427f3a2"
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
