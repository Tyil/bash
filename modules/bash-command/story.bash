user=$(config user)
command=$(config command)
debug=$(config debug)
envvars=$(story_var envvars)

if test $debug -eq 1; then
  set -x;
fi

#if  test ! -z "${envvars}"; then
#  echo $envvars
#fi

if test -z $user; then
  bash -c "${envvars} ${command}" || exit 1
else

  if [[ $os == alpine ]]; then
    su -s `which bash` -l -c "${envvars} ${command}" $user || exit 1
  else
    su --shell `which bash` --login -c "${envvars} ${command}" $user || exit 1
  fi
fi


