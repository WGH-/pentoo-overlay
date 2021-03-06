# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Packages needed to power the client NUC for WCTF events"
HOMEPAGE="http://wctf.us"
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS=""
IUSE=""
S="${WORKDIR}"

PDEPEND="dev-vcs/git
		net-misc/dhcpcd
		sys-apps/rng-tools
		sys-power/thermald
		sys-kernel/pentoo-sources
		app-misc/screen
		app-editors/nano
		app-editors/vim
		net-wireless/rtl8812au_aircrack-ng
		sys-process/iotop
		sys-process/htop
		sys-boot/grub:2
		app-portage/layman
		sys-kernel/genkernel
		app-admin/sudo
		net-wireless/wpa_supplicant"

src_install() {
	insinto /etc/local.d
	doexe "${FILESDIR}"/99-ldm.start
}
