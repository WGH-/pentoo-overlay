# Copyright 1999-20126 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_COMPAT=( python2_7 )

inherit cmake-utils python-single-r1 flag-o-matic

DESCRIPTION="software-defined analyzer for APCO P25 signals"
HOMEPAGE="http://op25.osmocom.org/wiki"
#osmocom is dead or close enough
#inherit subversion
#ESVN_REPO_URI="http://op25.osmocom.org/svn/trunk"
inherit git-r3
EGIT_REPO_URI="https://github.com/balint256/op25.git"

LICENSE="GPL"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=">=net-wireless/gnuradio-3.7:=
	sci-libs/itpp
	dev-libs/boost
	net-libs/libpcap"
RDEPEND="${DEPEND}"

src_configure() {
        # GCC 6 defaults to gnu++14, and as of May 2018, upstream
        # doesn't build on it
        append-cxxflags -std=gnu++98

        cmake-utils_src_configure
}
