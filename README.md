# mesflit-gentoo-overlay
Mesflit's gentoo overlay

# How To Use It?
`sudo eselect repository add mesflit git https://github.com/mesflit/mesflit-gentoo-overlay.git`

`sudo eselect repository enable mesflit`

# Sync repo
`sudo emaint sync -r mesflit`
or
`sudo emerge --sync`

# Accept Packages
`echo '*/*::mesflit **' | sudo tee /etc/portage/package.accept_keywords/mesflit`
