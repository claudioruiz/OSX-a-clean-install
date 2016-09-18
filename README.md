# Mac OS X - una instalación limpia 

Esta es mi receta para instalación limpia de OSX. Acá debieran estar tanto las apps que uso como también los programas básicos de una instalación limpia. En el fondo, es un gran recordatorio.

Lo bueno es que en el fondo esto facilita el proceso de hacer instalaciones limpias cada 6 meses, algo recomendable: mantiene el sistema limpio, rápido y seguro. 

## Install Software

Fonts
-----
[Mensch coding font](http://robey.lag.net/2010/06/21/mensch-font.html)
[Inconsolata] (https://github.com/google/fonts/tree/master/ofl/inconsolata)

#Homebrew

## Install Homebrew
```bash
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
```

## Install Homebrew extension Cask
```bash
brew install caskroom/cask/brew-cask
```

## Install common applications via Homebrew
```bash
brew install curl mosh tmux wget autoconf fontconfig gnupg lftp libtasn1 mutt-patched pkg-config tmux xapian automake freetype gnupg2 libassuan libtiff nagios protobuf tokyo-cabinet xvid bitlbee gd gnutls libevent libusb nagios-plugins pth tor xz bmon gdbm gpg-agent libffi libusb-compat nettle python tree youtube-dl brew-cask gettext gpgme libgcrypt libvo-aacenc notmuch readline urlview dirmngr glib irssi libgpg-error mobile-shell openssl s-lang vim ffmpeg gmime jpeg libksba multimarkdown pcre sqlite wget fish gmp lame libpng mutt pinentry talloc x264
```

## Install applications via Homebrew Cask
```bash
brew cask install 1password
brew cask install adobe-reader
brew cask install appcleaner
brew cask install bartender
brew cask install battery-guardian
brew cask install caffeine
brew cask install calibre
brew cask install cloak
brew cask install coyim
brew cask install chromium
brew cask install delibar
brew cask install dropbox
brew cask install firefox
brew cask install flux
brew cask install font-inconsolata
brew cask install google-chrome
brew cask install handbrake
brew cask install iterm2
brew cask install little-snitch
brew cask install mactex
brew cask install mojibar
brew cask install mumble
brew cask install mpv
brew cask install onyx
brew cask install owncloud
brew cask install plex-media-server
brew cask install ricochet
brew cask install skype
brew cask install spectacle
brew cask install steam
brew cask install syncthing
brew cask install syncthing-bar
brew cask install sublime-text3
brew cask install thunderbird  
brew cask install the-unarchiver
brew cask install torbrowser
brew cask install transmit
brew cask install viscosity
brew cask install vivaldi
brew cask install vlc
brew cask install xld
```

# OS X Preferences

```bash

#Show the ~/Library folder
chflags nohidden ~/Library

#Store screenshots in subfolder on desktop
mkdir ~/Desktop/Screenshots
defaults write com.apple.screencapture location ~/Desktop/Screenshots
```

Set hostname
------------
`sudo scutil --set HostName [name]`

# Sublime Text

Add Sublime Text CLI
--------------------

```bash
mkdir -p ~/bin && ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl
```

Install Package Control
-----------------------

Run `Sublime Text 3` and access the console via the `CTRL + ``` shortcut or the `View > Show Console` menu.

```
import urllib.request,os,hashlib; h = '7183a2d3e96f11eeadd761d777e62404' + 'e330c659d4bb41d3bdf022e94cab3cd0'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://sublime.wbond.net/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)
```

See https://sublime.wbond.net/installation for more information. Their site has a note that this install code will change for each new release, so it would be good to check once in a while.

Install Packages
----------------
[CoffeeScriptHaml](https://github.com/jisaacks/CoffeeScriptHaml)
auto-save
AutoSpell
DictionaryAutoComplete
DictionaryFreeWindow
Markdown Extended
MarkdownEditing
Monikai Extended
Monokai Gray
Package Control
Pandoc
WordCount

Install Soda Theme
----------------------
```bash
git clone git://github.com/buymeasoda/soda-theme.git ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/Theme\ -\ Soda
```

Settings
--------

**Sublime Text > Preferences > Settings - User**

```json
{
    "color_scheme": "Packages/Monokai Extended/Monokai Extended.tmTheme",
    "font_face": "Mensch",
    "font_size": 14,
    "ignored_packages":
    [
        "Markdown",
        "Vintage"
    ],
    "line_numbers": false,
    "word_wrap": true,
    "wrapWidth": 80,
}

```


![aww yeah](http://i.imgur.com/AmFax.gif)
