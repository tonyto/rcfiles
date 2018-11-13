MY_PATH="`dirname \"$0\"`"              # relative
MY_PATH="`( cd \"$MY_PATH\" && pwd  )`"  # absolutized and normalized
if [ -z "$MY_PATH"  ] ; then
exit 1  # fail
fi
echo "-- symlinking tmux.conf"
ln -sf "${MY_PATH}/tmux.conf" ~/.tmux.conf
echo "-- symlinking vimrc"
ln -sf "${MY_PATH}/vim/vimrc" ~/.vimrc
echo "-- symlinking zshrc"
ln -sf "${MY_PATH}/zshrc" ~/.zshrc

echo "-- install complete --"
