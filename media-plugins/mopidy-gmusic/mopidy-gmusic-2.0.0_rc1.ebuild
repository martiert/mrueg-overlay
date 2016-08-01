# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
PYTHON_COMPAT=(python2_7)

inherit vcs-snapshot distutils-r1

DESCRIPTION="Google Play Music extension for Mopidy"
HOMEPAGE="https://github.com/mopidy/mopidy-gmusic"
SRC_URI="https://github.com/mopidy/mopidy-gmusic/archive/v2.0.0rc1.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND=">=dev-python/pykka-1.1[${PYTHON_USEDEP}]
	>=dev-python/gmusicapi-10.0.0[${PYTHON_USEDEP}]
	>=dev-python/cachetools-1.0.0[${PYTHON_USEDEP}]
	>=media-sound/mopidy-2.0[${PYTHON_USEDEP}]"

DEPEND="test? ( ${RDEPEND}
	>=dev-python/mock-1.0[${PYTHON_USEDEP}]
	dev-python/nose[${PYTHON_USEDEP}] )
	dev-python/setuptools[${PYTHON_USEDEP}]"

DOCS=( README.rst )

python_test() {
	nosetests || die
}
