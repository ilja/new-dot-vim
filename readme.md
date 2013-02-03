# Yet another .vimrc

## Adding plugins

```bash
git submodule add https://github.com/tpope/vim-fugitive.git bundle/fugitive
```

## Initialize and update plugins

```bash
git submodule init
git submodule update
```

Update all submodules:

```bash
git submodule foreach git pull origin master
```