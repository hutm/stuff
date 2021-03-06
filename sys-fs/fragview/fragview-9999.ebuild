# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
inherit cmake-utils git-2
DESCRIPTION="Disk fragmentation viewer written with boost and gtkmm"
HOMEPAGE="https://github.com/i-rinat/fragview"
EGIT_REPO_URI="git://github.com/i-rinat/fragview.git"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="
dev-libs/boost
dev-cpp/gtkmm:3.0"
RDEPEND="${DEPEND}"
#BUILD_DIR="${S}/build/"
src_install() {
cmake-utils_src_install
dodoc README.md || die "Install failed"
}
