class Tagselecta < Formula
  desc "Vim-inspired tool for managing audio file metadata"
  homepage "https://cantti.github.io/tagselecta"
  version "3.0.1"
  license "GPL-3.0-only"

  on_linux do
    on_arm do
      url "https://github.com/cantti/tagselecta/releases/download/v#{version}/tagselecta-linux-arm64.zip"
      sha256 "9fb03e866bcd4c96854a1adeb80393b6af7157ecf825ced69b3b890bc346e695"
    end
    on_intel do
      url "https://github.com/cantti/tagselecta/releases/download/v#{version}/tagselecta-linux-x64.zip"
      sha256 "76e85bcbfe9c78af9cc99db78b31782ef1dfc7d9c49d6ee3c37371b35d4b8bcc"
    end
  end

  on_macos do
    on_arm do
      url "https://github.com/cantti/tagselecta/releases/download/v#{version}/tagselecta-osx-arm64.zip"
      sha256 "c9f60f29f54ea9fab361840219961610e32f7997501fadb101c8f5c5b95490ca"
    end
    on_intel do
      url "https://github.com/cantti/tagselecta/releases/download/v#{version}/tagselecta-osx-x64.zip"
      sha256 "617e0703bed991ec0c68b804cf89f48d32a73b7d3cabc3e57f0dd2b58488736b"
    end
  end

  def install
    bin.install "tagselecta"
  end

  test do
    system bin/"tagselecta", "--version"
  end
end
