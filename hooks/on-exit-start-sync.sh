#! /bin/sh

LOCK_FILE=~/.config/task/autosync.lock

if [[ ! -f $LOCK_FILE ]]; then
    touch $LOCK_FILE

    # Only sync, if the backlog is not empty
    if [[ `cat ~/.config/task/backlog.data | wc -l` > 1 ]]; then
        task sync >> ~/.config/task/sync_hook.log
    fi

    rm $LOCK_FILE
fi

exit 0
