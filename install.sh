#!/bin/bash

for file in *; do
    if [[ "$file" != "install.sh" && ! "$file" =~ ^\. ]]; then
        rm -rf "$HOME/.$file"
        ln -s "$PWD/$file" "$HOME/.$file"
        echo "Linked $file to $HOME/.$file"
    fi
done

echo "Installation complete!"
