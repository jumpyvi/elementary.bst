kind: junction

sources:
- kind: git_repo
  url: gnome:gnome-build-meta.git
  track: gnome-50
  ref: 50.4-0-g8524013485013dd5616bfff02dbeab274d5a4553
- kind: patch_queue
  path: patches/gnome-build-meta

config:
  overrides:
    # This along with the patches is required and has to match what gnome-build-meta is using
    freedesktop-sdk.bst: freedesktop-sdk.bst
