# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://docs.brew.sh/rubydoc/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class TagSelecta < Formula
  desc "TagSelecta is a cross-platform vim inspired tool for managing audio file metadata (tags). "
  homepage "https://cantti.github.io/tagselecta"
  license "GPL-3.0"
  version "2.0.0"

  on_macos do
    on_arm do
      url "https://github.com/cantti/tagselecta/releases/download/v2.0.0/tagselecta-linux-arm64.zip"
      sha256 "ac257e626c49c264af162db82b708cb0381b8221ccd01b7af0ad2235c73667d5"
    end
    on_intel do
      url "https://github.com/cantti/tagselecta/releases/download/v2.0.0/tagselecta-osx-x64.zip"
      sha256 "a4d5d9a6697f1c93af7c6843b781cd43b5053923987a612eec74d98d0dd9e162"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cantti/tagselecta/releases/download/v2.0.0/tagselecta-linux-arm64.zip"
      sha256 "236b8d9e3b4b2768139b6cc91071c432dc2400fb26c9a2a15ef79acf36287023"
    end
    on_intel do
      url "https://github.com/cantti/tagselecta/releases/download/v2.0.0/tagselecta-linux-x64.zip"
      sha256 "447ce4d6559d139a2dd08ea1bea93c2daa437a0cf7f5d32597362cc203cdd760"
    end
  end

  def install
    bin.install "tagselecta"
  end

  test do
    system "#{bin}/tagselecta", "--version"
  end
end
