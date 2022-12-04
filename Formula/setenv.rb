class Setenv < Formula
  desc ""
  homepage "https://github.com/mlhartme/pommes"
  url "https://github.com/mlhartme/setenv/archive/refs/tags/setenv-1.0.2.tar.gz"
  sha256 "e435e0743ce47938a260ff51544482fed6cf1e729a293fb9e6c091fca31c6ee2"
  license "Apache-2.0"

  def install
    zsh_completion.install "src/main/resources/setenv.rc" => "_setenv"
    bash_completion.install "src/main/resources/setenv.rc" => "_setenv"
  end

  test do
    system "false"
  end
end
