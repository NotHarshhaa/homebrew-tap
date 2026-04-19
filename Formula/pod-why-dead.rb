class PodWhyDead < Formula
  desc "One command. Full death story of any Kubernetes pod."
  homepage "https://github.com/NotHarshhaa/pod-why-dead"
  url "https://github.com/NotHarshhaa/pod-why-dead/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "PLACEHOLDER_SHA256"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system bin/"pod-why-dead", "--help"
  end
end
