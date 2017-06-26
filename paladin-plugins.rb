# Documentation: http://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class PaladinPlugins < Formula
  desc ""
  homepage ""
  url "https://github.com/twestbrookunh/paladin-plugins/archive/v1.0.2.tar.gz"
  sha256 "8552cdeee9a6d7018ba4b36c68882c5206d43f5e408d66ff48dfe6a405831afc"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    # Remove unrecognized options if warned by configure
    #system "./configure", "--disable-debug",
    #                      "--disable-dependency-tracking",
    #                      "--disable-silent-rules",
    #                      "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    #system "make", "install" # if this fails, try separate make/make install steps
    #pkgshare.install ["paladin-plugins.py", "plugins"] 
    bin.install ["paladin-plugins.py", "plugins"]
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    # 
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test paladin-plugins`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
