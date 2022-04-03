# Maintainer: Ryan Bruno <ryan@rbruno.com>
pkgname=base.ryan
pkgver=0.0.19
pkgrel=15
pkgdesc=''
arch=('any')
url='https://github.com/RyanBruno/TheRepository'
license=('GPL')
install='mariadb.install'
source=(pacman.ryan pacman.conf.ryan
    ryan-trusted ryan.gpg
    nginx.conf.ryan nginx.ryan.service nginx.ryan
    postfix.ryan postfix.ryan.service master.cf main.cf virtual aliases
    calcurse.ryan calcurse-caldav.ryan conf keys config
    grab
    ssh.ryan ssh_config.ryan sshd_config.ryan sshd.ryan.service authorized_keys
    repo-add.ryan
    muttrc.ryan mutt.ryan
    lock
    smartd.conf.ryan smartd.ryan.service
    xinitrc.ryan xinit.ryan startx.ryan
    dovecot.conf.ryan dovecot.ryan.service dovecot.ryan.socket
    #cgitrc about-formatting.sh
    geth.ryan.service geth-dev.ryan.service
    bash.ryan bash.bashrc.ryan profile.ryan
    vim.ryan vimrc.ryan
    wg-quick.ryan wg-quick.ryan@.service template.overlay01.conf.ryan
    25-wireless-dhcp.network
    hosts
    ipfs.ryan ipfs.ryan.service
    zram-generator.conf
    gitunpack.sh gitunpack.timer gitunpack.service
    config.ryan radicale.ryan.service)
depends=(
    # Arch Linux Base
    'base'
    # Linux Kernel
    'linux'
    'linux-firmware'
    # Boot Loader
    'grub'
    'efibootmgr'
    'lvm2'
    # makepkg Development
    'fakeroot'
    'binutils'
    'patch'
    # Services
    ## SSH
    'openssh'
    ## Http
    'nginx-mainline'
    #'apache'
    ## Email
    'postfix'
    'msmtp'
    'dovecot'
    ## Networking
    'wireguard-tools'
    ## Calendar
    'radicale'
    ## Ethereum
    'go-ethereum'
    ## Monitoring
    'smartmontools' 's-nail'
    # Service Applications
    ## Project Hosting
    #'cgit'
    # Command Line Tools
    'vim'
    'git'
    'mutt'
    'calcurse' 'python-httplib2' 'python-pyparsing'
    'ffmpeg' 'i3lock'
    'xcompmgr'
    'man-db'
    'man-pages'
    # X Server
    'xorg-server'
    'xorg-xinit'
    ## X Tools
    'xwallpaper'
    'xorg-xsetroot'
    # X Desktop Environment
    #'dwm.ryan'
    #'st.ryan'
    # X Fonts
    'noto-fonts'
    # GUI Applications
    ## gimp
    'gimp'
    ## Audio
    'pavucontrol'
    ## Web
    'firefox'
    ## Finance
    'gnucash'
    # Gotta have a SQL Server
    'mariadb' 'mysql-workbench' 'gnome-keyring'
    # Not Orginized
    'pass'
    'syncthing'
    'tree'
    'htop'
    'make'
    'nodejs'
    'npm'
    'texlive-core'
    'tmux'
    'zram-generator'
    'go-ipfs'
)
_npmDeps="
    eslint
    eslint-plugin-vue
    eslint-config-eslint
    eslint-webpack-plugin
    html-webpack-plugin
    uuid
    vue@next
    vue-loader@next
    vue-router@4
    vue-template-compiler
    vue-google-autocomplete
    webpack
    webpack-cli
"

#depends=('base'
#         # Configured replacements
#         'bash.ryan' 'vim.ryan' 'pacman.ryan' 'wg-overlay.ryan' 'xinit.ryan'
#         'ssh.ryan' 'pacman-key.ryan' 'mutt.ryan'
#         # Build Tools
##         'repo-add.ryan'
#         # xorg
##         'xinit.ryan'
#         # X Tools
#         'lock' 'grab'
#         # HTTP
#         'nginx.ryan' 'apache.ryan' 'cgit.ryan'
#         # Email
#         'dovecot.ryan' 'postfix.ryan' 'logwatch' 'smartd.ryan'
#         # caldav
#         'radicale.ryan' 'calcurse.ryan'
#)

