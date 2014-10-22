# Maintainer: pdq <pdq@localhost>
pkgname=moo-skel
pkgver=0.2
pkgrel=19
pkgdesc="mooOS skeleton files and directories."
arch=(any)
url="https://github.com/idk/moo-skel.git"
license=('GPL3')
makedepends=('git')
groups=moo
#conflicts=('abc' 'xyz')
source=("git://github.com/idk/moo-skel.git")
sha512sums=('SKIP')

#install=$pkgname.install

package() {
	msg2 "Installing mooOS skeleton files and directories."
	install -d "${pkgdir}/etc/skel"
    cp -r "$srcdir/$pkgname/skel/" "${pkgdir}/etc"
}