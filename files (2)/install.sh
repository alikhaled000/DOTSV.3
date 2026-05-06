#!/bin/bash
echo "Installing Ghostty dotfiles..."

# Copy main config
cp config.ghostty ~/.config/ghostty/config.ghostty
echo "✅ Ghostty config installed"

# Copy matugen template
cp ghostty-colors.conf ~/.config/matugen/templates/ghostty-colors.conf
echo "✅ Matugen template installed"

# Add config-file line to ghostty config if not already there
if ! grep -q "colors-matugen.conf" ~/.config/ghostty/config.ghostty; then
    echo "config-file = ~/.config/ghostty/colors-matugen.conf" >> ~/.config/ghostty/config.ghostty
    echo "✅ colors-matugen.conf include added to Ghostty config"
else
    echo "⏭️  colors-matugen.conf already included"
fi

# Add ghostty to matugen config if not already there
if ! grep -q "templates.ghostty" ~/.config/matugen/config.toml; then
    cat >> ~/.config/matugen/config.toml << 'TOML'

[templates.ghostty]
input_path = '~/.config/matugen/templates/ghostty-colors.conf'
output_path = '~/.config/ghostty/colors-matugen.conf'
post_hook = 'kill -USR1 $(pgrep ghostty) 2>/dev/null || true'
TOML
    echo "✅ Matugen config updated"
else
    echo "⏭️  Matugen config already has ghostty entry"
fi

# Install FiraCode Nerd Font if not installed
if ! fc-list | grep -q "FiraCode Nerd Font"; then
    echo "Installing FiraCode Nerd Font..."
    mkdir -p ~/.local/share/fonts/FiraCode
    wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FiraCode.zip -O /tmp/FiraCode.zip
    unzip /tmp/FiraCode.zip -d ~/.local/share/fonts/FiraCode
    fc-cache -fv
    echo "✅ FiraCode Nerd Font installed"
else
    echo "⏭️  FiraCode Nerd Font already installed"
fi

# Generate colors now
echo "Generating colors from wallpaper..."
matugen image ~/.config/ml4w/wallpapers/default.jpg --mode dark
echo "✅ Colors generated"

echo ""
echo "✅ All done! Please restart Ghostty now."
