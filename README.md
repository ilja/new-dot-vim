# Yet another .vimrc

## Adding plugins

```bash
git submodule add https://github.com/tpope/vim-fugitive.git bundle/fugitive
```

### Command-T specific

Switch to system ruby
```bash
rbenv global system

```

Build extension

```bash
cd bundle/command-t
rake make
```

## Initialize and update plugins

```bash
git submodule init
git submodule update
```

Update all submodules: git submodule foreach git pull
