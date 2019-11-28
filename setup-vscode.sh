#!/bin/bash

# Install extensions
while read ext; do
  code --install-extension $ext
done < vscode/extensions.txt
