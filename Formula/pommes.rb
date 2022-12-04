class Pommes < Formula
  desc ""
  homepage "https://github.com/mlhartme/pommes"
  url "https://github.com/mlhartme/pommes/archive/refs/tags/pommes-3.4.0-alpha-2.tar.gz"
  sha256 "ce8a7caf4f9f189be11fc72bf8f2276eb37ab1c46d74b860b2e7d05568fb19ae"
  head "https://github.com/mlhartme/pommes.git"
  license ""

  depends_on "maven" => :build

  def install
    system "mvn -U clean package"
    bin.install "target/pommes"
  end

  test do
    system "false"
  end
end
