class Tagselecta < Formula
  desc "Vim-inspired tool for managing audio file metadata"
  homepage "https://cantti.github.io/tagselecta"
  version "2.2.0"
  license "GPL-3.0-only"

  on_linux do
    on_arm do
      url "https://github.com/cantti/tagselecta/releases/download/v#{version}/tagselecta-linux-arm64.zip"
      sha256 "bf79579dc19366762723330298e948234dde1c8c273f63837dbff1027cba466c"
    end
    on_intel do
      url "https://github.com/cantti/tagselecta/releases/download/v#{version}/tagselecta-linux-x64.zip"
      sha256 "855d66929c6f5deba53b6d0e9c5ae8972d4df4139f32949bcd61c5ce7992209f"
    end
  end

  on_macos do
    on_arm do
      url "https://github.com/cantti/tagselecta/releases/download/v#{version}/tagselecta-osx-arm64.zip"
      sha256 "6b07df5cff51ea397b2b2e6ea82238a06c3cd100aef202f78ca0c6a6bd1dd203"
    end
    on_intel do
      url "https://github.com/cantti/tagselecta/releases/download/v#{version}/tagselecta-osx-x64.zip"
      sha256 "2e295a598cadc60860a364aea631652064977decf6a42e614bb5e48b49ce15ec"
    end
  end

  def install
    bin.install "tagselecta"
  end

  test do
    system bin/"tagselecta", "--version"
  end
end
