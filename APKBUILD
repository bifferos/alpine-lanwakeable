# Maintainer: Biff Eros <bifferos@users.noreply.github.com>
pkgname=lanwakeable
pkgver=1.0
pkgrel=0
pkgdesc="Enable Wake-on-LAN on boot using ethtool"
url="https://github.com/bifferos/alpine-lanwakeable"
arch="noarch"
license="MIT"
depends="ethtool"
install=""
subpackages=""
source="lanwakeable.sh lanwakeable.initd"

package() {
    install -Dm755 "$srcdir/lanwakeable.sh" "$pkgdir/usr/bin/lanwakeable.sh"
    install -Dm755 "$srcdir/lanwakeable.initd" "$pkgdir/etc/init.d/lanwakeable"
}


check() {
    return 0
}


sha256sums="
4c9305b3767971c7263313adf4ccf42b1577440d2adc29371bfdcbd60c9af0f6 lanwakeable.sh
60dc6978d33be6006f0ef7457dfc793b044dbf86470b6c7f8c71b7c5c6a56e97 lanwakeable.initd
"
