#! /bin/sh

LOCK_FILE=~/.config/task/autosync.lock

# Only sync, if the backlog is not empty
if [[ `cat ~/.config/task/backlog.data | wc -l` > 1 ]]; then
    task sync >> ~/.config/task/sync_hook.log
fi

exit 0
