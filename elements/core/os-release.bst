kind: manual

sources:
- kind: local
  path: files/os-release

depends:
  - freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  strip-binaries: ""

environment:
  NAME: "elementaryOS (fSDK)"
  CODENAME: "X"
  HOME_URL: "http://localhost"
  DOCUMENTATION_URL: "http://localhost"
  SUPPORT_URL: "http://localhost"
  ID: "elementary"
  VERSION: "%{freedesktop-sdk-flatpak-branch}"

config:
  build-commands:
    - mkdir -p %{install-root}%{indep-libdir}/
    - |
      cat >"%{install-root}%{indep-libdir}/os-release" <<EOF
      NAME="${NAME}"
      PRETTY_NAME="${NAME}"
      VERSION="${VERSION}"
      VERSION_ID="${VERSION}"
      BASE_OS_NAME="Freedesktop SDK ${VERSION}"
      ID="${ID}"
      ID_LIKE="org.freedesktop.platform"
      VERSION_CODENAME="${CODENAME}"
      HOME_URL="${HOME_URL}"
      SUPPORT_URL="${SUPPORT_URL}"
      BUG_REPORT_URL="${SUPPORT_URL}"
      DOCUMENTATION_URL="${DOCUMENTATION_URL}"
      LOGO="logo"
      DEFAULT_HOSTNAME="fSDK"
      EOF
      mkdir -p %{install-root}%{sysconfdir}/
      ln -sf ../usr/lib/os-release %{install-root}%{sysconfdir}/os-release

    - |
      cat >"%{install-root}%{indep-libdir}/system-release" <<EOF
      Freedesktop SDK release %{freedesktop-sdk-flatpak-branch} (Flatpak runtime)
      EOF
      mkdir -p %{install-root}%{sysconfdir}/
      ln -sf ../usr/lib/system-release %{install-root}%{sysconfdir}/system-release

    - |
      install -Dm0644 issue -t %{install-root}%{sysconfdir}
