#https://github.com/GNOME/gnome-build-meta/blob/deb7adbb50f357517a52ce8319ae0fe6986569af/elements/core-deps/libhandy.bst#L5
kind: meson

sources:
- kind: git_repo
  url: gnome:libhandy.git
  track: main
  ref: 1.8.0-43-g00e966f415dabade4a54b9e401bdc0d8a4a22881

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- gnome-build-meta.bst:sdk/gi-docgen.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst
- freedesktop-sdk.bst:components/vala.bst
- freedesktop-sdk.bst:components/sed.bst

depends:
- freedesktop-sdk.bst:components/glib.bst
- gnome-build-meta.bst:sdk/gtk+-3.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dgtk_doc=false
    -Dvapi=true
    -Dtests=false
    -Dexamples=false
    -Dglade_catalog=disabled