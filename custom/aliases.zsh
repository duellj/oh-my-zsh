# Always default to mvim
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias vi='vim'
alias vimdiff='vim -d'

# Imports from .profile
export EDITOR='/Applications/MacVim.app/Contents/MacOS/Vim -f'
export SVN_EDITOR="vim --noplugin"

# now some handy stuff
alias l='ls'
alias la='ls -a'
alias ll='ls -lh'
alias lll='ll|less'
alias llc='echo Total number of files `ll | wc -l` in `pwd`'

alias cdr='cd `git root`'
alias cdp='cd `git root`/public'

alias dr='drush'
alias dca='drush cc all'

# Fix mistypes
alias gi='git status'

# get confirmation on these commands
alias cp='cp -i'
alias rm='rm -i'
alias mv='mv -i'

# clear tty
alias c='clear'

# show man page m command or args command
alias m='man $*'

# Nice man page output default is 'more -s!'
# export PAGER=vimpager
# alias less=$PAGER
export LESS="-iMSx4 -FXR"

# Less Colors for Man Pages
export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

# Ctags
# Build ctags for drupal projects
alias dctags="ctags --langmap=php:.install.inc.module.theme.php.profile.test --php-kinds=cdfi --languages=php --recurse"

# nginx
alias nginx_start='launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist'
alias nginx_stop='launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist'
alias nginx_restart='nginx_stop; nginx_start;' 

# php-fpm
alias fpm_start='launchctl load -w ~/Library/LaunchAgents/homebrew-php.josegonzalez.php53.plist'
alias fpm_stop='killall php-fpm; launchctl unload -w ~/Library/LaunchAgents/homebrew-php.josegonzalez.php53.plist'
alias fpm_restart='fpm_stop; fpm_start'

# solr
alias solr-start='solr /usr/local/etc/solr/drupal/solr'

# grc!!
source "`brew --prefix grc`/etc/grc.bashrc"

# Tmux
alias tmux="TERM=screen-256color-bce tmux"

# Z
. `brew --prefix`/etc/profile.d/z.sh

########################################################################################
# php-version (activate default PHP version and autocompletion)
# PHP_HOME                      => should reflect location of compiled PHP versions
# PHPVERSION_DISABLE_COMPLETE=1 => to disable shell completion
########################################################################################
export PHPVERSIONDISABLE_COMPLETE="1"
export PHP_VERSIONS="/usr/local/Cellar/"

[ -f $(brew --prefix php-version)/php-version.sh ] && source $(brew --prefix php-version)/php-version.sh && php-version php53/5.3.14 > /dev/null
