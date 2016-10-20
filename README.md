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
      plugin  => "bash",
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

## expect_stdout

This is optional parameter. Verify if command print something into stdout. This should be Perl5 regex string.

Example:

    $ sparrow plg run --param command="echo I AM OK" --param expect_stdout='I AM \S+'

Or via sparrowdo:


    task_run %(
      task    => "server uptime",
      plugin  => "bash",
      parameters => %(
        command   => 'uptime',
        debug     => 0,
        expect_stdout => '\d\d:\d\d:\d\d'
      )
    );
    

## debug

Set bash debug mode on. Default value is `0` ( do not set ).

# Author

[Alexey Melezhik](mailto:melezhik@gmail.com)

