# Other XDG paths
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
export XDG_STATE_HOME=${XDG_STATE_HOME:="$HOME/.local/state"}

# cleaning home directory
export ANDROID_USER_HOME="$XDG_DATA_HOME"/android                                        
export SSB_HOME="$XDG_DATA_HOME"/zoom
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export IPYTHONDIR="$XDG_CONFIG_HOME"/ipython
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME"/jupyter
export CONDARC="$XDG_CONFIG_HOME/conda/condarc"
export SCREENRC="$XDG_CONFIG_HOME"/screen/screenrc
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
export LESSHISTFILE="$XDG_STATE_HOME"/less/history

export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export NUGET_PACKAGES="$XDG_CACHE_HOME"/NuGetPackages
export _ZL_DATA="$XDG_DATA_HOME/zlua/.zlua"
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export MYPY_CACHE_DIR="$XDG_CACHE_HOME"/mypy
export WINIT_X11_SCALE_FACTOR=1
# export ICEAUTHORITY="$XDG_CACHE_HOME"/ICEauthority
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"
export ANSIBLE_HOME="${XDG_CONFIG_HOME}/ansible"
export ANSIBLE_CONFIG="${XDG_CONFIG_HOME}/ansible.cfg"
export ANSIBLE_GALAXY_CACHE_DIR="${XDG_CACHE_HOME}/ansible/galaxy_cache"
export RANDFILE="$XDG_DATA_HOME/rand"

# GTK4 app theme
# export GTK_THEME=Dracula
[[ -d ${XDG_CONFIG_HOME:-$HOME/.config}/gtk-3.0/settings.ini ]] && export GTK_THEME="$(grep 'gtk-theme-name' "${XDG_CONFIG_HOME:-$HOME/.config}/gtk-3.0/settings.ini" | sed 's/.*\s*=\s*//')"

# systemctl --user import-environment PATH

# Disable file
# export LESSHISTFILE=-
# #input method
# export GTK_IM_MODULE=fcitx
# export QT_IM_MODULE=fcitx
# export XMODIFIERS=@im=fcitx
export QT_QPA_PLATFORMTHEME=qt5ct

# fix duplicate command line if any
export LC_ALL=en_US.UTF-8

# zi home dir
export ZI_HOME_DIR="${ZDOTDIR}/.zi"
