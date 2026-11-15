class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.23.2"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.23.2/oberth-darwin-amd64"
      sha256 "42d93bba7172e98de314af5a20d37ec5a5477e4daf109a320d5c5bb9b3226d41"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.23.2/oberth-darwin-arm64"
      sha256 "1a8d7f0bc47fb46212ab4703826028c0092e6818b6cd2ad570486765b7da89f8"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.23.2/oberth-linux-amd64"
      sha256 "477c769309826a8dd7189fff762579d18a0153a3cd9e0a66560add10c9c1eb30"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.23.2/oberth-linux-arm64"
      sha256 "bee2bc27edd808bcd0c965d72f7465756e08c7c54ab5d175eeca353acd7f176c"
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
