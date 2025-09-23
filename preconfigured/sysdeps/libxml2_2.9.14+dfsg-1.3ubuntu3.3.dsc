-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: libxml2
Binary: libxml2, libxml2-utils, libxml2-dev, libxml2-doc, python3-libxml2
Architecture: any all
Version: 2.9.14+dfsg-1.3ubuntu3.3
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>
Uploaders:  Aron Xu <aron@debian.org>, YunQiang Su <wzssyqa@gmail.com>,
Homepage: http://xmlsoft.org
Description: GNOME XML library
 XML is a metalanguage to let you design your own markup language.
 A regular markup language defines a way to describe information in
 a certain class of documents (eg HTML). XML lets you define your
 own customized markup languages for many classes of document. It
 can do this because it's written in SGML, the international standard
 metalanguage for markup languages.
Standards-Version: 4.6.0
Vcs-Browser: https://salsa.debian.org/xml-sgml-team/libxml2
Vcs-Git: https://salsa.debian.org/xml-sgml-team/libxml2.git
Testsuite: autopkgtest
Testsuite-Triggers: build-essential, pkg-config
Build-Depends: debhelper-compat (= 13)
Build-Depends-Arch: dh-sequence-python3 <!nopython>, libicu-dev, liblzma-dev, libpython3-all-dev <!nopython>, pkg-config, python3-all-dev:any (>= 3.5) <!nopython>, rename, zlib1g-dev | libz-dev
Build-Depends-Indep: pkg-config
Package-List:
 libxml2 deb libs optional arch=any
 libxml2-dev deb libdevel optional arch=any
 libxml2-doc deb doc optional arch=all
 libxml2-utils deb text optional arch=any
 python3-libxml2 deb python optional arch=any profile=!nopython
Checksums-Sha1:
 b41615e638174b4e36845c68d4b305dd6a6b541f 2351200 libxml2_2.9.14+dfsg.orig.tar.xz
 1db9dc127592eb93d6db5d54131b5e32ed63f50f 39548 libxml2_2.9.14+dfsg-1.3ubuntu3.3.debian.tar.xz
Checksums-Sha256:
 4fe913dec8b1ab89d13b489b419a8203176ea39e931eaa0d25b17eafb9c279e9 2351200 libxml2_2.9.14+dfsg.orig.tar.xz
 bca5bd2870c546c5d61038e6b129a65e3a281e9364e2597626ecd8e1f09897b3 39548 libxml2_2.9.14+dfsg-1.3ubuntu3.3.debian.tar.xz
Files:
 bbcae2f48d1c9b1413ef953ce87e9346 2351200 libxml2_2.9.14+dfsg.orig.tar.xz
 feaae338005c9632005bf2ee6e929c19 39548 libxml2_2.9.14+dfsg-1.3ubuntu3.3.debian.tar.xz
Original-Maintainer: Debian XML/SGML Group <debian-xml-sgml-pkgs@lists.alioth.debian.org>

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEUMSg3c8x5FLOsZtRZWnYVadEvpMFAmgKlbIACgkQZWnYVadE
vpMXAA/+M3YrNT9FVZ2zyxTC5M8Rzuxkg3Wui8UctMM+xfqQpYaU5Lr0BsGDAnAZ
gffXrEhJOaEzJrPXbjIkN2M6gpMhhsEfrMMUpmH7jjJBP9SS2/m/oalxRPOTzUh+
UV5nmNGhyDshWqt3xu19Zaze0efocjzVZSjQPtpPAjgDkgsv+HhKYo1mtu+mrhWx
IouoyNIJxUeMDp8fAzEQPxj0yFNYlNjqOr0lWAwPbVLkDRjiAlUwNjgdsBf8Jtne
jDcSRjD09Zu9s7H4xdHyLmYX6n4hIbfdSTnJBfw4gGEiORuFz6ATxYiDMLKRf4Pr
mwMXUB+6Q0z7+5rARGItiI6ItoMBUwp77u4r2XkPWB0rvM+Mm4nI4+wkE8BQVw6t
hiFCDy0++JJVV2b6ehf3CUN6xRqhtn7fAXovoeG+1eK3b6toqmbtM8DbBgDtuOIn
Uu3ot0lY4LIIu78665QzH1hH6EQjv8hEtPcr78AkXppxKP/siMyL2QjQwhGwxcuc
S7CiFOprpYC9KKwtCIlFMEm+TOgdCryM1Budh0bY9ma8F/VEO+V5/yzQtIyeYK/y
GyvcZT+EwCh6HgxlcbC5eSTuKsrVlMXlA40VKw8Thoj/Y94djfzZKTCpveZ7cPpB
bTc3uPDVQI9SnlVroHlUTutMO0W8x+nIPtKqFY0jIv0Qk/6rFi4=
=NxxN
-----END PGP SIGNATURE-----
