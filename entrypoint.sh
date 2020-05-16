startibus
if [ -e /dev/snd ]; then
	exec apulse firefox "$@"
else
	exec firefox "$@"
fi
