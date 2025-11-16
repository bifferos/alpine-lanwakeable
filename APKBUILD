# Maintainer: Bifferos
pkgname=lanwakeable
pkgver=1.0
pkgrel=0
pkgdesc="Enable Wake-on-LAN on boot using ethtool"
url="https://github.com/bifferos/alpine-lanwakeable"
arch="all"
license="MIT"
depends="ethtool"
install=""
subpackages=""
source="lanwakeable.sh lanwakeable.initd"

package() {
    install -Dm755 "$srcdir/lanwakeable.sh" "$pkgdir/usr/bin/lanwakeable.sh"
    install -Dm755 "$srcdir/lanwakeable.initd" "$pkgdir/etc/init.d/lanwakeable"
}
