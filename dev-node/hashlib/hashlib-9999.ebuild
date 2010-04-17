# Copyright 2010 Ivan Boldyrev
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit git

DESCRIPTION="A fast node.js module for making hashes"
HOMEPAGE="http://github.com/brainfucker/hashlib/"
EGIT_REPO_URI="git://github.com/brainfucker/hashlib.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="-* ~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_compile () {
	node-waf configure || die "Configure failed"
	node-waf build || die "Compilation failed"
}

src_install() {
	insinto /usr/lib/node/libraries
	doins "build/default/${PN}.node" || die
	dodoc README.md || die
}
