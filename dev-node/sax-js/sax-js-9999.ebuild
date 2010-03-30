# Copyright 2010 Ivan Boldyrev
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit git

DESCRIPTION="A sax style parser for JS"
HOMEPAGE="http://github.com/isaacs/sax-js"
EGIT_REPO_URI="git://github.com/isaacs/sax-js.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="-* ~x86 ~amd64"
IUSE="examples"

DEPEND=""
RDEPEND="${DEPEND}"

src_install() {
	insinto /usr/lib/node/libraries
	doins lib/sax.js || die
	dodoc README.md LICENSE || die
	if use examples; then
		insinto "/usr/share/${PN}"
		doins -r examples || die
	fi
}
