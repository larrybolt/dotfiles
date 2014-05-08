# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi
alias cppc="clang++ -std=c++11 -stdlib=libc++ -Weverything"
alias m="man tldr"

alias bookmarks="mvim ~/web/Projects/Blog/octopress-blog/source/_posts/2014-02-06-bookmarks.markdown"
