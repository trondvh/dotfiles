#!/bin/bash

# Keep the computer awake while running
caffeinate -i &

# Run the update script
"{{ .chezmoi.sourceDir }}/dot_local/bin/update-brew.sh"

# Kill caffeinate when done
kill %1 