# Maintainer: Mike Mob <mike@mikemob.com>
pkgname=gnome-your-wm
pkgver=0.1
pkgrel=1
epoch=1
pkgdesc='Use GNOME services with your choice of window manager.'
arch=('any')
url='https://github.com/thetarkus/gnome-your-wm'
license=('MIT')
depends=('make' 'gnome-flashback' 'gnome-screensaver' 'polkit-gnome')
groups=('gnome')
source=("$pkgname-$pkgver.tar.gz::https://github.com/thetarkus/gnome-your-wm/archive/$pkgname-$pkgver.tar.gz")
md5sums=()

package() {
  cd "$pkgname-$pkgver"
  make DESTDIR="$pkgdir/" install
}
