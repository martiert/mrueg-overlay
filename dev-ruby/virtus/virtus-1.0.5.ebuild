# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

USE_RUBY="ruby20 ruby21 ruby22"

RUBY_FAKEGEM_EXTRADOC="Changelog.md CONTRIBUTING.md README.md"
RUBY_FAKEGEM_RECIPE_TEST="rspec3"
RUBY_FAKEGEM_RECIPE_DOC="yard"

inherit ruby-fakegem

DESCRIPTION="Attributes on Steroids for Plain Old Ruby Objects"
HOMEPAGE="https://github.com/solnic/virtus https://rubygems.org/gems/virtus"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

ruby_add_rdepend ">=dev-ruby/axiom-types-0.1
	<dev-ruby/axiom-types-1
	>=dev-ruby/coercible-1.0
	<dev-ruby/coercible-2
	>=dev-ruby/descendants_tracker-0.0.3
	<dev-ruby/descendants_tracker-1
	>=dev-ruby/equalizer-0.0.9
	<dev-ruby/equalizer-1"

RESTRICT="test"