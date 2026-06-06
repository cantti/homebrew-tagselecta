class Tagselecta < Formula
  desc "Vim-inspired tool for managing audio file metadata"
  homepage "https://cantti.github.io/tagselecta"
  version "2.6.0"
  license "GPL-3.0-only"

  on_linux do
    on_arm do
      url "https://github.com/cantti/tagselecta/releases/download/v#{version}/tagselecta-linux-arm64.zip"
      sha256 "43a3b0940915cfe47268fcf54137a9ffddb7632bb7801477e5daad0c0b0978e7"
    end
    on_intel do
      url "https://github.com/cantti/tagselecta/releases/download/v#{version}/tagselecta-linux-x64.zip"
      sha256 "de5866e8dc866bd46467631a0e5971167e607c782baf6254b38fb7a99983b5e2"
    end
  end

  on_macos do
    on_arm do
      url "https://github.com/cantti/tagselecta/releases/download/v#{version}/tagselecta-osx-arm64.zip"
      sha256 "07d99eb92a27bea3ce5a7f5a5fca1b0feb0bbf3d3275f4df24e32be83112ae75"
    end
    on_intel do
      url "https://github.com/cantti/tagselecta/releases/download/v#{version}/tagselecta-osx-x64.zip"
      sha256 "6e48c6b6bf34b6a65cd30463b5208dee4754a08c7fa7ef05f8bbdce2794ddec5"
    end
  end

  def install
    bin.install "tagselecta"
  end

  test do
    system bin/"tagselecta", "--version"
  end
end
