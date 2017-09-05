# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class LockfileProgs < Formula
  desc ""
  homepage ""
  url "http://http.debian.net/debian/pool/main/l/lockfile-progs/lockfile-progs_0.1.17.tar.gz"
  sha256 "03fb05d25499532f497775b1747b61fa6beebf12d3bcc951e125349ae166c511"

  # depends_on "cmake" => :build

  def install
    system "make"
    bin.install Dir["bin/*"]

  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test lockfile-progs`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
