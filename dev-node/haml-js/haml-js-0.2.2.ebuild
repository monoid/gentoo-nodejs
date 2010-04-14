# Copyright 2010 Ivan Boldyrev
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="Server side templating language for JavaScript"
HOMEPAGE="http://github.com/creationix/haml-js"
SRC_URI="http://github.com/creationix/haml-js/tarball/v0.2.2 -> haml-js-0.2.2.tar.gz"
SLOT="0"
KEYWORDS="-* ~x86 ~amd64"
IUSE=""
S="${WORKDIR}/creationix-haml-js-8ea2df3"
LICENSE="MIT"

EAPI=2

DEPEND="dev-lang/nodejs"
RDEPEND="${DEPEND}"

src_install() {
	insinto /usr/lib/node/libraries
	doins lib/haml.js || die
	dodoc README.markdown LICENSE || die
}
