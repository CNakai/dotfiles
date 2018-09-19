#! /bin/sh

sudo pacman -Syuu

yaourt -S --needed --noconfirm pacaur dropbox

dropbox &>/dev/null & disown

read -n 1 -s -r -p "When dropbox is done, press any key to continue..."

sudo pacman -S --noconfirm --needed \
     alsaplayer \
     arc-gtk-theme \
     arc-icon-theme \
     aspell-en \
     bash-completion \
     cmake \
     emacs \
     evince \
     firefox \
     flashplugin \
     git \
     jdk8-openjdk \
     nodejs \
     npm \
     pa-applet \
     pavucontrol \
     postgresql \
     python \
     python-cachecontrol \
     python-colorama \
     python-distlib \
     python-distro \
     python-html5lib \
     python-lockfile \
     python-msgpack \
     python-pip \
     python-progress \
     python-pytoml \
     python-retrying \
     python-webencodings \
     texlive-bibtexextra \
     texlive-core \
     texlive-formatsextra \
     texlive-games \
     texlive-humanities \
     texlive-latexextra \
     texlive-pstricks \
     texlive-publishers \
     texlive-science \
     tk \
     ttf-fira-mono \
     ttf-hack \
     ttf-hack \
     unzip \
     xclip \
     zip \
     zsh

pacaur -S --needed --noconfirm \
       puddletag \
       ttf-everson-mono 

# Get access to all those new fonts
fc-cache -fv

# Set up dropbox symlinks
rm -rf .bash_profile .bashrc .emacs.d .i3 .profile .urxvt .xinitrc .Xmodmap .Xresources .zshrc

mkdir .emacs.d

ln -s ~/Dropbox/.bash_profile ~/.bash_profile
ln -s ~/Dropbox/.bashrc ~/.bashrc
ln -s ~/Dropbox/.emacs.d/init.el ~/.emacs.d/init.el
ln -s ~/Dropbox/.emacs.d/init ~/.emacs.d/init
ln -s ~/Dropbox/.i3 ~/.i3
ln -s ~/Dropbox/.profile ~/.profile
ln -s ~/Dropbox/.urxvt ~/.urxvt
ln -s ~/Dropbox/.xinitrc ~/.xinitrc
ln -s ~/Dropbox/.Xmodmap ~/.Xmodmap
ln -s ~/Dropbox/.Xresources ~/.Xresources
ln -s ~/Dropbox/.zshrc ~/.zshrc

git config --global user.name "Colter Nakai McAddis"
git config --global user.email cnm62@nau.edu
 
ssh-keygen -t ed25519 -b 2048 -C "cnm62@nau.edu"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/is_ed25519

echo "Select Adapta-Maia and Arc in lxappearance"
read -n 1 -s -r -p "press any key to open lxappearance"
lxappearance

echo "Just close emacs when it's done updating"
read -n 1 -s -r -p "press any key to open emacs"
emacs

xclip -selection clip < .ssh/id_ed25519.pub

echo "Do the following in Firefox:"
echo "\tadd the ssh key in the clipboard on github & bitbucket"
echo "\tadd VimVixen"
echo "\tadd LastPass"
echo "\tadd adBlockPlus"
echo "\tcheck restore previous session"
echo "\tdisable password remembering"
read -n 1 -s -r -p "press any key to open firefox"
firefox

echo "Change the default shell to zsh for yourself and root"
chsh
sudo chsh

echo "Restarting the computer!"
sudo shutdown -r 10
