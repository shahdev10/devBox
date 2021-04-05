# .bashrc

if [ -f ~/.bash_aliases_common ]; then
	. ~/.bash_aliases_common
fi

rsyncRestore() {
    /usr/bin/rsync -v -m -rlpt --stats --delete --exclude-from=.RSYNC_EXCLUDE /Volumes/WD\ 400G\ ExF/ArchiveData /Users/Shared
    /usr/bin/rsync -v -m -rlpt --stats --delete --exclude-from=.RSYNC_EXCLUDE /Volumes/WD\ 400G\ ExF/Archive /Users/Shared
}

# TODO ssh
