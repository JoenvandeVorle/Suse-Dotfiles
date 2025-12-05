# Usage
We can use the `stow` package from GNU to create symlinks to these dotfiles locally. E.g. running:
```bash
stow hyprland -t ~/
```
From this repo will create a directory `~/.config/hypr/...` and fill it with symlinks leading to the files here.

## Screenshots
Copy the grimblast script under `/scripts` to your `/bin` folder for the screenshotting to work. See [source repo](https://github.com/hyprwm/contrib/tree/main/grimblast) for up to date version.