class Dotcodegen < Formula
  desc "Generate tests for your code using LLMs"
  homepage "https://github.com/ferrucc-io/dotcodegen"
  url "https://github.com/ferrucc-io/dotcodegen/archive/main.tar.gz"
  version "0.1.0"
  sha256 "25a9329d711d0ff3781c3e89592b4e3ad83f5eea21ef74c626549959dfc6e651"

  depends_on "ruby@3.3"

  def install
    system "gem", "build", "dotcodegen.gemspec"
    system "gem", "install", "dotcodegen-0.1.0.gem"
    bin.install "bin/run" => "codegen"
  end

  test do
    system "#{bin}/codegen", "--version"
  end
end