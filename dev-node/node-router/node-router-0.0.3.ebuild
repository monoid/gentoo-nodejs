# Copyright 2010 Ivan Boldyrev
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

DESCRIPTION="Node-router is a small simple node.js http server"
HOMEPAGE="http://github.com/creationix/node-router"
SRC_URI="http://github.com/creationix/node-router/tarball/v${PV} -> ${PN}-${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="-* ~x86 ~amd64"
IUSE=""

DEPEND=">=dev-lang/nodejs-0.1.90"
RDEPEND="${RDEPEND}"

S="${WORKDIR}/creationix-node-router-6c2289a/"

src_install() {
	insinto /usr/lib/node/libraries
	doins "lib/${PN}".js || die
	dodoc README.markdown hello_world.js || die
}
