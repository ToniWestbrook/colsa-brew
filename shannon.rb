# Documentation: http://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Shannon < Formula
  desc "RNA-Seq"
  homepage ""
  url "https://github.com/sreeramkannan/Shannon/archive/0.0.2.tar.gz"
  sha256 "b089778da922233f695e01e2d2b7dc05a6c2f9f2328fa793d163421e75cf44ce"

  # depends_on "cmake" => :build

  def install
    bin.install Dir["*.py"]
    bin.install_symlink "shannon.py" => "shannon"
    doc.install "manual.md"
    libexec.install Dir["Samples"]
    libexec.install Dir["testSuite"]
  end 

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test Shannon`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
