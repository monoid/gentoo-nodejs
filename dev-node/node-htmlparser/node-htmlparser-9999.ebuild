# Copyright 2010 Ivan Boldyrev
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit git

DESCRIPTION="Forgiving HTML Parser in JS for Node"
HOMEPAGE="http://github.com/davglass/node-htmlparser"
EGIT_REPO_URI="git://github.com/davglass/node-htmlparser.git"
SLOT="0"
KEYWORDS="-* ~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_install() {
	insinto /usr/lib/node/libraries
	doins node-htmlparser.js || die
	dodoc README || die
}
