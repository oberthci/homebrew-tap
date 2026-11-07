class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.95"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.95/oberth-darwin-amd64"
      sha256 "d42d869ffad59c84dfa7780cfb88aa142a668c9bfbd808e726dd4c6f6a7ef08a"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.95/oberth-darwin-arm64"
      sha256 "9ba0d5a886d6a438b8cee9dc92ebf0300012fb7261d7fbdbce7b426b1f96132f"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.95/oberth-linux-amd64"
      sha256 "a14e15d3c3df3256343f2a4a63cdde6f559b44934df44b29e4cccea816087fc5"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.95/oberth-linux-arm64"
      sha256 "849cd2461b2d6e949521c27876aba424308883ab077eaafdb97680838b71b25b"
    end
  end

  def install
    binary = stable.url.split("/").last
    bin.install binary => "oberth"
  end

  test do
    system bin/"oberth", "version"
  end
end
