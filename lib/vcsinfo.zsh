# Use the following within your prompt
#   ${vcs_info_msg_0_}
#
# The style of vcs_info can be tweaked within a theme by modifying the output
# using zstyle.
#
# http://zsh.sourceforge.net/Doc/Release/User-Contributions.html#IDX2133
#

typeset -ga precmd_functions
autoload -Uz vcs_info

zstyle ':vcs_info:*' enable hg git bzr svn
zstyle ':vcs_info:*:*' formats "$ZSH_THEME_VCS_PROMPT"

# Git Config
zstyle ':vcs_info:git*:*' check-for-changes true
zstyle ':vcs_info:git*:*' unstagedstr "$ZSH_THEME_VCS_PROMPT_DIRTY"

# Mercurial Config
zstyle ':cvs_info:hg*:*' get-bookmarks true

zsh_vcsinfo_precmd() {
  vcs_info
}

vcs_prompt_info() {
  echo "${vcs_info_msg_0_}"
}

precmd_functions+='zsh_vcsinfo_precmd'
