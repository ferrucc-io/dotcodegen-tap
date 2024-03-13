class Dotcodegen < Formula
  desc "Generate tests for your code using LLMs"
  homepage "https://github.com/ferrucc-io/dotcodegen"
  url "https://github.com/ferrucc-io/dotcodegen/archive/main.tar.gz"
  version "0.1.5"
  sha256 "c140b97706cdd47b93710910fc76f70da70f1f921f225cd887616e1b1e408ef9"

  depends_on "ruby@3.3"

  def install
    system "gem", "build", "dotcodegen.gemspec"
    system "gem", "install", "dotcodegen-0.1.5.gem"
    bin.install "exe/codegen" => "codegen"
  end

  test do
    system "#{bin}/codegen", "--version"
  end
end