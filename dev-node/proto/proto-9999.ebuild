# Copyright 2010 Ivan Boldyrev
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit git

DESCRIPTION="Library that adds some useful stuff to Object.prototype"
HOMEPAGE="http://github.com/creationix/proto"
EGIT_REPO_URI="git://github.com/creationix/proto.git"
SLOT="0"
KEYWORDS="-* ~x86 ~amd64"
IUSE=""
LICENSE="MIT"

DEPEND="dev-lang/nodejs"
RDEPEND="${DEPEND}"

src_install() {
	insinto /usr/lib/node/libraries
	doins lib/proto.js || die
	dodoc README.markdown || die
}
