kind: meson

sources:
- kind: git_repo
  url: github:elementary/wingpanel.git
  track: main
  ref: 8.0.4-40-g548769ab40b4e7229656eb50780dcb9bd576a6d4

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/gettext.bst
- freedesktop-sdk.bst:components/vala.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/gsettings-desktop-schemas.bst
- freedesktop-sdk.bst:components/glib.bst
- gnome-build-meta.bst:sdk/gtk.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- gnome-build-meta.bst:sdk/libgee.bst
- gnome-build-meta.bst:core/mutter.bst
- deps/granite-7.bst
- desktop/gala.bst
