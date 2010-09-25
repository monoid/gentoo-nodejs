# Copyright 2010 Ivan Boldyrev
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="CommonJS implementation of the DOM"
HOMEPAGE="http://github.com/tmpvar/jsdom"
SRC_URI="http://github.com/tmpvar/${PN}/tarball/${PV} -> ${PN}-${PV}.tar.gz"
SLOT="0"
KEYWORDS="-* ~x86 ~amd64"
IUSE="examples"
S="${WORKDIR}/tmpvar-jsdom-628da50"
LICENSE="MIT"

EAPI=2

DEPEND="dev-lang/nodejs"
RDEPEND="${DEPEND} dev-node/node-htmlparser"

src_install() {
	insinto /usr/lib/node/libraries
	doins -r lib/{jsdom.js,jsdom} || die
	dodoc README.md LICENSE.txt || die
	if use examples; then
		insinto "/usr/share/${PN}"
		doins -r example || die
	fi
}
