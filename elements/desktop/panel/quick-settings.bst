kind: meson

sources:
- kind: git_repo
  url: github:elementary/quick-settings
  track: main
  ref: 8.0.4-40-g548769ab40b4e7229656eb50780dcb9bd576a6d4

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/gettext.bst
- freedesktop-sdk.bst:components/vala.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/gsettings-desktop-schemas.bst
- gnome-build-meta.bst:sdk/gtk.bst
- gnome-build-meta.bst:sdk/libadwaita.bst
- deps/granite-7.bst
- desktop/panel/wingpanel.bst
