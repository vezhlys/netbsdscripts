# Personal NetBSD scripts #

Script | Description
------------ | -------------
build_amd64_kernel.sh | build GENERIC amd64 kernel.
build_vt310dp_kernel.sh | build VT-310DP i386 kernel (configuration is available in this repository).
build_modules.sh | build kernel modules using build.sh.
install_modules.sh | install kernel modules using build.sh.
build_userland.sh | build kernel userland using build.sh.
install_userland.sh | install userland using build.sh.
etcupdate.sh | run etcupdate -s.
postinstall.sh | run postinstall check.
extract_set.sh | extract NetBSD binary set.
fetch_pkgsrc.sh | fetch latest pkgsrc from CVS (anoncvs3.de.NetBSD.org mirror is hardcoded)
update_pkgsrc.sh | update pkgsrc from CVS
netbsd_clone_fossil_repo.sh | clone the [NetBSD src repo](https://src.fossil.netbsd.org/) using fossil-scm
netbsd_update_to_latest_fossil_repo.sh | update netbsd src to latests using fossil-scm.
pkgsrc_clone_fossil_repo.sh | clone pkgsrc repo using fossil-scm.
pkgsrc_update_to_latest_fossil_repo.sh | update pkgsrc to latest using fossil-scm.
update_packages_full.sh | update all packages and ensure correct shared library dependencies (using pkg_rolling-replace).
update_packages_less_build.sh |  update all packages but do as little rebuilding as possible, creates binary package too (using pkg_rolling-replace).
fetch_pkg_vulnerabilities.sh | fetch pkg vulnerabilities, can be scheduled using cron.
run_locate.updatedb.sh | run /usr/libexec/locate.updatedb to update locate DB.
turn-off-beeper.sh | turn off beeper sound.	
disable_blocking_mapping_of_null_page.sh | disables protection against NULL pointer dereferences (if possible by kernel config).
VT-310DP | simplified kernel configuration for VIA VT-310DP motherboard based on GENERIC v1.1210 (padlock is not enabled, use [dynamic kernel modules](http://netbsd.gw.com/cgi-bin/man-cgi?module+7+NetBSD-current)).
