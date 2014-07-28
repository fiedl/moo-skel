# Maintainer: pdq <pdq@localhost>
pkgname=moo-skel
pkgver=0.2
pkgrel=3
pkgdesc="mooOS skeleton files and directories."
arch=(any)
url="https://github.com/idk/moo-skel.git"
license=('GPL3')
makedepends=('git')
groups=moo
#conflicts=('abc' 'xyz')
#source=("")
#md5sums=('SKIP')

_gitroot="git://github.com/idk/moo-skel.git"
_gitname="moo-skel"

#install=$pkgname.install

build() {
	cd "$srcdir"
	msg "Connecting to GIT server...."

	if [ -d $pkgname ] ; then
		cd $pkgname && git pull origin
		msg "The local files are updated."
	else
		git clone $_gitroot $pkgname
		cd $pkgname
	fi
	msg "GIT checkout done or server timeout"
}

package() {
	cd "$srcdir/$pkgname/skel"
	msg2 "Installing mooOS skeleton files and directories."
	mkdir -p "${pkgdir}/etc"
    cp -r "$srcdir/$pkgname/skel/" "${pkgdir}/etc"
	msg2 "Installed ${pkgname}-${pkgver}"
}