# Copyright 2010 Ivan Boldyrev
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit git

DESCRIPTION="Do is a library that adds higher level abstraction and continuables"
HOMEPAGE="http://github.com/creationix/do"
EGIT_REPO_URI="git://github.com/creationix/do.git"
SLOT="0"
KEYWORDS="-* ~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_install() {
	insinto /usr/lib/node/libraries
	doins lib/do.js || die
	dodoc README.markdown LICENSE || die
}
