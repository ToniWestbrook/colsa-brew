# Documentation: http://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Kaks < Formula
  desc ""
  homepage ""
  url "https://downloads.sourceforge.net/project/kakscalculator2/KaKs_Calculator2.0.tar.gz?r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fkakscalculator2%2F%3Fsource%3Dtyp_redirect&ts=1493928714"
  sha256 "e2df719a2fecc549d8ddc4e6d8f5cfa4b248282dca319c1928eaf886d68ec3c5"

  # depends_on "cmake" => :build

  def install
    bin.install "bin/Linux/KaKs_Calculator"
    java = share/"java"
    java.install Dir["bin/Linux/*"]

  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test KaKs`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
