# RogAuracore Keybing

---

This script enable you to bind the `fn+arrow keys` to change the colour pattern for the ROG keyboard.

## Prerequisits:

- [rogauracore](https://github.com/wroberts/rogauracore)

## Usage:
```bash
╦═╗┌─┐┌─┐╔═╗┬ ┬┬─┐┌─┐┌─┐┌─┐┬─┐┌─┐
╠╦╝│ ││ ┬╠═╣│ │├┬┘├─┤│  │ │├┬┘├┤
╩╚═└─┘└─┘╩ ╩└─┘┴└─┴ ┴└─┘└─┘┴└─└─┘
┬┌─┌─┐┬ ┬┌┐ ┬┌┐┌┌┬┐
├┴┐├┤ └┬┘├┴┐││││ ││
┴ ┴└─┘ ┴ └─┘┴┘└┘─┴┘
┌┐ ┬ ┬  ┌┐ ┬  ┌─┐┌─┐┬┌─┌─┐┌┬┐┌─┐┬─┐┌┬┐┌─┐┌─┐┌┬┐┌─┐┬─┐
├┴┐└┬┘  ├┴┐│  ├─┤│  ├┴┐└─┐ │ │ │├┬┘││││  │ │ ││├┤ ├┬┘
└─┘ ┴   └─┘┴─┘┴ ┴└─┘┴ ┴└─┘ ┴ └─┘┴└─┴ ┴└─┘└─┘─┴┘└─┘┴└─
Invalid argument. Usage: keyboard.sh [next|prev]
```

I have been using this script in [Hyprland](https://github.com/hyprwm/Hyprland) wm

```bash
# Keyboard color pattern
bind=,XF86Launch3,exec, ~/.config/hypr/scripts/keyboard.sh next 
bind=,XF86Launch2,exec, ~/.config/hypr/scripts/keyboard.sh prev
```
> I have only added 9 patterns, but if you want more, you can customize them for yourself. 
> If you have any improvements for this script, feel free to provide a pull request.



## How to find which key I’m pressing?

You can use `wev` or `xev` depending on the WM you are using. Like I’m using wayland so I have used `wev`. If you are on Xorg or X11 you can use `xev` to find which key you are pressing.

I had liked `keyboard.sh` to the `~/.config/hypr/scripts/` using the symbolic links
```bash
ln -s $(realpath keyboard.sh) ~/.config/hypr/configs/
```
---
