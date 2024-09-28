# dots

My personal configuration files for the following programs:

- [kitty](https://sw.kovidgoyal.net/kitty/): The fast, feature-rich, GPU based terminal emulator.
- [neovim](https://neovim.io/) A Vim-based text editor engineered for extensibility and usability, to encourage new applications and contributions.
- [zsh](https://zsh.sourceforge.io/) A shell designed for interactive use, although it is also a powerful scripting language.

## Pre-Requisites

This repo is designed for managing only the configuration files the programs, not for installing the programs themselves. So make sure to install your desired programs prior to using this repo.

Additionally, this repo relies on the following programs to manage configuration files:

- [Git](https://git-scm.com/) _(duh)_: A free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency.
- [GNU Make](https://www.gnu.org/software/make/): A tool which controls the generation of executables and other non-source files of a program from the program's source files.
- [GNU Stow](https://www.gnu.org/software/stow/): A symlink farm manager which takes distinct packages of software and/or data located in directories on the filesystem, and makes them appear to be installed in the same place.

## Usage

GNU Stow is used to symlink the contents of a program's directory to a target location where each program expects to find its own configuration files.

Although GNU Make is typically used to help compile programs from source, this repo uses `make` as a convenient way to run one or more `stow` commands.

> [!WARNING] GNU Stow will error out if there already exist configuration files for the targeted programs. It is recommended that you backup any important configuration files before deleting them from the filesystem so `stow` can work properly.

### Instructions

Clone the repo and change into the cloned directory.

### Install all configs

Use the `make` without any arguments to install all of the configuration files:

```bash dotfiles/
make # You could also use `make all`
```

### Install select configs

Invoke `make` with one or more "make targets" as arguments to install the configuration files for only those programs:

Example:

```bash dotfiles/
make zsh.conf nvim.conf
```

For a list of valid "make targets", see the [`Makefile`](./Makefile).

> [!NOTE] The make targets are named after the program they target with a suffix of `.conf`. This is because GNU Make will not run if it detects that a file with the same name as the target already exists in the directory. We can't simply name the make targets the same name as the subdirectories because then make would detect the directory as a file and not run the stow commands we need.
