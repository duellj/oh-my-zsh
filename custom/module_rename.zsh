# Rename modules (filename and function names).
module_rename() {
  if (( $# == 0 ))
  then echo usage: module_rename old_name new_name; fi
  autoload zmv;
  zmv '*.*' "\$f:s/${1}/${2}";
  perl -pi -e "s/${1}/${2}/" *.*;
}
