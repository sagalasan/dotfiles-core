#!/bin/bash

# Update font cache (if fontconfig is available)
which fc-cache >& /dev/null && fc-cache -fv ~/.local/share/fonts
