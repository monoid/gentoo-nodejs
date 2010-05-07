# Copyright 2010 Ivan Boldyrev
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

DESCRIPTION="Evented I/O framework for V8 javascript."
HOMEPAGE="http://nodejs.org/"
SRC_URI="http://nodejs.org/dist/node-v${PV}.tar.gz"

LICENSE="MIT LGPL"
SLOT="0"
KEYWORDS="-* ~x86 ~amd64"
IUSE="crypt"

RDEPEND="crypt? ( dev-libs/openssl )
	>=sys-devel/gcc-4"
DEPEND="${RDEPEND}"

S="${WORKDIR}/node-v${PV}"

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
