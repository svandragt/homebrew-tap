class Vivace < Formula
  desc "Fast composer install from composer.lock"
  homepage "https://github.com/svandragt/vivace"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/svandragt/vivace/releases/download/v0.19.0/vivace-v0.19.0-aarch64-apple-darwin.tar.gz"
      sha256 "baa342e5f9ca1d2f3696a0b59518feea0abc9f542fe9dbd0c42b7caa64e9201d"
    end
    on_intel do
      url "https://github.com/svandragt/vivace/releases/download/v0.19.0/vivace-v0.19.0-x86_64-apple-darwin.tar.gz"
      sha256 "9d9db6de6289f9ff150eae42d131e080740fe2816fbb44e0918339b681ba96dc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/svandragt/vivace/releases/download/v0.19.0/vivace-v0.19.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1d3e97ba0ef86d23a63667cfa86f53bff897cef292d73f5f3f78c5f446e97638"
    end
    on_intel do
      url "https://github.com/svandragt/vivace/releases/download/v0.19.0/vivace-v0.19.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b1030c37bbd53a56fa071795c05e108bca6eae90c6775266dea1935edaf6ddf9"
    end
  end

  def install
    bin.install "viv"
  end

  test do
    system "#{bin}/viv", "--version"
  end
end
