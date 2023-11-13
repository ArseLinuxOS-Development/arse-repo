# arse-repo
[![Publish to Remote Repository](https://github.com/ArseLinuxOS-Development/arse-repo/actions/workflows/push-to-repo.yml/badge.svg?branch=main)](https://github.com/ArseLinuxOS-Development/arse-repo/actions/workflows/push-to-repo.yml)

Repository for the custom arse packages


## Online repository 
http://repo.arselinux.org/repo/arselinux/x86_64/


## Contributing packages
1. Make changes including bumping the version in PKGBUILD
2. Run `updpkgsums`
3. Build package with `makepkg -sicfr`
4. Move new package to `/arselinux/x86_64/`
5. `repo-add arse-repo.db.tar.zst PACKAGE_NAME`
6. Push changes to the repository
7. Github Workflow will push the changes to the repository. 
