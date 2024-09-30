# dots

Configuration files for the following programs:

- [kitty](https://sw.kovidgoyal.net/kitty/): The fast, feature-rich, GPU based
terminal emulator.
- [neovim](https://neovim.io/) A Vim-based text editor engineered for
extensibility and usability, to encourage new applications and contributions.
- [zsh](https://zsh.sourceforge.io/) A shell designed for interactive use,
although it is also a powerful scripting language.

## Pre-Requisites

This repo is designed for managing only the configuration files the programs,
not for installing the programs themselves. So make sure to install your
desired programs prior to using this repo.

This repo relies on the following programs to manage configuration
files:

- [Git](https://git-scm.com/) _(duh)_: A free and open source distributed
version control system designed to handle everything from small to very large
projects with speed and efficiency.
- [GNU Stow](https://www.gnu.org/software/stow/): A symlink farm manager which
takes distinct packages of software and/or data located in directories on the
filesystem, and makes them appear to be installed in the same place.

## Usage

GNU Stow is used to symlink the contents of a program's directory from this repo
to a target location where each program expects to find its own configuration
files.

> [!IMPORTANT]
> This repo automatically prepends the `--adopt` and `--dotfiles` flags when you
> invoke `stow` within the directory.
>
> The `--adopt` flag will automatically overwrite the repo's configuration files
> with any conflicting configuration files it encounters before creating
> symlinks.
> 
> The `--dotfiles` flag will automatically replace the string "dot-" with a "."
> character for all file and directory names in this repo. This way you don't have
> to worry about whether the visibility of your files or directories when viewing
> them in your terminal or file explorer.
> 
> See the [`.stowrc`](./.stowrc) file to view or edit the options and flags that
> will be automatically prepended when `stow` is called within the repo.

### With no existing local dotfiles

#### Use all dotfiles

Invoke `stow` without any arguments to link all of the configuration files:

```bash dotfiles/
stow
```

#### Use some dotfiles

Invoke `stow` with the name of one or more program directories as arguments to
link the configuration files for only those programs:

Example:

```bash dotfiles/
stow zsh nvim
```

### With existing local dotfiles

If you already have existing configuration files locally, you have a few
ways of moving forward since everything in this repo is version controlled:

1. Use the repo's dotfiles
1. Use your dotfiles
1. Combine dotfiles

#### Use the repo dotfiles

1. Chose to either: [Use all dotfiles](#use-all-dotfiles) or [Use some
   dotfiles](#use-some-dotfiles).
1. Discard all unstaged changes:

    ```bash dotfiles/
    git restore . 
    ```

#### Use your dotfiles

1. Chose to either: [Use all dotfiles](#use-all-dotfiles) or [Use some
   dotfiles](#use-some-dotfiles).
1. Commit all changes:

  ```bash
  dotfiles/ $ git add -A && git commit -m "Add configs to source control"
  ```

#### Combine dotfiles

1. Chose to either: [Use all dotfiles](#use-all-dotfiles) or [Use some
   dotfiles](#use-some-dotfiles).
1. Open your preferred merge tool, adjust the files as you see fit, then commit.

### Adding new program dotfiles to the repo

> [!WARNING]
> The examples below show how I would add my Neovim configuration files to the
> repo, if they were not already included. **Be sure to replace `nvim` with the
> name of the program whose configuration files you want to add to the repo!**

1. Create a new "stow package", which is just a top-level directory
named after the program whose dotfiles you wish to add to the repo:

  ```bash dotfiles
  mkdir nvim
  ```

  > [!NOTE]
  > I typically use the same name that appears under the my user's `.config`
  > directory, but you can use the full name of the program if you want e.g.,
  > `neovim` instead of `nvim`.

1. Recreate the directory tree that leads to your program's dotfiles under your
newly created stow package directory relative to your `$HOME` path:

  Since I use the default `$HOME/.config/` for my configuration files, then all
  you would have to do is:

  ```bash dotfiles/
  mkdir nvim/dot-config
  ```

  > [!TIP]
  > Remember that `stow` will get called with the `--dotfiles` flag which is why
  > I named the sub-directory `dot-config` instead of `.config`. See
  > [Usage](#usage).

1. Move your existing configuration directory into the repo:

  ```bash dotfiles/
  mv $HOME/.config/nvim ./nvim/dot-config
  ```

1. Run the stow command with the name of your new package:

  ```bash dotfiles/
  stow nvim
  ```

1. Don't forget to commit your changes:

  ```bash dotfiles/
  git add -A && git commit -m 'Add nvim configs'
  ```
