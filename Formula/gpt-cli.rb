class GptCli < Formula
  desc 'A sample GPT CLI tool with pretty responses'
  homepage 'https://github.com/saksham-sharma-99/gpt-cli'
  url 'https://github.com/saksham-sharma-99/gpt-cli/archive/v1.0.0.tar.gz'
  sha256 '9ecec3744f1ecccea227a5ae510c6d211aabec4f8d8dfbf5a38af1b2'

  depends_on 'node'

  def install
    bin.install 'bin/index.js' => 'gpt-cli'
    chmod '+x', bin / 'gpt-cli'
  end

  test do
    system "#{bin}/gpt-cli", '--help'
  end
end
