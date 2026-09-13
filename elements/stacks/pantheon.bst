kind: stack

depends:
  # Desktop
  - stacks/common-desktop.bst
  - desktop/dock.bst
  - desktop/gala.bst
  - desktop/lightdm.bst
  - desktop/greeter.bst
  - desktop/portals.bst

  # Panel
  - desktop/panel/wingpanel.bst
  - desktop/panel/applications-menu.bst
  - desktop/panel/panel-power.bst
  - desktop/panel/panel-sound.bst
  - desktop/panel/quick-settings.bst

  # Settings
  - desktop/settings/switchboard.bst
  - desktop/settings/settings-daemon.bst

  # Apps
  - desktop/apps/files.bst
  - desktop/apps/terminal.bst
