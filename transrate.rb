# Documentation: http://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Transrate < Formula
  desc ""
  homepage ""
  url "https://bintray.com/artifact/download/blahah/generic/transrate-1.0.3-linux-x86_64.tar.gz"
  sha256 "68d034ecd7012f1d3d505a2edd820c1155cd8b64d2acbf2ac833f30d3800141b"

  # depends_on "cmake" => :build

  def install
    bin.install "transrate"
    libexec.install Dir["bin"]
    libexec.install Dir["lib"]
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test transrate`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
