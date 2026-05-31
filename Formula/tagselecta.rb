class Tagselecta < Formula
  desc "Vim-inspired tool for managing audio file metadata"
  homepage "https://cantti.github.io/tagselecta"
  version "2.4.0"
  license "GPL-3.0-only"

  on_linux do
    on_arm do
      url "https://github.com/cantti/tagselecta/releases/download/v#{version}/tagselecta-linux-arm64.zip"
      sha256 "1405800b8708b78efb8eb683326515db7f3ba740a7e931860d2afc085b915cde"
    end
    on_intel do
      url "https://github.com/cantti/tagselecta/releases/download/v#{version}/tagselecta-linux-x64.zip"
      sha256 "be0dea3615b9a5041b995ad3fffa2f4b15ab79a81191c58776f1cb44b5b7d9f6"
    end
  end

  on_macos do
    on_arm do
      url "https://github.com/cantti/tagselecta/releases/download/v#{version}/tagselecta-osx-arm64.zip"
      sha256 "6cd6169acf0174952b1a44a2b992bf43c02ed260e0532a4b3238a992180e0f30"
    end
    on_intel do
      url "https://github.com/cantti/tagselecta/releases/download/v#{version}/tagselecta-osx-x64.zip"
      sha256 "09e674674d2eadf1b2da4ad447b4b1ee8760ce3c42fd9554ef87e4e9d52d7c48"
    end
  end

  def install
    bin.install "tagselecta"
  end

  test do
    system bin/"tagselecta", "--version"
  end
end
