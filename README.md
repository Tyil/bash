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
        user => 'root',
        command => 'uptime'
      )
    );



# Author

[Alexey Melezhik](mailto:melezhik@gmail.com)

