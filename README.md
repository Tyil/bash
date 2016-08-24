# SYNOPSIS

Execute bash commands

# INSTALL

    $ sparrow plg install bash

# USAGE

## Manually

    $ sparrow plg run bash --param user=foo --param command="'echo hello world'"


## With sparrowdo

    $ cat sparrowfile


    task_run %(
      task    => "server uptime",
      plugin  => "bash-command",
      parameters => %(
        user      => 'root',
        command   => 'uptime',
        debug     => 1,
      )
    );


# Parameters

## user

A user to execute a command. No default value. Optional.


## command

A command to be executed. No default value. Obligatory.


## debug

Set bash debug mode on. Default value is `0` ( do not set ).

# Author

[Alexey Melezhik](mailto:melezhik@gmail.com)

