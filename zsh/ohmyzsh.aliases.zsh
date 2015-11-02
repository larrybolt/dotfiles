# Overwrites for ohmyzsh or ohmyzsh plugins

alias -g PFS='"$(pfs)"'
# cat PFS will display content of current file selected in finder

# http://zsh.sourceforge.net/Intro/intro_8.html
# Mikachu@freenode:
#  you could do alias -g PFS='"$(pfs)"'
#  or you could make a widget that does whatever your pfs function does
#  then you can simply insert the string directly into the edit buffer
#  for example foo() { LBUFFER+="whatever blabla" }; zle -N foo; bindkey whatever foo
#  if you want to use 'pfs' as both a widget function and a normal
#  function, you can do if zle; then (widget stuff); else; (normal stuff); fi
#  that's possibly silly, you can just call the widget function _pfs_widget or so instead