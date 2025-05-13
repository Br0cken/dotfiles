# Br0cken's dotfiles

My configuration. 
Kudos to @geerlingguy. I used [his configuration](https://github.com/geerlingguy/dotfiles) as a baseline. 

## Installation

Clone this repo to ~/.dotfiles and run

```bash
stow */
```

This will create symlinks for the configuration files to the .dotfiles directory.

To install a specific package, eg. tmux  use

```bash
stow tmux
```

To remove a package use

```bash
stow -D tmux
```

## License

MIT / BSD

