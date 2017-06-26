# Documentation: http://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Transfuse < Formula
  desc "Merge transcriptome assemblies"
  homepage ""
  url "https://github.com/cboursnell/transfuse/releases/download/v0.5.0/transfuse-0.5.0-linux-x86_64.tar.gz"
  sha256 "24a1da052969b405f2e6381254e6a59a91c15f4d7ec79a41b5746c2651c02999"

  # depends_on "cmake" => :build

  def install
    bin.install "transfuse"
    libexec.install Dir["bin"]
    libexec.install Dir["lib"]
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test transfuse`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
