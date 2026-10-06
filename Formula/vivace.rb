class Vivace < Formula
  desc "Fast composer install from composer.lock"
  homepage "https://github.com/svandragt/vivace"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/svandragt/vivace/releases/download/v0.21.0/vivace-v0.21.0-aarch64-apple-darwin.tar.gz"
      sha256 "f8ad4edd19884a24b230f170def87e6120ddf76a24d7b2bf22da9ac28d9f570f"
    end
    on_intel do
      url "https://github.com/svandragt/vivace/releases/download/v0.21.0/vivace-v0.21.0-x86_64-apple-darwin.tar.gz"
      sha256 "ae594c17965a3591ea0b4878076d8a887016c3d110bfed9b33c28e8d7d228869"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/svandragt/vivace/releases/download/v0.21.0/vivace-v0.21.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6d6432c00fecfccf488d7ebcbe7e01a7d621ec1662118945bebe1d6ffe331124"
    end
    on_intel do
      url "https://github.com/svandragt/vivace/releases/download/v0.21.0/vivace-v0.21.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0dedd84ccbf61c68b80b5d5e8b7b00fcbe2a1caeca5c6e836fe37aff52013a39"
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
