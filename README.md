<div align="center">

# Monologue 🎙️

**A Lightweight 1-Key Developer Screencast Recorder for Linux & Wayland**

*All you need is quick talking-head walkthroughs. Drop OBS Studio's 1.2 GB bloat.*

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Platform: Linux](https://img.shields.io/badge/Platform-Linux%20Wayland-FCC624.svg?logo=linux&logoColor=black)](https://kernel.org)
[![Audio: PipeWire](https://img.shields.io/badge/Audio-PipeWire-brightgreen.svg)](https://pipewire.org)

</div>

---

## ⚡ Why Monologue?

OBS Studio is a powerful broadcasting suite with multi-scene mixing, stream keys, and hundreds of settings. But **95% of software engineers only use it for recording quick 2-minute feature walk-throughs, PR demos, bug reports, and Twitter/X tech monologues**.

For that, OBS is overkill:
- **1.2 GB+ memory and install footprint**
- **Complex scene configurations and audio routing setup**
- **Window capture stutters on Wayland**

**Monologue** replaces OBS with a zero-configuration, native Wayland screencast recorder powered by `wf-recorder` and PipeWire:
- **1-Key Toggle**: Press your shortcut to start recording; press it again to finish.
- **Auto Audio Sync**: Automatically detects your default PipeWire microphone.
- **Zero Friction Sharing**: The output MP4 is saved to `~/Videos/Monologues/` and **the file path is automatically copied to your clipboard**. Paste it directly into your terminal, Slack, or GitHub PR!

---

## 📦 Requirements

Monologue uses standard Linux tools:
```bash
# Ubuntu / Debian
sudo apt install wf-recorder ffmpeg pulseaudio-utils wl-clipboard

# Arch Linux
sudo pacman -S wf-recorder ffmpeg libpulse wl-clipboard

# Fedora
sudo dnf install wf-recorder ffmpeg pulseaudio-utils wl-clipboard
```

---

## 🚀 Installation

```bash
git clone https://github.com/apravint/monologue.git
cd monologue
chmod +x install.sh
sudo ./install.sh
```

---

## ⌨️ Setting Up Your 1-Key Shortcut

### Hyprland (`~/.config/hypr/hyprland.conf`)
```ini
bind = $mainMod CTRL, M, exec, monologue
# or
bind = ALT SHIFT, Print, exec, monologue
```

### Sway (`~/.config/sway/config`)
```ini
bindsym $mod+Ctrl+m exec monologue
```

### GNOME
Go to **Settings ➔ Keyboard ➔ Custom Shortcuts**, and map `monologue` to `Super + Ctrl + M`.

---

## 🛠️ CLI Usage

```bash
# Start recording (or stop if already running)
monologue

# Set a custom output folder
MONOLOGUE_DIR="$HOME/Desktop/Recordings" monologue
```

---

## ⚖️ License
MIT License © 2026 Ayyappa Pravin. Inspired by DHH's Omarchy monologue concept.
