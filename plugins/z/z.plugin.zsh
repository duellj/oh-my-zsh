if [ -f /usr/local/etc/profile.d/z.sh ]; then
  . /usr/local/etc/profile.d/z.sh
  function precmd () {
    _z --add "$(pwd -P)"
  }
fi
