class Tagselecta < Formula
  desc "Vim-inspired tool for managing audio file metadata"
  homepage "https://cantti.github.io/tagselecta"
  version "2.6.4"
  license "GPL-3.0-only"

  on_linux do
    on_arm do
      url "https://github.com/cantti/tagselecta/releases/download/v#{version}/tagselecta-linux-arm64.zip"
      sha256 "de0d2947c1fa31a4d86f420e8896d7cc274ac21581663295bc94195d041b5e21"
    end
    on_intel do
      url "https://github.com/cantti/tagselecta/releases/download/v#{version}/tagselecta-linux-x64.zip"
      sha256 "1877db6424af687df547d8e1b0e73f31f195dda4a888f28c530b913a4d0cf228"
    end
  end

  on_macos do
    on_arm do
      url "https://github.com/cantti/tagselecta/releases/download/v#{version}/tagselecta-osx-arm64.zip"
      sha256 "aedb41f1ef5e68b578a107fe06902b8869af8807466fe73adf3ec6de3dfbb709"
    end
    on_intel do
      url "https://github.com/cantti/tagselecta/releases/download/v#{version}/tagselecta-osx-x64.zip"
      sha256 "9170de6b3487ae7a7d58e09b5c3bb7e9013a0644416fbb2d453381ad231322fd"
    end
  end

  def install
    bin.install "tagselecta"
  end

  test do
    system bin/"tagselecta", "--version"
  end
end
