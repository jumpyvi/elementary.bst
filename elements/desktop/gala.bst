kind: meson

sources:
- kind: git_repo
  url: github:elementary/gala.git
  track: main
  ref:

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/gettext.bst
- freedesktop-sdk.bst:components/vala.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/gsettings-desktop-schemas.bst
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:components/gtk3.bst
- freedesktop-sdk.bst:components/gtk4.bst
- freedesktop-sdk.bst:components/gee.bst
- freedesktop-sdk.bst:components/sqlite3.bst
- freedesktop-sdk.bst:components/libhandy.bst
- deps/granite-7.bst