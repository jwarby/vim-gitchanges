# vim-gitchanges
> Display cached git diffs in a buffer when committing

![Example usage](gitchanges.gif)
## Installing

If using [pathogen.vim](https://github.com/tpope/vim-pathogen), simply copy and paste these commands:

```bash
cd ~/.vim/bundle
git clone git://github.com/jwarby/vim-gitchanges.git
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

