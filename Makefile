COMMENT =	software-defined virtual networking

DISTNAME =	zerotier-one-1.10.6
EPOCH =		0
REVISION =	0

GH_ACCOUNT = 	zerotier
GH_PROJECT =	ZeroTierOne
GH_TAGNAME =	1.10.6

CATEGORIES =	net

HOMEPAGE =	https://www.zerotier.com/

MAINTAINER =	Troy J. Farrell <troy@entheossoft.com>

# SPDX-License-Identifier: BUSL-1.1
# Business Source License 1.1
# Change Date: 2025-01-01
# Change License: Apache-2.0
PERMIT_PACKAGE =	Yes

WANTLIB += c c++ c++abi m pthread

USE_GMAKE =		Yes

DOCS =	AUTHORS.md COPYING LICENSE.txt README.md RELEASE-NOTES.md SECURITY.md

# Put the documents into the fake, so they make it into the package.
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/zerotier-one
.for i in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/${i} ${PREFIX}/share/doc/zerotier-one/${i}
.endfor

.include <bsd.port.mk>
