# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
PYTHON_COMPAT=(python2_7)

inherit vcs-snapshot distutils-r1

DESCRIPTION="An unofficial api for Google Play Music"
HOMEPAGE="https://github.com/simon-weber/gmusicapi"
SRC_URI="https://github.com/simon-weber/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND=">=dev-python/appdirs-1.4.0[${PYTHON_USEDEP}]
	<dev-libs/protobuf-3.0.0_beta3[python,${PYTHON_USEDEP}]
	>=dev-libs/protobuf-2.6.1[python,${PYTHON_USEDEP}]
	>=dev-python/MechanicalSoup-0.4.0[${PYTHON_USEDEP}]
	>=dev-python/decorator-4.0.9[${PYTHON_USEDEP}]
	>=dev-python/gpsoauth-0.3.0[${PYTHON_USEDEP}]
	>=dev-python/mock-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/oauth2client-2.1.0[${PYTHON_USEDEP}]
	>=dev-python/python-dateutil-2.5.3[${PYTHON_USEDEP}]
	>=dev-python/requests-2.10.0[${PYTHON_USEDEP}]
	>=dev-python/validictory-1.0.1[${PYTHON_USEDEP}]
	>=media-libs/mutagen-1.32[${PYTHON_USEDEP}]
	>=dev-python/proboscis-1.2.5.1[${PYTHON_USEDEP}]
	dev-python/future[${PYTHON_USEDEP}]
	"
DEPEND="${RDEPEND}
	test? ( dev-python/nose[${PYTHON_USEDEP}]
	dev-python/proboscis[${PYTHON_USEDEP}] )
	dev-python/setuptools[${PYTHON_USEDEP}]"

python_test() {
	${PYTHON} ${PN}/test/run_tests.py --group=local || die
}