package() {
    mkdir -p $pkgdir/usr/bin
    mkdir -p $pkgdir/usr/lib/ssh.ryan
    mkdir -p $pkgdir/usr/lib/systemd/system/
    #mkdir -p $pkgdir/usr/lib/cgit/filters.ryan/html-converters/
    mkdir -p $pkgdir/usr/lib/wg-overlay.ryan/
    mkdir -p $pkgdir/usr/lib/node_modules/
    mkdir -p $pkgdir/usr/share/pacman/keyrings
    mkdir -p $pkgdir/etc/calcurse.ryan/caldav
    mkdir -p $pkgdir/etc/calcurse.ryan/hooks
    mkdir -p $pkgdir/etc/dovecot/
    mkdir -p $pkgdir/etc/mutt/
    mkdir -p $pkgdir/etc/X11/xinit
    mkdir -p $pkgdir/etc/ssh
    mkdir -p $pkgdir/etc/radicale/
    mkdir -p $pkgdir/etc/nginx/
    mkdir -p $pkgdir/etc/postfix.ryan
    mkdir -p $pkgdir/etc/systemd/network
    mkdir -p $pkgdir/usr/lib/systemd/system/multi-user.target.wants/
    mkdir -p $pkgdir/usr/lib/systemd/system/timers.target.wants/

    install bash.ryan $pkgdir/usr/bin/bash.ryan
    install bash.bashrc.ryan $pkgdir/etc/bash.bashrc.ryan
    install profile.ryan $pkgdir/etc/profile.ryan

    install calcurse.ryan $pkgdir/usr/bin/calcurse.ryan
    install calcurse-caldav.ryan $pkgdir/usr/bin/calcurse-caldav.ryan
    install conf $pkgdir/etc/calcurse.ryan/conf
    install keys $pkgdir/etc/calcurse.ryan/keys
    install config $pkgdir/etc/calcurse.ryan/caldav/config

    #install cgitrc $pkgdir/etc/cgitrc
    #install about-formatting.sh $pkgdir/usr/lib/cgit/filters.ryan/about-formatting.sh

    install dovecot.conf.ryan $pkgdir/etc/dovecot/dovecot.conf.ryan
    install dovecot.ryan.service $pkgdir/usr/lib/systemd/system/dovecot.ryan.service
    install dovecot.ryan.socket $pkgdir/usr/lib/systemd/system/dovecot.ryan.socket

    install geth.ryan.service $pkgdir/usr/lib/systemd/system/geth.ryan.service
    install geth-dev.ryan.service $pkgdir/usr/lib/systemd/system/geth-dev.ryan.service

    install grab $pkgdir/usr/bin/grab

    install lock $pkgdir/usr/bin/lock

    install pacman.ryan $pkgdir/usr/bin/pacman.ryan
    install pacman.conf.ryan $pkgdir/etc/pacman.conf.ryan

    install ryan-trusted $pkgdir/usr/share/pacman/keyrings
    install ryan.gpg $pkgdir/usr/share/pacman/keyrings

    install postfix.ryan.service $pkgdir/usr/lib/systemd/system/postfix.ryan.service
    install postfix.ryan $pkgdir/usr/bin/postfix.ryan
    install master.cf $pkgdir/etc/postfix.ryan/master.cf
    install main.cf $pkgdir/etc/postfix.ryan/main.cf
    install virtual $pkgdir/etc/postfix.ryan/virtual
    install aliases $pkgdir/etc/postfix.ryan/aliases

    install muttrc.ryan $pkgdir/etc/mutt/muttrc.ryan
    install mutt.ryan $pkgdir/usr/bin/mutt.ryan

    install nginx.ryan.service $pkgdir/usr/lib/systemd/system/nginx.ryan.service
    install nginx.conf.ryan $pkgdir/etc/nginx/nginx.conf.ryan
    install nginx.ryan $pkgdir/usr/bin/nginx.ryan

    install radicale.ryan.service $pkgdir/usr/lib/systemd/system/radicale.ryan.service
    install config.ryan $pkgdir/etc/radicale/config.ryan

    install repo-add.ryan $pkgdir/usr/bin/repo-add.ryan

    install smartd.ryan.service $pkgdir/usr/lib/systemd/system/smartd.ryan.service
    install smartd.conf.ryan $pkgdir/etc/smartd.conf.ryan

    install ssh.ryan $pkgdir/usr/bin/ssh.ryan
    install ssh_config.ryan $pkgdir/etc/ssh/ssh_config.ryan
    install sshd_config.ryan $pkgdir/etc/ssh/sshd_config.ryan
    install sshd.ryan.service $pkgdir/usr/lib/systemd/system/sshd.ryan.service
    install authorized_keys $pkgdir/usr/lib/ssh.ryan/authorized_keys

    install vim.ryan $pkgdir/usr/bin/vim.ryan
    install vimrc.ryan $pkgdir/etc/vimrc.ryan

    install xinit.ryan $pkgdir/usr/bin/xinit.ryan
    install startx.ryan $pkgdir/usr/bin/startx.ryan
    install xinitrc.ryan $pkgdir/etc/X11/xinit/xinitrc.ryan

    install wg-quick.ryan $pkgdir/usr/bin/wg-quick.ryan
    install wg-quick.ryan\@.service $pkgdir/usr/lib/systemd/system
    install template.overlay01.conf.ryan $pkgdir/usr/lib/wg-overlay.ryan/template.overlay01.conf.ryan

    install 25-wireless-dhcp.network $pkgdir/etc/systemd/network/25-wireless-dhcp.network

    install hosts $pkgdir/etc/hosts

    install gitunpack.sh $pkgdir/usr/bin/gitunpack.sh
    install gitunpack.service $pkgdir/usr/lib/systemd/system/gitunpack.service
    install gitunpack.timer $pkgdir/usr/lib/systemd/system/gitunpack.timer

    install zram-generator.conf $pkgdir/usr/lib/systemd/zram-generator.conf

    install ipfs.ryan $pkgdir/usr/bin/ipfs.ryan
    install ipfs.ryan.service $pkgdir/usr/lib/systemd/system/ipfs.ryan.service

    ln -s /usr/lib/systemd/system/nginx.ryan.service $pkgdir/usr/lib/systemd/system/multi-user.target.wants/nginx.ryan.service
    ln -s /usr/lib/systemd/system/systemd-networkd.service $pkgdir/usr/lib/systemd/system/multi-user.target.wants/systemd-networkd.service
    ln -s /usr/lib/systemd/system/wg-quick.ryan@overlay01.service $pkgdir/usr/lib/systemd/system/multi-user.target.wants/wg-quick.ryan@overlay01.service
    ln -s /usr/lib/systemd/system/ntpdate.service $pkgdir/usr/lib/systemd/system/multi-user.target.wants/ntpdate.service
    ln -s /usr/lib/systemd/system/sshd.ryan.service $pkgdir/usr/lib/systemd/system/multi-user.target.wants/sshd.ryan.service
    ln -s /usr/lib/systemd/system/systemd-resolved.service $pkgdir/usr/lib/systemd/system/multi-user.target.wants/systemd-resolved.service
    ln -s /usr/lib/systemd/system/postfix.ryan.service $pkgdir/usr/lib/systemd/system/multi-user.target.wants/postfix.ryan.service
    ln -s /usr/lib/systemd/system/syncthing@root.service $pkgdir/usr/lib/systemd/system/multi-user.target.wants/syncthing@root.service
    #ln -s /usr/lib/systemd/system/radicale.ryan.service $pkgdir/usr/lib/systemd/system/multi-user.target.wants/radicale.ryan.service
    ln -s /usr/lib/systemd/system/smartd.ryan.service $pkgdir/usr/lib/systemd/system/multi-user.target.wants/smartd.ryan.service
    #ln -s /usr/lib/systemd/system/logwatch.service $pkgdir/usr/lib/systemd/system/timers.target.wants/logwatch.service

    ln -s /usr/lib/systemd/system/dovecot.ryan.service $pkgdir/usr/lib/systemd/system/multi-user.target.wants/dovecot.ryan.service
    #ln -s /usr/lib/systemd/system/ipfs.ryan.service $pkgdir/usr/lib/systemd/system/multi-user.target.wants/ipfs.ryan.service

    ln -s /usr/lib/systemd/system/mariadb.service $pkgdir/usr/lib/systemd/system/multi-user.target.wants/mariadb.service

}
