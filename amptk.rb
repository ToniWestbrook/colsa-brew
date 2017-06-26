# Documentation: http://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Amptk < Formula
  desc ""
  homepage ""
  url "https://github.com/nextgenusfs/amptk/archive/0.9.2.tar.gz"
  sha256 "868091ab7824bf71f8fd920746f3eda300eef07445caf75d95c54b2117c32c18"

  # depends_on "cmake" => :build

  def install
    bin.install Dir["bin/*"]
    bin.install ["amptk", "amptk.py", "lib"]
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test amptk`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
