user=$(config user)
command=$(config command)
debug=$(config debug)

if test $debug -eq 1; then
  set -x;
fi

if test -z $user; then
  bash -c "${command}" || exit 1
else
  su --shell `which bash` --login -c "$command" $user || exit 1
fi

echo 'bash-command-done'

