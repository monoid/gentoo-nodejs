# Copyright 2010 Ivan Boldyrev
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit git

DESCRIPTION="Server side templating language for JavaScript"
HOMEPAGE="http://github.com/creationix/haml-js"
EGIT_REPO_URI="git://github.com/creationix/haml-js.git"
SLOT="0"
KEYWORDS="-* ~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_install() {
	insinto /usr/lib/node/libraries
	doins lib/haml.js || die
	dodoc README.markdown LICENSE || die
}
