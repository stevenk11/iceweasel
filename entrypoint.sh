export XMODIFIERS=@im=fcitx
export QT_IM_MODULE=fcitx
export GTK_IM_MODULE=fcitx
fcitx&
if [ -e /dev/snd ]; then
	exec apulse firefox "$@"
else
	exec firefox "$@"
fi
