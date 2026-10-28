# SPDX-FileCopyrightText: Freedesktop-SDK Developers
# SPDX-License-Identifier: MIT

kind: meson

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst
- freedesktop-sdk.bst:components/python3-docutils.bst
- freedesktop-sdk.bst:components/python3-gi-docgen.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/libglycin.bst
- freedesktop-sdk.bst:components/shared-mime-info.bst

variables:
  meson-local: >
    -Dinstalled_tests=false
    -Dtests=false
    -Ddocumentation=true
    -Dandroid=disabled
    -Dgif=enabled
    -Djpeg=enabled
    -Dpng=enabled
    -Dtiff=enabled

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{bindir}/gdk-pixbuf-csource'
        - '%{bindir}/gdk-pixbuf-pixdata'
        - '%{bindir}/gdk-pixbuf-thumbnailer'
        - '%{libdir}/libgdk_pixbuf-2.0.so'

sources:
- kind: git_repo
  url: gnome:gdk-pixbuf.git
  track: 2.43.5
  ref: 2.43.5-0-gf65c037d2936595804f809756d9a4c909c854444
