# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class PaladinPathways < Formula
  desc ""
  homepage ""
  url "file:///mnt/lustre/hcgs/anthonyw/local/brew/paladin-pathways-1.1.0.tar.gz"
  sha256 "0d7904bd03df1e39bbcdb919ae9e45e2aa6549db6fae1cfb1ca300199c989253"

  # depends_on "cmake" => :build

  def install
    libexec.install Dir["*"]
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test paladin-pathways`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
