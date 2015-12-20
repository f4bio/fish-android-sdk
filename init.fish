function init --on-event init_git
	if test -n "$ANDROID_HOME"

	else if test -d /opt/android-sdk
		set ANDROID_HOME /opt/android-sdk
	else if test -d $HOME/.android-sdk
		set ANDROID_HOME $HOME/.android-sdk
	else if test -d $HOME/.android-sdk-linux
		set ANDROID_HOME $HOME/.android-sdk-linux
	else
		echo "no android sdk directory found..."
	end

	set PATH $ANDROID_HOME/tools $PATH
	set PATH  $ANDROID_HOME/platform-tools $PATH
end
