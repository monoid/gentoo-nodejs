# Copyright 2010 Ivan Boldyrev
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="Server side templating language for JavaScript"
HOMEPAGE="http://github.com/visionmedia/haml.js"
SRC_URI="http://github.com/visionmedia/haml.js/tarball/${PV} -> ${PN}-${PV}.tar.gz"
SLOT="0"
KEYWORDS="-* ~x86 ~amd64"
IUSE=""
S="${WORKDIR}/visionmedia-haml.js-8682aaa"
LICENSE="MIT"

EAPI=2

DEPEND="dev-lang/nodejs !dev-node/haml-js"
RDEPEND="${DEPEND}"

src_install() {
	insinto /usr/lib/node/libraries
	doins lib/haml.js || die
	dodoc Readme.md History.md || die
}
