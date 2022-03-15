
DEST=dist/
VER=0.0.19-1
#TEMP=/tmp/
TEMP=/home/ryan/

.PHONY: build dist

build: PKGBUILD
	@makepkg -si --skipinteg 1> /dev/null  || [ $$? -eq 13 ]
	@gpg -b --yes base.ryan-$(VER)-any.pkg.tar.zst

dist:
	-@mkdir -p ${DIST}/
	-@rm -r ${DEST}/*
	@mv base.ryan-${VER}-any.pkg.tar.zst{,.sig} ${DEST}/
	@repo-add.ryan -v -p -s ${DEST}/core.ryan.db.tar.zst ${DEST}/base.ryan-${VER}-any.pkg.tar.zst

nspawn:
	#[ -e ${TEMP}/TempContainer/ ] && (echo "Machine already exists. Please delete it." && false)
	mkdir ${TEMP}/TempContainer/
	pacstrap -C /etc/pacman.conf.ryan -c ${TEMP}/TempContainer/ base base.ryan
	rm -r ${TEMP}/TempContainer/etc/securetty
	rm -r ${TEMP}/TempContainer/usr/share/factory/etc/securetty
	passwd -R ${TEMP}/TempContainer/ root
	systemd-nspawn -b --network-veth -D ${TEMP}/TempContainer # --network-zone=TempZone
