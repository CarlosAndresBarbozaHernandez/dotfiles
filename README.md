# Dotfiles – Sway / Arch Linux

Configuración personal de Arch Linux enfocada en un entorno **minimalista, modular y eficiente**, usando **Sway (Wayland)** y herramientas TUI.

Este repositorio usa **enlaces simbólicos** para mantener las configuraciones versionadas sin duplicarlas.

---

## 🧠 Filosofía

- Minimalismo funcional
- Modularidad
- Wayland first
- TUIs antes que GUIs
- Todo bajo control manual

---

## 🖥️ Stack principal

- **WM:** Sway
- **Barra:** Waybar (Gruvbox Dark)
- **Terminal:** Ghostty
- **Editor:** Neovim (Lazy.nvim)
- **Launcher:** Wofi
- **File Manager:** Yazi
- **Shell:** Zsh

### Control desde Waybar
- 🔊 Audio / Mic → `wiremix`
- 🔵 Bluetooth → `bluetui`
- 🛜 Red → `nmtui`

Todo se abre en ventanas **flotantes y centradas**.

---

## 📁 Estructura

```text
config/
├── sway/
├── waybar/
├── ghostty/
├── nvim/
├── wofi/
├── yazi/
└── zsh/
