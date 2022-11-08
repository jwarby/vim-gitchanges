# vim-gitchanges
> Display cached git diffs in a buffer when committing

![Example usage](gitchanges.gif)
## Installing

Install using your favorite package manager, or use Vim/neovim's built-in package support:

### neovim

```bash
mkdir -p ~/.config/nvim/pack/jwarby/start
git clone git@github.com:jwarby/vim-gitchanges ~/.config/nvim/pack/jwarby/start/vim-gitchanges
```

### Vim

```bash
mkdir -p ~/.vim/pack/jwarby/start
git clone git@github.com:jwarby/vim-gitchanges ~/.vim/pack/jwarby/start/vim-gitchanges
```

## Usage

By default the plugin will open cached git changes in a new buffer when committing (assuming your `$EDITOR` is set to `vim`).

Changes can be displayed manually at any point by calling GitChangesOpen:

`:GitChangesOpen`

and can be closed using:

`:GitChangesClose`

## Options

### g:gitchanges_auto_open_on_commit

Set this variable to 0 in your `vimrc` file to disable automatic showing of changes when committing.

`let g:gitchanges_auto_open_on_commit = 0`.

If not set, or set to anything other than 0, changes will automatically be shown when committing.

## Roadmap

- Figure out a better way of determining what the user is currently do (ie creating a new commit, amending an existing commit, neither, etc),
and use `git diff {,--cached}` appropriately.

