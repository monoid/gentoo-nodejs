# Copyright 2010 Ivan Boldyrev
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

DESCRIPTION="Evented I/O framework for V8 javascript."
HOMEPAGE="http://nodejs.org/"
SRC_URI="http://github.com/ry/node/tarball/v${PV} -> ${PN}-${PV}.tar.gz"

LICENSE="MIT LGPL"
SLOT="0"
KEYWORDS="-* ~x86 ~amd64"
IUSE=""

RDEPEND="net-libs/gnutls"
DEPEND="${RDEPEND}
	>=sys-devel/gcc-4"

S="${WORKDIR}/ry-node-6879574"

src_configure() {
	./configure --prefix=/usr || die "configure failed"
}

src_compile() {
	emake || die "emake failed"
}

src_install() {
	./tools/waf-light install --destdir="${D}" || die "install failed"

	keepdir /usr/lib/node/libraries
	newenvd "${FILESDIR}/90nodejs-envd" "90nodejs"
}
