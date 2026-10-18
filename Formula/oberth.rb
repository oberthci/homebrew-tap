class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.36"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.36/oberth-darwin-amd64"
      sha256 "5e0726bb5ad49cf39a672d8ac62187cef15bae69bb719ea6d4678c06615e71f9"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.36/oberth-darwin-arm64"
      sha256 "9b53d205398a903d2cb7d158dedd018090928ec837b2b1333abefc0e562d423a"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.36/oberth-linux-amd64"
      sha256 "edfd43b8c6d4906fedb354eeffeacf1e61a00b1d29edc36e8c45a7f7bf0c4270"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.36/oberth-linux-arm64"
      sha256 "1917948d2dec9d8b2c149de1480eb25bf04f9ff7608395cfcf1aa6853034dfce"
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
