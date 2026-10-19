class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.40"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.40/oberth-darwin-amd64"
      sha256 "ea7425e369736318546818744c3816613473269edbcbc366216222de6210b70a"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.40/oberth-darwin-arm64"
      sha256 "b62449e75c6c043978dd367072e53e9ab45094d83c0ac39b6a4aec63f45ede5e"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.40/oberth-linux-amd64"
      sha256 "0c03e60ce9cae37bdb040fe820ba46071c6fc089eb1b12633afb65faf45a1cf5"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.40/oberth-linux-arm64"
      sha256 "8a523e98cf12943f746713ce1498a05f9198ecba82471abcaa894e3e9ccc1720"
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
