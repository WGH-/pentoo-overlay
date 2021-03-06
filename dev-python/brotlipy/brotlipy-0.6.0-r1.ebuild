# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

PYTHON_COMPAT=( python{2_7,3_4,3_5} )

inherit distutils-r1

DESCRIPTION="Python binding to the Brotli library"
HOMEPAGE="https://pypi.python.org/pypi/brotlipy"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="${PYTHON_DEPS}
		dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}
		virtual/python-cffi[${PYTHON_USEDEP}]"
