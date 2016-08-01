# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python2_7 python3_{3,4,5} pypy )

inherit distutils-r1

DESCRIPTION="library for automating interaction with websites"
HOMEPAGE="https://github.com/hickford/MechanicalSoup"
SRC_URI="https://github.com/hickford/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~m68k ~mips ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86 ~x86-fbsd ~amd64-linux ~x86-linux ~x64-macos ~x86-macos"
IUSE=""

RDEPEND=">=dev-python/beautifulsoup-4.0.0[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}"

python_prepare_all() {
	distutils-r1_python_prepare_all
}
