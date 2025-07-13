# Copyright 2025 mesflit
EAPI=8
inherit git-r3

DESCRIPTION="Guide for Gentoo Users"
HOMEPAGE="https://github.com/mesflit/mesflit-notes"
EGIT_REPO_URI="https://github.com/mesflit/mesflit-notes"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-lang/python"
RDEPEND="${DEPEND}"

src_install() {
    dodir /opt/mesflit-notes
    cp -r "${WORKDIR}/"* "${ED}"/opt/mesflit-notes/ || die
}
pkg_postinst() {
    elog "mesflit-notes installed from git."
    elog "Run it with: mesflit-notes"
}
