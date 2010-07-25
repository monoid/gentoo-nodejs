# Copyright 2010 Ivan Boldyrev
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit git

DESCRIPTION="libxml bindings for v8 javascript engine"
HOMEPAGE="http://libxmljs.squishtech.com/"
EGIT_REPO_URI="git://github.com/polotek/libxmljs.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="-* ~x86 ~amd64"
IUSE=""

RDEPEND="dev-libs/libxml2"
DEPEND="${RDEPEND} dev-util/scons"

src_install() {
	insinto /usr/lib/node/libraries
	doins "${PN}.node" || die
	dodoc README.md CHANGELOG LICENSE || die
}
