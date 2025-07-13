# Copyright 2025 mesflit
EAPI=8

DESCRIPTION="Mesflit's notes for Gentoo 9999)"
HOMEPAGE="https://github.com/mesflit/mesflit-notes"
SRC_URI="https://github.com/mesflit/mesflit-notes"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-lang/python"

src_install() {
    # Kurulum dizinleri oluştur ve dosyaları kopyala
    dodir /opt/mesflit-notes
    insinto /opt/mesflit-notes
    doins "${FILESDIR}/mesflit-notes.py"
    insinto /opt/mesflit-notes/notes
    doins -r "${FILESDIR}/notes/"

    # Wrapper script oluştur
    dodir /usr/local/bin
    newscript /usr/local/bin/mesflit-notes <<- EOF
#!/bin/sh
python3 /opt/mesflit-notes/mesflit-notes.py "\$@"
EOF
    chmod 755 /usr/local/bin/mesflit-notes
}

pkg_postinst() {
    elog "mesflit-notes installed successfully."
    elog "Run the program by typing: mesflit-notes"
}
