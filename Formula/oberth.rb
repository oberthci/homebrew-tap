class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.77"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.77/oberth-darwin-amd64"
      sha256 "f476fd472f296870fa0bb82da5cec6cb5c4563b6f8304bef14876ed8269ada98"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.77/oberth-darwin-arm64"
      sha256 "1eabb660dc0e01f51e473231aa607a751cb1ec48e4c6156ef49143cf536c73a5"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.77/oberth-linux-amd64"
      sha256 "28a85e4798b0e14bd7226d0bf102015f0bf54860b48301776870d754f98c7ca3"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.77/oberth-linux-arm64"
      sha256 "7e59774adc5d7b8bfd5b2b7c4f5b1aa7e82f0872e73d5fba99baffc22d4317c4"
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
