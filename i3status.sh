#!/usr/bin/env bash
i3status -c ~/.config/i3/i3status.conf | while read line; do ~/.config/i3/lolstat 2>/dev/null || exit 1; done

