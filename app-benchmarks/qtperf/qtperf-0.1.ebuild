# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-benchmarks/qtperf/qtperf-0.1.ebuild,v 1 2010/12/06 00:13:35 megabaks Exp $

EAPI=5

inherit eutils qt4-r2

DESCRIPTION="Application designed to test QT performance"
HOMEPAGE="none"
SRC_URI="http://stuff.tazhate.com/distfiles/${PN}.tar.bz2"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="debug"

DEPEND="dev-qt/qtgui:4
		dev-qt/qtcore:4
		dev-libs/glib"

RDEPEND="${DEPEND}"

S="${WORKDIR}/${PN}"

src_install() {
	insinto /usr/bin/
	dobin qtperf || die
}
