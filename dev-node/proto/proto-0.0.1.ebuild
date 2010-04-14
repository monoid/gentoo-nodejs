# Copyright 2010 Ivan Boldyrev
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="Library that adds some useful stuff to Object.prototype"
HOMEPAGE="http://github.com/creationix/proto"
SRC_URI="http://github.com/creationix/proto/tarball/v${PV} -> proto-${PV}.tar.gz"
SLOT="0"
KEYWORDS="-* ~x86 ~amd64"
IUSE=""
S="${WORKDIR}/creationix-proto-afd66a2"

EAPI=2

DEPEND="dev-lang/nodejs"
RDEPEND="${DEPEND}"

src_install() {
	insinto /usr/lib/node/libraries
	doins lib/proto.js || die
	dodoc README.markdown || die
}
