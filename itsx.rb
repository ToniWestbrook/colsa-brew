# Documentation: http://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Itsx < Formula
  desc ""
  homepage ""
  url "http://microbiology.se/sw/ITSx_1.0.11.tar.gz"
  sha256 "8f4f76fc9c43b61f4dd4cd8dc4e495e9687943e15515396583f7a757651d435e"

    depends_on "hmmer"
    depends_on "perl"

  def install
    inreplace "ITSx", "#!/usr/bin/perl", "#!/usr/bin/env perl"
    bin.install "ITSx"
    doc.install "README.txt"
    doc.install "license.txt"
    doc.install "ITSx User's Guide.pdf"
    libexec.install Dir["ITSx_db"]
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test itsx`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
