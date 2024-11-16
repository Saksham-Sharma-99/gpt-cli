class GptCli < Formula
  desc 'A sample GPT CLI tool with pretty responses'
  homepage 'https://github.com/saksham-sharma-99/homebrew-gpt-cli'
  url 'https://github.com/Saksham-Sharma-99/homebrew-gpt-cli/releases/download/v1.0.0/gpt-cli-1.0.0.tar.gz'
  sha256 '26f5cdca038995405de239f7a7616c9d10f0803e9056c922f670ea9de7d4edea'

  depends_on 'node'

  def install
    bin.install 'bin/index.js' => 'gpt-cli'
    chmod '+x', bin / 'gpt-cli'
  end

  test do
    system "#{bin}/gpt-cli", '--help'
  end
end
