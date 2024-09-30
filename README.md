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
- [GNU Make](https://www.gnu.org/software/make/): A tool which controls the
generation of executables and other non-source files of a program from the
program's source files.
- [GNU Stow](https://www.gnu.org/software/stow/): A symlink farm manager which
takes distinct packages of software and/or data located in directories on the
filesystem, and makes them appear to be installed in the same place.

## Usage

Although GNU Make is typically used to help compile programs from source, this
repo uses `make` as a convenient way to run one or more `stow` commands.

GNU Stow is used to symlink the contents of a program's directory from this repo
to a target location where each program expects to find its own configuration
files.

### With no existing local dotfiles

#### Use all dotfiles

Invoke `make` without any arguments to link all of the configuration files:

```bash dotfiles/
make # You could also use `make all`
```

#### Use some dotfiles

Invoke `make` with the name of one or more program directories as arguments to
link the configuration files for only those programs:

Example:

```bash dotfiles/
make zsh nvim
```

### With existing local dotfiles

Additionally, this repo invokes `stow` with the `--adopt` and `--dotfiles`
options.

The `adopt` option will automatically move any existing configuration files it
encounters into the appropriate top-level subdirectory before creating the
symlinks.

If you already have existing configuration files locally, you have a few
ways of moving forward since everything in this repo is version controlled using
`git`:

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

    ```bash dotfiles/
    git add -A && git commit -m "Add configs to source control"
    ```

#### Combine dotfiles

1. Chose to either: [Use all dotfiles](#use-all-dotfiles) or [Use some
   dotfiles](#use-some-dotfiles).
1. Open your preferred mergetool, adjust the files as you see fit, then commit.

### TODO: Adding new program dotfiles to the repo
