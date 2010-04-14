# Copyright 2010 Ivan Boldyrev
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit git

DESCRIPTION="Promise utilities for Node"
HOMEPAGE="http://github.com/kriszyp/node-promise"
EGIT_REPO_URI="git://github.com/kriszyp/node-promise.git"
SLOT="0"
KEYWORDS="-* ~x86 ~amd64"
IUSE=""
LICENSE="MIT"

DEPEND="dev-lang/nodejs"
RDEPEND="${DEPEND}"

src_install() {
	insinto /usr/lib/node/libraries
	doins promise.js fs-promise.js || die
	dodoc README.md test-promise.js || die
}
