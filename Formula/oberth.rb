class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.22.1"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.22.1/oberth-darwin-amd64"
      sha256 "92ff0db2e246e58017de99b23d48e2f4389ab705e6ca581fb632e7e4a6924bd6"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.22.1/oberth-darwin-arm64"
      sha256 "924107c6fb9b9c34bd05c09bcaf0a452a1a8bc2ac501606b02c36846bde56dd1"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.22.1/oberth-linux-amd64"
      sha256 "22f7027f9bfad3be753911a9f0d4b7a612c121f9ccb150018f9a17302ab30642"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.22.1/oberth-linux-arm64"
      sha256 "829b36a008119e64b009b02f7eb6f021c522abc491aecb25974a54075de75b16"
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
