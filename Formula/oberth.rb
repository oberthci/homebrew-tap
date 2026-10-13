class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.16"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.16/oberth-darwin-amd64"
      sha256 "d32bb17278a203a798ceb7ff17f7f29176418298afc3bc26bf8f38ac2dfad948"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.16/oberth-darwin-arm64"
      sha256 "598d6716f5eac33bc5f72b3ec416a588ca42f992540157ef08ee832aa1f2df0a"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.16/oberth-linux-amd64"
      sha256 "323bede2431b8fa3196c800d9b162d39ec70a5ce73d24cfa87f3efbdff653f08"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.16/oberth-linux-arm64"
      sha256 "e98a35d6000e2c764e746de398d9ca31808c83a01c8b89454bf2ce424b9fb569"
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
