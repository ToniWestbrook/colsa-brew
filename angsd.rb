# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Angsd < Formula
  desc ""
  homepage ""
  url "http://popgen.dk/software/download/angsd/angsd0.918.tar.gz"
  sha256 "9685687f2a55f44c681fc8ae9ce1afacc1dc904b8c676bbb728bf3397a49ea4a"

  # depends_on "cmake" => :build

  def install
    Dir.chdir "angsd"
    system "make"
    bin.install "angsd"
    libexec.install Dir["doc"]
    libexec.install Dir["R"]
    libexec.install Dir["scripts"]
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test angsd`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
