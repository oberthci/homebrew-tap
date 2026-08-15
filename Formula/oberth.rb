class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.12.10"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.12.10/oberth-darwin-amd64"
      sha256 "05b88436248d9dc2dc56d8a21fbbb1545fc66a46bb24a83734ffcad00023749f"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.12.10/oberth-darwin-arm64"
      sha256 "8b7eee9f52b259726a8fef07d9f79b4a47a17cf82f119cece469c08727f75d60"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.12.10/oberth-linux-amd64"
      sha256 "db592f30489423ff8aa16185cddb55f1f6828494ab923525156418a0611c5028"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.12.10/oberth-linux-arm64"
      sha256 "bf692dbab840c689c894fcefee413bf97b81443dd9d85863dd77335b51e07b68"
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
