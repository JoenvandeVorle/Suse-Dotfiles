# Usage
We can use the `stow` package from GNU to create symlinks to these dotfiles locally. E.g. running:
```bash
stow hyprland -t ~/
```
From this repo will create a directory `~/.config/hypr/...` and fill it with symlinks leading to the files here.