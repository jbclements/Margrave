    ; Load the API 
(newline)
(display "-> Loading Margrave library ... ... ...") (newline)
(load "margrave.scm")
(display "-> margrave.scm loaded. ") (newline)
(newline)
(newline)

(define pPolicy (load-policy (string-append my-directory "generatedconfig.p")))

(define-policy "p" pPolicy)

(m "EXPLORE (NOT pgp4pine~1(c)) AND 
 (NOT python-minimal~3(c)) AND 
 (NOT tulip~2(c)) AND 
 (latex-cjk-japanese~2(c) IMPLIES latex-cjk-common~1(c)) AND 
 (NOT libpawlib2~2(c)) AND 
 (NOT mediawiki~3(c)) AND 
 (NOT libmutter-private0~2(c)) AND 
 (NOT rxvt~1(c)) AND 
 (NOT gphpedit~2(c)) AND 
 (NOT gnome-devel-docs~3(c)) AND 
 (NOT libmono-uia-winforms1.0-cil~1(c)) AND 
 (NOT kturtle~4(c)) AND 
 (NOT links-ssl~2(c)) AND 
 (NOT kkbswitch~2(c)) AND 
 (NOT yorick-yutils~5(c)) AND 
 (libtime-human-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT kbd-compat~1(c)) AND 
 (gcc-4.2-doc~1(c) IMPLIES (gcc-doc-base~1(c) OR gcc-doc-base~2(c))) AND 
 (libmodule-starter-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT r-cran-mvtnorm~3(c)) AND 
 (NOT mailcrypt~1(c)) AND 
 (NOT treelang-doc~1(c)) AND 
 (NOT agrep~1(c)) AND 
 (NOT fai-client~2(c)) AND 
 (NOT libhdf5-mpich-1.8.3~1(c)) AND 
 (NOT librcs-perl~1(c)) AND 
 (NOT w-bassman~2(c)) AND 
 (NOT avida-base~2(c)) AND 
 (NOT statserial~1(c)) AND 
 (NOT museekd~2(c)) AND 
 (NOT r-cran-zelig~2(c)) AND 
 (NOT regina-rexx~1(c)) AND 
 (NOT libprojectm2~1(c)) AND 
 (NOT libvtkgdcm-tools~2(c)) AND 
 (NOT piuparts~2(c)) AND 
 (NOT scalapack-lam-dev~1(c)) AND 
 (NOT prime~3(c)) AND 
 (NOT libglpk0-dbg~1(c)) AND 
 (load-dirs-common~2(c) IMPLIES python(c) AND python-central~22(c)) AND 
 (NOT libghc6-network-bytestring-dev~1(c)) AND 
 (NOT mozilla-browser~4(c)) AND 
 (NOT libflac7~1(c)) AND 
 (NOT tk-brief~1(c)) AND 
 (NOT libosip2-dev~4(c)) AND 
 (NOT libapache-mod-relocate~1(c)) AND 
 (dasher-data~5(c) IMPLIES gconf2~7(c)) AND 
 (NOT keepalived~2(c)) AND 
 (NOT libhamlib2++c2~1(c)) AND 
 (NOT prboom~2(c)) AND 
 (NOT xapm~1(c)) AND 
 (NOT libglw1-mesa~1(c)) AND 
 (NOT sysv-rc~7(c)) AND 
 (NOT xserver-xorg-video-ark~2(c)) AND 
 (NOT speedbar~5(c)) AND 
 (NOT fort77~1(c)) AND 
 (NOT ghemical~1(c)) AND 
 (NOT wide-dhcpv6-server~2(c)) AND 
 (NOT libtexttools2.0~1(c)) AND 
 (xmame-common~1(c) IMPLIES (xmess-sdl~1(c) OR xmame-x~2(c))) AND 
 (NOT libhaml-ruby~2(c)) AND 
 (NOT libgtop2-dev~5(c)) AND 
 (NOT octave-msh~1(c)) AND 
 (NOT libmini18n0-dbg~1(c)) AND 
 (NOT libformsgl1~2(c)) AND 
 (NOT python-gtk-vnc~2(c)) AND 
 (NOT tk8.4~5(c)) AND 
 (NOT xaos~1(c)) AND 
 (live-helper~3(c) IMPLIES debootstrap(c)) AND 
 (NOT libbonoboui2-0~5(c)) AND 
 (NOT libloudmouth1-dev~2(c)) AND 
 (NOT csound-gui~2(c)) AND 
 (NOT libkdcraw7~3(c)) AND 
 (NOT openvpn~5(c)) AND 
 (NOT openafs-fileserver~4(c)) AND 
 (NOT openoffice.org-report-builder-bin~3(c)) AND 
 (NOT pdns-server~1(c)) AND 
 (NOT emacs21-bin-common~1(c)) AND 
 (NOT giftui~2(c)) AND 
 (NOT libforms-bin~1(c)) AND 
 (ml-yacc~1(c) IMPLIES smlnj-runtime~1(c)) AND 
 (NOT cdargs~1(c)) AND 
 (NOT python-xmms~2(c)) AND 
 (NOT libslepc3.0.0-dbg~1(c)) AND 
 (NOT rusersd~2(c)) AND 
 (NOT libxul-dev~1(c)) AND 
 (NOT fossil~2(c)) AND 
 (NOT libghc6-alut-dev~3(c)) AND 
 (NOT libwww-mechanize-ruby1.9~1(c)) AND 
 (NOT python-pykcs11~2(c)) AND 
 (NOT libwww-mechanize-ruby1.8~1(c)) AND 
 (konversation-dbg~1(c) IMPLIES konversation~2(c)) AND 
 (NOT libxmlrpc-epi-dev~1(c)) AND 
 (NOT mp3gain~2(c)) AND 
 (NOT libextlib-ocaml-dev~1(c)) AND 
 (NOT libfax-hylafax-client-perl~2(c)) AND 
 (NOT libqdbm-dev~1(c)) AND 
 (NOT libgtkhtml3.14-19~5(c)) AND 
 (NOT namazu2-index-tools~2(c)) AND 
 (NOT xserver-xorg-video-apm~2(c)) AND 
 (zonecheck-cgi~2(c) IMPLIES zonecheck(c) AND (lighttpd~4(c) OR cherokee~4(c) OR lighttpd~5(c) OR apache-ssl~6(c) OR apache2-mpm-prefork~6(c) OR lighttpd~4(c) OR cherokee~4(c) OR lighttpd~5(c) OR apache-ssl~6(c) OR apache2-mpm-prefork~6(c) OR fnord~2(c) OR webfs~1(c) OR mini-httpd~1(c) OR aolserver4-daemon~1(c) OR ebhttpd~1(c))) AND 
 (NOT kdebluetooth~4(c)) AND 
 (libbeid2-dev~2(c) IMPLIES libbeid2~4(c)) AND 
 (NOT dynagen~1(c)) AND 
 (NOT gambas2-gb-gtk-ext~1(c)) AND 
 (NOT klibido~2(c)) AND 
 (NOT wesnoth~1(c)) AND 
 (libcss-tiny-perl~3(c) IMPLIES perl~69(c)) AND 
 (NOT openoffice.org-officebean~4(c)) AND 
 (NOT texlive-plain-extra~2(c)) AND 
 (NOT libnuclient3~1(c)) AND 
 (NOT ipip~2(c)) AND 
 (NOT innerspace.app~1(c)) AND 
 (NOT libapreq2~3(c)) AND 
 (NOT libui0~2(c)) AND 
 (NOT slice2docbook~1(c)) AND 
 (NOT apt-rpm-repository~2(c)) AND 
 (NOT python-ferari~1(c)) AND 
 (NOT gnomoradio~2(c)) AND 
 (NOT axel-dbg~1(c)) AND 
 (NOT libmilter-dev~3(c)) AND 
 (NOT ecasound~3(c)) AND 
 (NOT kiki-the-nano-bot~1(c)) AND 
 (NOT libgpod0~2(c)) AND 
 (gnustep-base-doc~2(c) IMPLIES (gnustep-common~5(c) OR gnustep-common~5(c))) AND 
 (NOT libgnomeprintui2.2-0~5(c)) AND 
 (NOT gobby-dbg~2(c)) AND 
 (NOT libgdata1.2-1~4(c)) AND 
 (NOT qa-assistant~1(c)) AND 
 (NOT kio-ftps~1(c)) AND 
 (NOT libxcursor-dev~1(c)) AND 
 (NOT libhocr-perl~1(c)) AND 
 (NOT r-cran-rserve~2(c)) AND 
 (NOT libadasockets1~1(c)) AND 
 (NOT clamav-milter~4(c)) AND 
 (NOT r-cran-strucchange~1(c)) AND 
 (NOT libimage-info-perl~1(c)) AND 
 (NOT weechat-dbg~1(c)) AND 
 (NOT brutalchess~2(c)) AND 
 (NOT erlang-webtool~1(c)) AND 
 (pm-utils~1(c) IMPLIES powermgmt-base(c) AND kbd-compat~1(c)) AND 
 (NOT libunicode-japanese-perl~2(c)) AND 
 (libmono-system-runtime1.0-cil~4(c) IMPLIES libmono-corlib1.0-cil~3(c) AND libmono-system-web1.0-cil~8(c) AND libmono-system1.0-cil~6(c)) AND 
 (NOT libgrafx11-1-dev~1(c)) AND 
 (education-geography~2(c) IMPLIES education-tasks~2(c)) AND 
 (NOT freecad-dev~2(c)) AND 
 (NOT pike7.6-sdl~1(c)) AND 
 (NOT qt3-assistant~3(c)) AND 
 (NOT sisu~3(c)) AND 
 (NOT x2vnc~2(c)) AND 
 (NOT libghc6-x11-xft-prof~1(c)) AND 
 (NOT ethereal-dev~3(c)) AND 
 (NOT libproxy-dev~1(c)) AND 
 (NOT tangerine~1(c)) AND 
 (NOT libforms-dev~2(c)) AND 
 (NOT kgb-client~1(c)) AND 
 (NOT libucl-dev~2(c)) AND 
 (NOT wifi-radar~1(c)) AND 
 (NOT libhdf4g-run~1(c)) AND 
 (NOT libqwt5-qt4~2(c)) AND 
 (NOT libgdiplus~4(c)) AND 
 (librest-0.6-0-dbg~1(c) IMPLIES librest-0.6-0~2(c)) AND 
 (NOT libqwt5-qt3~2(c)) AND 
 (NOT libvarconf-1.0-6~1(c)) AND 
 (NOT kasablanca~2(c)) AND 
 (NOT mono-apache-server~2(c)) AND 
 (NOT libxcb-damage0-dev~1(c)) AND 
 (NOT libinline-perl~3(c)) AND 
 (NOT febootstrap~1(c)) AND 
 (NOT libggadget-qt-1.0-0~3(c)) AND 
 (NOT fbgrab~1(c)) AND 
 (NOT libwfut-0.2-dev~1(c)) AND 
 (NOT libghc6-hgl-dev~2(c)) AND 
 (NOT libindex0-dev~2(c)) AND 
 (NOT mgetty-pvftools~2(c)) AND 
 (NOT ntlmaps~2(c)) AND 
 (NOT njam~1(c)) AND 
 (NOT linuxdcpp~4(c)) AND 
 (NOT kaffeine-dbg~2(c)) AND 
 (NOT gruftistats~1(c)) AND 
 (gnat-4.2-doc~1(c) IMPLIES (gcc-doc-base~1(c) OR gcc-doc-base~2(c))) AND 
 (NOT meshlab~1(c)) AND 
 (NOT redhat-cluster-modules-2.6.18-6-xen-vserver-amd64~1(c)) AND 
 (NOT rng-tools~1(c)) AND 
 (NOT scalapack-mpich-dev~2(c)) AND 
 (NOT libsword8~2(c)) AND 
 (NOT libwww-topica-perl~1(c)) AND 
 (commit-tool~1(c) IMPLIES (git-core(c) OR mercurial~3(c) OR mercurial~12(c)) AND python2.4(c) AND python(c) AND python-support~7(c) AND python-qt3(c)) AND 
 (NOT libxmpi4~2(c)) AND 
 (NOT libsword6~2(c)) AND 
 (NOT drip~1(c)) AND 
 (NOT ipfm~2(c)) AND 
 (NOT libgtksourceviewmm-2.0-dev~1(c)) AND 
 (libsvn-simple-perl~3(c) IMPLIES libsvn-perl(c) AND perl~69(c)) AND 
 (NOT iogerman~2(c)) AND 
 (NOT perdition-mysql~2(c)) AND 
 (NOT kdeedu~2(c)) AND 
 (NOT boinc-dev~1(c)) AND 
 (libhtml-tokeparser-simple-perl~3(c) IMPLIES perl~69(c) AND libhtml-parser-perl~14(c)) AND 
 (NOT motor~2(c)) AND 
 (NOT hddtemp~2(c)) AND 
 (NOT xserver-xorg-video-all~2(c)) AND 
 (NOT default-jdk-builddep~1(c)) AND 
 (NOT ethstatus~1(c)) AND 
 (NOT libmysql-ruby1.8~2(c)) AND 
 (NOT irssi-plugin-otr~1(c)) AND 
 (NOT libfreeradius-dev~1(c)) AND 
 (NOT coqide~1(c)) AND 
 (NOT slashem-common~2(c)) AND 
 (NOT libgee-dev~1(c)) AND 
 (NOT indi~1(c)) AND 
 (NOT php-pear~5(c)) AND 
 (NOT drawmap~1(c)) AND 
 (NOT perceptualdiff~1(c)) AND 
 (NOT cgiemail~2(c)) AND 
 (NOT xbubble~2(c)) AND 
 (NOT libnkf-perl~2(c)) AND 
 (NOT r-cran-timedate~2(c)) AND 
 (NOT pocketpc-cab~1(c)) AND 
 (NOT spl-mysql~2(c)) AND 
 (NOT libpoe-component-pcap-perl~1(c)) AND 
 (libghc6-zlib-prof~2(c) IMPLIES libghc6-zlib-dev~2(c) AND ghc6-prof~12(c) AND ghc6-prof~12(c)) AND 
 (NOT postgresql-contrib-7.4~1(c)) AND 
 (NOT crack-md5~2(c)) AND 
 (NOT libzeroc-ice-ruby1.8~1(c)) AND 
 (NOT coinor-libosi0~1(c)) AND 
 (NOT science-config~1(c)) AND 
 (NOT libmecab-jni~1(c)) AND 
 (NOT gmfsk~1(c)) AND 
 (NOT libgnatprj4.3-dbg~1(c)) AND 
 (NOT libxml-autowriter-perl~1(c)) AND 
 (NOT yaws-chat~1(c)) AND 
 (NOT librenaissance0~2(c)) AND 
 (NOT strigi-applet~1(c)) AND 
 (NOT xpilot-ng-utils~1(c)) AND 
 (NOT libmono-system-messaging2.0-cil~6(c)) AND 
 (NOT libexplain-dev~2(c)) AND 
 (NOT libmultisync-plugin-irmc-bluetooth~1(c)) AND 
 (NOT libphp-adodb~6(c)) AND 
 (NOT cl-syslog~1(c)) AND 
 (libstring-mkpasswd-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT rinse~1(c)) AND 
 (NOT gmyth-utils~1(c)) AND 
 (NOT pmacct~1(c)) AND 
 (NOT wdq2wav~1(c)) AND 
 (NOT libmaven-plugin-tools-java~1(c)) AND 
 (NOT php5-interbase~2(c)) AND 
 (NOT rutilt~1(c)) AND 
 (NOT user-setup~2(c)) AND 
 (NOT deskbar-applet~8(c)) AND 
 (NOT xserver-xorg-video-voodoo~1(c)) AND 
 (NOT libxcb-damage0-dbg~1(c)) AND 
 (NOT libsexymm2-dbg~2(c)) AND 
 (NOT gramadoir~1(c)) AND 
 (NOT gambas2-gb-db-odbc~2(c)) AND 
 (NOT bluez-gnome~2(c)) AND 
 (NOT datafreedom-perl~1(c)) AND 
 (NOT ttf-linex~1(c)) AND 
 (libsetup-ruby1.8~2(c) IMPLIES ruby1.8(c)) AND 
 (NOT ser2net~2(c)) AND 
 (NOT science-geography~1(c)) AND 
 (NOT liberubis-ruby1.9~1(c)) AND 
 (libhugs-uulib~3(c) IMPLIES hugs~5(c)) AND 
 (NOT liberubis-ruby1.8~1(c)) AND 
 (NOT python-gammu~5(c)) AND 
 (NOT pslib1~2(c)) AND 
 (NOT id3tool~2(c)) AND 
 (NOT libkrb5-dev~2(c)) AND 
 (NOT kalzium~4(c)) AND 
 (NOT libdbus-1-qt3-0~1(c)) AND 
 (NOT gnash-tools~2(c)) AND 
 (NOT mnemo2~2(c)) AND 
 (NOT xbel-utils~1(c)) AND 
 (NOT xen-utils-3.0.3-1~1(c)) AND 
 (NOT libhdate-pascal~1(c)) AND 
 (NOT maxima~3(c)) AND 
 (libbctsp-java~2(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c))) AND 
 (NOT libformsgl-dev~2(c)) AND 
 (NOT ebhttpd~1(c)) AND 
 (NOT screen-profiles-extras~2(c)) AND 
 (NOT libboost-mpi1.38.0~1(c)) AND 
 (NOT xchm~2(c)) AND 
 (myspell-en-us~4(c) IMPLIES (dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c))) AND 
 (NOT python-hk-classes~1(c)) AND 
 (NOT libdlisp0-dev~1(c)) AND 
 (NOT alsa-tools~1(c)) AND 
 (NOT ircd-hybrid~2(c)) AND 
 (NOT python-libtorrent~3(c)) AND 
 (NOT libgtksourceviewmm-2.0-dbg~1(c)) AND 
 (libsnmp-session-perl~4(c) IMPLIES perl~69(c)) AND 
 (NOT fakechroot~3(c)) AND 
 (NOT boinc-dbg~1(c)) AND 
 (NOT libqwt5-qt4-dev~2(c)) AND 
 (NOT libdebian-installer-extra4~2(c)) AND 
 (NOT ganglia-webfrontend~2(c)) AND 
 (NOT w3c-markup-validator~2(c)) AND 
 (NOT latex-cjk-chinese-arphic-bsmi00lp~2(c)) AND 
 (NOT libfftw3-doc~1(c)) AND 
 (NOT mono-1.0-devel~1(c)) AND 
 (NOT lsh-server~1(c)) AND 
 (NOT libblkid1~8(c)) AND 
 (NOT bzip2~3(c)) AND 
 (configure-debian~2(c) IMPLIES (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c)) AND liblocale-gettext-perl(c) AND perl(c)) AND 
 (NOT mldonkey-server~2(c)) AND 
 (NOT libglobus-gssapi-gsi4~1(c)) AND 
 (NOT bincimap-run~1(c)) AND 
 (NOT libnet-scp-ruby~1(c)) AND 
 (NOT apachetop~1(c)) AND 
 (NOT dvbstream~1(c)) AND 
 (NOT amule~4(c)) AND 
 (NOT libmono-system-runtime2.0-cil~1(c)) AND 
 (python-routes~2(c) IMPLIES python(c) AND python-central~22(c)) AND 
 (NOT thunar~4(c)) AND 
 (NOT twoftpd~2(c)) AND 
 (NOT libgsnmp0-dev~2(c)) AND 
 (NOT airport-utils~1(c)) AND 
 (NOT jade~4(c)) AND 
 (NOT oprofile~1(c)) AND 
 (NOT lam4c2~1(c)) AND 
 (NOT dtc-common~1(c)) AND 
 (NOT r-cran-snow~2(c)) AND 
 (NOT libxml-libxml-perl~7(c)) AND 
 (NOT libnettle3~1(c)) AND 
 (NOT libserialport-ruby~1(c)) AND 
 (NOT osm2pgsql~1(c)) AND 
 (NOT planner-el~1(c)) AND 
 (NOT libnettle2~1(c)) AND 
 (NOT libfile-localizenewlines-perl~1(c)) AND 
 (NOT libruby1.9~7(c)) AND 
 (NOT gnome-do-plugins~2(c)) AND 
 (awstats~2(c) IMPLIES perl(c)) AND 
 (NOT hedgewars~2(c)) AND 
 (NOT openmcu~2(c)) AND 
 (NOT qdbm-cgi~1(c)) AND 
 (NOT ttf-bengali-fonts~3(c)) AND 
 (NOT libsvnqt-dev~1(c)) AND 
 (festvox-italp16k~1(c) IMPLIES festlex-ifd(c)) AND 
 (libclass-data-inheritable-perl~3(c) IMPLIES perl~69(c)) AND 
 (NOT s3dx11gate~2(c)) AND 
 (NOT xfce4-mcs-manager~4(c)) AND 
 (NOT libofbis-dev~1(c)) AND 
 (NOT cowdancer~5(c)) AND 
 (NOT libboost-regex-dev~2(c)) AND 
 (libbeecrypt6-dev~1(c) IMPLIES libbeecrypt6~1(c)) AND 
 (NOT xzoom~2(c)) AND 
 (NOT libdata-formvalidator-perl~3(c)) AND 
 (NOT git-svn~2(c)) AND 
 (NOT libmcs-utils~1(c)) AND 
 (NOT nip2~1(c)) AND 
 (NOT pike7.6-pexts-curses~1(c)) AND 
 (NOT xshogi~1(c)) AND 
 (NOT libqt3-compat-headers~3(c)) AND 
 (NOT junior-games-sim~2(c)) AND 
 (NOT cupsys-driver-gutenprint~1(c)) AND 
 (NOT verbiste~1(c)) AND 
 (NOT egroupware-emailadmin~1(c)) AND 
 (NOT sun-java6-plugin~1(c)) AND 
 (NOT libclaw-configuration-file-dev~1(c)) AND 
 (NOT linux-source-2.6.30~8(c)) AND 
 (iceweasel-l10n-ga-ie~1(c) IMPLIES (iceweasel~16(c) OR iceweasel~5(c)) AND iceweasel~5(c)) AND 
 (NOT ratbox-services-sqlite~1(c)) AND 
 (NOT sshfs~1(c)) AND 
 (NOT uim-gtk2.0~4(c)) AND 
 (NOT eblook~3(c)) AND 
 (sshfp~1(c) IMPLIES python~22(c) AND python-dnspython(c) AND openssh-client(c)) AND 
 (NOT libcorelinuxc2a~1(c)) AND 
 (NOT libkrb5-dbg~2(c)) AND 
 (NOT fireflier-client-gtk~1(c)) AND 
 (NOT python-weblib~2(c)) AND 
 (NOT tightvncserver~1(c)) AND 
 (NOT gosa-schema~1(c)) AND 
 (NOT libpt-1.10.10-plugins-oss~1(c)) AND 
 (NOT python-goopy~3(c)) AND 
 (libjcalendar-java~1(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c))) AND 
 (NOT libthai0~6(c)) AND 
 (libtext-format-perl~1(c) IMPLIES perl~69(c)) AND 
 (libgeo-helmerttransform-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT midge~1(c)) AND 
 (libmimelib1-dev~2(c) IMPLIES libmimelib1c2a~2(c)) AND 
 (NOT aircrack-ng~4(c)) AND 
 (NOT libmodule-build-perl~5(c)) AND 
 (NOT libtextcat0~2(c)) AND 
 (NOT sendpage-common~1(c)) AND 
 (NOT kdelibs4-dev~14(c)) AND 
 (NOT ksokoban~2(c)) AND 
 (NOT accerciser~3(c)) AND 
 (NOT lib32objc2~3(c)) AND 
 (NOT openload~2(c)) AND 
 (NOT libgrafx11-1~2(c)) AND 
 (NOT python-tdb~2(c)) AND 
 (NOT toilet~1(c)) AND 
 (libpolybori-dev~1(c) IMPLIES libpolybori-0.5.0-0(c)) AND 
 (NOT wmclockmon~2(c)) AND 
 (NOT serendipity~2(c)) AND 
 (NOT xfonts-thai-nectec~1(c)) AND 
 (NOT libexif-ruby~2(c)) AND 
 (NOT openjdk-6-demo~3(c)) AND 
 (NOT yorick-yao~1(c)) AND 
 (NOT python-svn~2(c)) AND 
 (NOT libstfl-ruby1.9~1(c)) AND 
 (NOT libass-dev~1(c)) AND 
 (NOT qdbm-util~1(c)) AND 
 (libgdcm2-dev~2(c) IMPLIES libgdcm2.0~4(c)) AND 
 (NOT libstfl-ruby1.8~1(c)) AND 
 (NOT asterisk-mysql~1(c)) AND 
 (NOT libming-dev~2(c)) AND 
 (NOT khangman~3(c)) AND 
 (NOT festival-doc~2(c)) AND 
 (NOT teapop-mysql~1(c)) AND 
 (libtext-dhcpleases-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT python-qt3~4(c)) AND 
 (NOT spamc~4(c)) AND 
 (NOT wavbreaker~1(c)) AND 
 (NOT libgpod-common~4(c)) AND 
 (NOT gmemusage~2(c)) AND 
 (wbulgarian~2(c) IMPLIES (dictionaries-common~20(c) OR dictionaries-common~15(c)) AND (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf(c))) AND 
 (NOT drac~1(c)) AND 
 (NOT libc-scan-perl~1(c)) AND 
 (NOT libkernlib1~2(c)) AND 
 (NOT libboost-python1.40.0~2(c)) AND 
 (NOT yorick-hdf5~3(c)) AND 
 (NOT libgtkextra-x11-2.0-1~3(c)) AND 
 (NOT libgnadeodbc1.6~1(c)) AND 
 (NOT stardict-gtk~4(c)) AND 
 (NOT gnome-mount~4(c)) AND 
 (libsdl1.2-dev~10(c) IMPLIES libsdl1.2debian~6(c) AND libx11-dev(c) AND libglu1-mesa-dev(c)) AND 
 (NOT bigloo-devtools~2(c)) AND 
 (NOT gentoo~1(c)) AND 
 (NOT libicc2~1(c)) AND 
 (NOT flvstreamer~1(c)) AND 
 (NOT diogenes~2(c)) AND 
 (surfraw~2(c) IMPLIES (epiphany-browser~10(c) OR xemacs21-mule-canna-wnn~2(c) OR epiphany-gecko~2(c) OR iceweasel~5(c) OR dillo~2(c) OR epiphany-browser~10(c) OR xemacs21-mule-canna-wnn~2(c) OR epiphany-gecko~2(c) OR iceweasel~5(c) OR dillo~2(c) OR konqueror~13(c) OR midori~2(c) OR iceweasel~16(c) OR netrik~2(c) OR netsurf-linuxfb~1(c) OR netsurf-gtk~1(c))) AND 
 (NOT mpage~2(c)) AND 
 (NOT libqtruby4shared2~2(c)) AND 
 (NOT xshodo~1(c)) AND 
 (NOT ytalk~1(c)) AND 
 (NOT dovecot-common~5(c)) AND 
 (NOT openafs-modules-source~2(c)) AND 
 (libeditline-dev~1(c) IMPLIES libeditline0~1(c)) AND 
 (NOT rpmstrap~1(c)) AND 
 (wesnoth-ttb~1(c) IMPLIES wesnoth(c)) AND 
 (NOT wvdial~3(c)) AND 
 (libhttp-request-ascgi-perl~4(c) IMPLIES perl~69(c) AND (libwww-perl~27(c) OR libwww-perl~20(c)) AND libclass-accessor-perl(c)) AND 
 (NOT kde-i18n-uk~5(c)) AND 
 (NOT openchangeclient~1(c)) AND 
 (NOT openguides~2(c)) AND 
 (NOT enfuse~1(c)) AND 
 (NOT libxml-libxslt-perl~1(c)) AND 
 (NOT linux-image-vserver-amd64~2(c)) AND 
 (NOT python-tau~2(c)) AND 
 (NOT texlive-xetex~4(c)) AND 
 (bacula-server~2(c) IMPLIES (bacula-director-pgsql~3(c) OR bacula-director-pgsql~1(c) OR bacula-director-pgsql~3(c) OR bacula-director-pgsql~1(c)) AND bacula-sd~5(c) AND (bacula-sd-sqlite3~1(c) OR bacula-sd-sqlite3~1(c) OR bacula-sd-pgsql~3(c) OR bacula-sd-sqlite3~2(c) OR bacula-sd-mysql~1(c) OR bacula-sd-sqlite3~2(c))) AND 
 (wesnoth-tsg~1(c) IMPLIES wesnoth(c)) AND 
 (NOT libsoci-postgresql-gcc~1(c)) AND 
 (NOT libsasl2-gssapi-mit~2(c)) AND 
 (NOT kde-i18n-tr~5(c)) AND 
 (NOT jabber-aim~2(c)) AND 
 (NOT python-avogadro~1(c)) AND 
 (NOT rdtool~3(c)) AND 
 (NOT libxaw7-dev~2(c)) AND 
 (NOT libnetfilter-conntrack1~5(c)) AND 
 (NOT libnewmat10ldbl~1(c)) AND 
 (NOT maven2~1(c)) AND 
 (NOT seed~1(c)) AND 
 (NOT imms~1(c)) AND 
 (NOT libbt~1(c)) AND 
 (NOT libmcal0~2(c)) AND 
 (gnus-bonus-el~3(c) IMPLIES (emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs~1(c) OR emacs23(c) OR emacs23-lucid~1(c) OR emacs23-lucid~1(c)) AND (xemacs21-mule-canna-wnn~2(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23(c) OR emacs23-lucid~1(c) OR emacs23-lucid~1(c))) AND 
 (NOT manderlbot~2(c)) AND 
 (xxdiff-scripts~1(c) IMPLIES python~22(c) AND python-support~7(c) AND xxdiff(c)) AND 
 (NOT keurocalc~2(c)) AND 
 (NOT libboost-mpi-python1.40.0~1(c)) AND 
 (openoffice.org-style-tango~2(c) IMPLIES openoffice.org-common~28(c)) AND 
 (NOT xfce4-clipman-plugin~4(c)) AND 
 (libaliased-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT imp4~1(c)) AND 
 (NOT libxfcegui4-4~5(c)) AND 
 (monsterz-data~1(c) IMPLIES python-pygame(c) AND python(c)) AND 
 (paw++-static~2(c) IMPLIES paw++~2(c)) AND 
 (NOT python-oauth~1(c)) AND 
 (NOT xcal~2(c)) AND 
 (NOT kde-i18n-sv~5(c)) AND 
 (NOT libhttp-ocaml-dev~2(c)) AND 
 (NOT kde-i18n-sr~5(c)) AND 
 (NOT gl-117~3(c)) AND 
 (NOT pyqonsole~1(c)) AND 
 (NOT libhtml-parser-perl~14(c)) AND 
 (NOT doodled~1(c)) AND 
 (NOT hotkeys~2(c)) AND 
 (NOT python-traitsgui~1(c)) AND 
 (NOT wackamole~1(c)) AND 
 (NOT kde-i18n-sl~5(c)) AND 
 (NOT kde-i18n-sk~5(c)) AND 
 (NOT icedove-dev~1(c)) AND 
 (NOT libpurple-dev~3(c)) AND 
 (NOT cups-ppdc~2(c)) AND 
 (NOT libsys-cpuload-perl~1(c)) AND 
 (NOT libdiscid0~1(c)) AND 
 (NOT xteddy~2(c)) AND 
 (NOT libb-hooks-op-check-perl~2(c)) AND 
 (NOT open-iscsi~3(c)) AND 
 (NOT texlive~4(c)) AND 
 (NOT twlog~3(c)) AND 
 (libcatalyst-manual-perl~2(c) IMPLIES perl(c)) AND 
 (NOT mozilla-firefox-locale-ru-ru~2(c)) AND 
 (NOT postgresql~9(c)) AND 
 (NOT kde-i18n-ru~5(c)) AND 
 (NOT plasma-scriptengines~2(c)) AND 
 (NOT libneon26-dev~1(c)) AND 
 (NOT uim-byeoru~3(c)) AND 
 (libmono-i18n-west2.0-cil~2(c) IMPLIES (libmono-corlib2.0-cil~6(c) OR libmono-corlib2.0-cil~10(c))) AND 
 (NOT libapt-rpm-pkg-libc6.3-6-2~1(c)) AND 
 (NOT libdevel-findref-perl~1(c)) AND 
 (NOT alsaplayer-jack~2(c)) AND 
 (NOT libnetpbm9-dev~2(c)) AND 
 (NOT libjava-gnome-jni~1(c)) AND 
 (NOT python-twisted-names~7(c)) AND 
 (NOT libswirl-java-gcj~1(c)) AND 
 (NOT lcd4linux~2(c)) AND 
 (NOT gfortran-4.4-multilib~2(c)) AND 
 (NOT albumshaper~2(c)) AND 
 (NOT libgnomedb3-4~1(c)) AND 
 (NOT libustr-1.0-1~2(c)) AND 
 (NOT billard-gl~1(c)) AND 
 (NOT r-base-html~1(c)) AND 
 (NOT mpack~2(c)) AND 
 (NOT texlive-science-doc~2(c)) AND 
 (NOT ember~1(c)) AND 
 (NOT asterisk-classic~1(c)) AND 
 (NOT python-axiom~1(c)) AND 
 (NOT castle-combat~1(c)) AND 
 (NOT libopentoken-dev~1(c)) AND 
 (NOT libmadlib-dev~1(c)) AND 
 (NOT libxtrap6-dbg~1(c)) AND 
 (NOT zabbix-proxy-pgsql~1(c)) AND 
 (libmono-cairo1.0-cil~6(c) IMPLIES libcairo2~25(c) AND libmono-corlib1.0-cil~3(c)) AND 
 (NOT libedata-book1.2-2~8(c)) AND 
 (NOT libxml-security-c-dev~6(c)) AND 
 (NOT mysql-server-5.1~2(c)) AND 
 (NOT libfftw3-dev~1(c)) AND 
 (NOT mysql-server-5.0~2(c)) AND 
 (NOT paw++~2(c)) AND 
 (NOT paje.app~2(c)) AND 
 (NOT pslib-dev~2(c)) AND 
 (NOT wireshark-common~4(c)) AND 
 (NOT amphetamine~1(c)) AND 
 (lyskom-elisp-client~2(c) IMPLIES (emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs~1(c)) AND (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c))) AND 
 (NOT neko-dev~3(c)) AND 
 (NOT php5-sybase~1(c)) AND 
 (NOT passepartout~1(c)) AND 
 (NOT r-cran-futilities~1(c)) AND 
 (NOT libicu42-dbg~1(c)) AND 
 (NOT neutrino~1(c)) AND 
 (NOT tokyocabinet-bin~2(c)) AND 
 (NOT libpmap0~1(c)) AND 
 (NOT libcroco3~4(c)) AND 
 (NOT calcurse~2(c)) AND 
 (NOT gwenview-i18n~1(c)) AND 
 (NOT xfs~4(c)) AND 
 (NOT kde-i18n-pt~5(c)) AND 
 (NOT libxaw7-dbg~2(c)) AND 
 (NOT ivtv-utils~2(c)) AND 
 (NOT ion3~2(c)) AND 
 (NOT vdr-plugin-spider~1(c)) AND 
 (NOT nagios-plugins-standard~1(c)) AND 
 (NOT xcalendar-i18n~2(c)) AND 
 (NOT libmarc-charset-perl~3(c)) AND 
 (NOT libggi-samples~2(c)) AND 
 (NOT libmusclecard-dev~1(c)) AND 
 (NOT schedtool~1(c)) AND 
 (NOT xscreensaver-gl~1(c)) AND 
 (dict-elements~1(c) IMPLIES (serpento~1(c) OR dictd~4(c) OR dictd(c))) AND 
 (NOT festlex-oald~5(c)) AND 
 (NOT libgl1-mesa-dev~1(c)) AND 
 (libvte-ruby1.8-dbg~2(c) IMPLIES libvte-ruby1.8~2(c)) AND 
 (NOT libasis-dev~2(c)) AND 
 (NOT kde-i18n-pl~5(c)) AND 
 (NOT libgnomecanvasmm-2.6-1c2a~4(c)) AND 
 (php-xajax~1(c) IMPLIES php4-cgi(c)) AND 
 (NOT sipp-dev~1(c)) AND 
 (NOT libopenssl-ruby1.8~5(c)) AND 
 (NOT kstart~1(c)) AND 
 (NOT openoffice.org-gcj~1(c)) AND 
 (NOT collectd-hddtemp~1(c)) AND 
 (NOT dropbear~2(c)) AND 
 (NOT lusernet.app~1(c)) AND 
 (NOT tar~9(c)) AND 
 (NOT libraptor1~5(c)) AND 
 (NOT aolserver4-xotcl~1(c)) AND 
 (NOT ketchup~2(c)) AND 
 (NOT libmudflap0-dev~2(c)) AND 
 (NOT openoffice.org-common~28(c)) AND 
 (NOT libqof-backend-sqlite0~1(c)) AND 
 (NOT liblablgtk2-ocaml~6(c)) AND 
 (NOT osdclock~2(c)) AND 
 (NOT egroupware-sitemgr~2(c)) AND 
 (NOT scamper~1(c)) AND 
 (NOT libvorbis-ocaml~2(c)) AND 
 (cl-mcclim-examples~2(c) IMPLIES common-lisp-controller~17(c)) AND 
 (liblingua-en-inflect-perl~3(c) IMPLIES perl(c)) AND 
 (NOT python-visual~2(c)) AND 
 (NOT autossh~2(c)) AND 
 (NOT erlang-eunit~1(c)) AND 
 (NOT libtest-prereq-perl~1(c)) AND 
 (icedove-dbg~1(c) IMPLIES icedove~5(c)) AND 
 (NOT libykclient3~1(c)) AND 
 (NOT krb5-kdc-ldap~2(c)) AND 
 (NOT librdf-ruby~1(c)) AND 
 (NOT libneon26-dbg~1(c)) AND 
 (cyrus-sasl2-dbg~6(c) IMPLIES libsasl2-2~4(c)) AND 
 (NOT mas-server~1(c)) AND 
 (NOT libsqlite3-ocaml~2(c)) AND 
 (NOT root-system-proofd~1(c)) AND 
 (NOT libksieve0-dev~2(c)) AND 
 (NOT gbindadmin~1(c)) AND 
 (cl-who~1(c) IMPLIES common-lisp-controller~17(c)) AND 
 (NOT libcap2~3(c)) AND 
 (NOT libkpimexchange1-dev~1(c)) AND 
 (libclass-multimethods-perl~1(c) IMPLIES perl~69(c)) AND 
 (libxalan2-java~2(c) IMPLIES libjaxp1.3-java(c) AND libxerces2-java~5(c)) AND 
 (NOT libcanberra-gstreamer~1(c)) AND 
 (NOT kde-i18n-nl~5(c)) AND 
 (NOT libroot-proof-proofplayer5.24~1(c)) AND 
 (NOT findutils~10(c)) AND 
 (NOT svn-arch-mirror~1(c)) AND 
 (NOT libmesh-dev~1(c)) AND 
 (nice~1(c) IMPLIES (gcj-4.4-jre-headless~3(c) OR gcj-4.4-jre-headless~3(c)) AND (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c) OR gcj-4.4-jre~2(c))) AND 
 (NOT museekd-tools~1(c)) AND 
 (NOT libcatalyst-view-tt-perl~2(c)) AND 
 (NOT xmame-x~2(c)) AND 
 (NOT java-gcj-compat-dev~6(c)) AND 
 (NOT libmadlib-dbg~1(c)) AND 
 (NOT kviewshell~3(c)) AND 
 (NOT kde-i18n-nb~5(c)) AND 
 (NOT fluidsynth~2(c)) AND 
 (NOT vdr-plugin-femon~2(c)) AND 
 (NOT libstaden-read-dev~1(c)) AND 
 (NOT libaprutil1-ldap~1(c)) AND 
 (NOT xmms2-client-avahi~3(c)) AND 
 (NOT zope-cookiecrumbler~1(c)) AND 
 (NOT libvcdinfo0~2(c)) AND 
 (libhtml-template-compiled-perl~1(c) IMPLIES perl(c)) AND 
 (NOT libtextwrap1~2(c)) AND 
 (NOT libgmyth0~1(c)) AND 
 (NOT lintian~4(c)) AND 
 (NOT dspam~2(c)) AND 
 (NOT festival-dev~2(c)) AND 
 (NOT ncurses-bin~1(c)) AND 
 (NOT vuurmuur-dbg~1(c)) AND 
 (NOT libgtkhtml2-dev~2(c)) AND 
 (NOT libaprutil1-dbd-sqlite3~1(c)) AND 
 (NOT tellico~2(c)) AND 
 (NOT dump~3(c)) AND 
 (NOT libcamlimages-ocaml~1(c)) AND 
 (NOT iwatch~1(c)) AND 
 (libgdbm-ruby~1(c) IMPLIES libgdbm-ruby1.8(c)) AND 
 (NOT libaunit2~1(c)) AND 
 (NOT libmono-db2-1.0-cil~3(c)) AND 
 (NOT linux-headers-2.6.26-1-amd64~1(c)) AND 
 (NOT weirdx~1(c)) AND 
 (NOT kde-i18n-lv~5(c)) AND 
 (NOT gstreamer0.10-gnomevfs~2(c)) AND 
 (NOT guile-gnutls~3(c)) AND 
 (NOT mozilla-thunderbird-locale-pt-br~2(c)) AND 
 (NOT pppdcapiplugin~3(c)) AND 
 (python-nwsclient~2(c) IMPLIES python(c) AND python-central~22(c) AND python2.4(c)) AND 
 (NOT libboost-signals1.39-dev~1(c)) AND 
 (libjgroups-java~1(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c))) AND 
 (NOT uim-canna~1(c)) AND 
 (liblasi-dev~2(c) IMPLIES liblasi0~2(c)) AND 
 (NOT ndoutils-nagios3-mysql~1(c)) AND 
 (NOT r-cran-zoo~4(c)) AND 
 (NOT kiconedit~3(c)) AND 
 (libgnutls26-dbg~1(c) IMPLIES libgnutls26~3(c)) AND 
 (NOT libmecab-java~1(c)) AND 
 (cl-rsm-fuzzy~1(c) IMPLIES common-lisp-controller~17(c)) AND 
 (NOT littler~1(c)) AND 
 (wfinnish~2(c) IMPLIES (dictionaries-common~20(c) OR dictionaries-common~15(c)) AND (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf(c))) AND 
 (wordtrans-web~1(c) IMPLIES php4-cgi(c) AND wordtrans-kde~1(c)) AND 
 (NOT squid~5(c)) AND 
 (NOT bash~19(c)) AND 
 (NOT xdmx~3(c)) AND 
 (NOT libmudflap0-dbg~2(c)) AND 
 (NOT tcltls~1(c)) AND 
 (NOT vtk-tcl~2(c)) AND 
 (NOT libxmlsec1-gnutls~2(c)) AND 
 (NOT sdop~1(c)) AND 
 (myspell-en-gb~4(c) IMPLIES (dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c))) AND 
 (NOT sloccount~1(c)) AND 
 (NOT shntool~1(c)) AND 
 (iceweasel-l10n-ta-lk~2(c) IMPLIES iceweasel~16(c) AND (iceweasel~16(c) OR iceweasel~5(c))) AND 
 (NOT python-pastedeploy~9(c)) AND 
 (NOT iceweasel-beagle~1(c)) AND 
 (NOT stealth~1(c)) AND 
 (NOT convirt~1(c)) AND 
 (NOT libmocha-ruby~1(c)) AND 
 (ivy-doc~1(c) IMPLIES (classpath-doc(c) OR libgcj-doc~3(c) OR libgcj-doc~3(c) OR openjdk-6-doc(c))) AND 
 (NOT spl-opengl~1(c)) AND 
 (NOT wsjt~1(c)) AND 
 (NOT libghc6-gtkglext-dev~2(c)) AND 
 (NOT fortune-zh~1(c)) AND 
 (NOT mailutils-mh~1(c)) AND 
 (NOT libwnck2.20-cil~4(c)) AND 
 (NOT openarena~2(c)) AND 
 (NOT libmapnik0.6~1(c)) AND 
 (NOT libfinance-yahooquote-perl~2(c)) AND 
 (NOT geneweb~1(c)) AND 
 (NOT libnet-pcap-perl~1(c)) AND 
 (NOT nettoe~2(c)) AND 
 (sylpheed-claws-scripts~1(c) IMPLIES perl(c) AND python(c)) AND 
 (NOT mldonkey-gui~2(c)) AND 
 (NOT libsilc-1.1-2~2(c)) AND 
 (NOT pasmo~2(c)) AND 
 (NOT gtk-theme-switch~1(c)) AND 
 (NOT hsolink~1(c)) AND 
 (NOT linux-wlan-ng-firmware~1(c)) AND 
 (NOT checkstyle~1(c)) AND 
 (NOT libxss1-dbg~1(c)) AND 
 (NOT libhx22~1(c)) AND 
 (NOT libebackend1.2-dev~2(c)) AND 
 (libcue-dev~1(c) IMPLIES libcue1~1(c)) AND 
 (NOT crafty-books-medtosmall~2(c)) AND 
 (NOT jikes-sablevm~1(c)) AND 
 (NOT ser-acc-radius-module~2(c)) AND 
 (NOT t1utils~2(c)) AND 
 (NOT libostyle-dev~2(c)) AND 
 (NOT libsetools-tcl~1(c)) AND 
 (littex~1(c) IMPLIES (tex-common~15(c) OR tex-common~7(c)) AND lmodern(c)) AND 
 (NOT libksgrd4~4(c)) AND 
 (NOT libnet-daap-dmap-perl~1(c)) AND 
 (NOT libotp0-heimdal~1(c)) AND 
 (libmagic-dev~1(c) IMPLIES libmagic1~1(c)) AND 
 (NOT linux-headers-2.6.18-6-all-amd64~1(c)) AND 
 (NOT tapecalc~1(c)) AND 
 (NOT chase~1(c)) AND 
 (NOT fbset~3(c)) AND 
 (NOT xawtv~4(c)) AND 
 (NOT liblwp-authen-negotiate-perl~1(c)) AND 
 (NOT sensors-applet~1(c)) AND 
 (NOT slsh~5(c)) AND 
 (NOT x11proto-xinerama-dev~2(c)) AND 
 (NOT libmjollnir0~2(c)) AND 
 (NOT libtar~2(c)) AND 
 (NOT wesnoth-all~4(c)) AND 
 (NOT libmimedir-gnome0-dev~2(c)) AND 
 (NOT e16keyedit~1(c)) AND 
 (NOT scalapack-pvm-dev~1(c)) AND 
 (NOT hsqldb-utils~1(c)) AND 
 (NOT ohphone-basic~1(c)) AND 
 (NOT gobjc++~3(c)) AND 
 (NOT tircd~1(c)) AND 
 (NOT quassel-client~1(c)) AND 
 (NOT charm~1(c)) AND 
 (NOT kde-i18n-it~5(c)) AND 
 (NOT kde-i18n-ja~5(c)) AND 
 (NOT ser-mysql-module~1(c)) AND 
 (NOT libflexdock-jni~1(c)) AND 
 (NOT slrn~5(c)) AND 
 (NOT ivtv-modules-2.6.18-6-amd64~1(c)) AND 
 (libtime-progress-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT matchbox~3(c)) AND 
 (NOT libgo-perl~1(c)) AND 
 (NOT gforge-db-postgresql~3(c)) AND 
 (NOT liblua5.1-0~2(c)) AND 
 (NOT tinymux~2(c)) AND 
 (NOT mrwtoppm-gimp~1(c)) AND 
 (NOT regina3~2(c)) AND 
 (NOT kooka~2(c)) AND 
 (libitext-java~2(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c))) AND 
 (libmono-microsoft-build2.0-cil~2(c) IMPLIES (libmono-corlib2.0-cil~6(c) OR libmono-corlib2.0-cil~10(c)) AND libmono-system2.0-cil~13(c) AND libmono-winforms2.0-cil~2(c)) AND 
 (xemacs21-gnome-mule-canna-wnn~2(c) IMPLIES xemacs21-mule-canna-wnn(c)) AND 
 (NOT python-logilab-astng~5(c)) AND 
 (NOT xringd~2(c)) AND 
 (NOT libavahi-gobject-dev~2(c)) AND 
 (NOT xnetload~1(c)) AND 
 (addressview.framework~3(c) IMPLIES libaddressview-dev(c) AND libaddressview0(c)) AND 
 (NOT kde-i18n-hu~5(c)) AND 
 (NOT libuno-cli-basetypes1.0-cil~2(c)) AND 
 (NOT pango-graphite~1(c)) AND 
 (NOT pulseaudio-module-gconf~4(c)) AND 
 (NOT libtest-cpan-meta-perl~1(c)) AND 
 (NOT gs-esp~5(c)) AND 
 (NOT python-feedvalidator~1(c)) AND 
 (NOT libgps17~1(c)) AND 
 (NOT softbeep~2(c)) AND 
 (NOT libnamespace-clean-perl~4(c)) AND 
 (NOT icewm-experimental~2(c)) AND 
 (NOT pyching~1(c)) AND 
 (NOT libpanelappletmm-2.6-dev~1(c)) AND 
 (NOT sawfish~6(c)) AND 
 (NOT babel-1.4.0~1(c)) AND 
 (libdevel-cycle-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT unifdef~1(c)) AND 
 (NOT python-aspects~1(c)) AND 
 (NOT docbook-html-forms~1(c)) AND 
 (NOT python-qt4-dev~3(c)) AND 
 (NOT libdbus-1-dev~14(c)) AND 
 (NOT mnogosearch-sqlite~2(c)) AND 
 (NOT effectv~1(c)) AND 
 (libcommons-pool-java~2(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c) OR gcj-4.4-jre~2(c))) AND 
 (libdatetime-format-iso8601-perl~1(c) IMPLIES perl~69(c) AND libdatetime-perl~15(c) AND libdatetime-format-builder-perl~6(c)) AND 
 (NOT lsh-doc~1(c)) AND 
 (libpoe-perl~5(c) IMPLIES perl~69(c) AND libfilter-perl(c)) AND 
 (NOT openser-xmpp-module~1(c)) AND 
 (libgearman-client-perl~2(c) IMPLIES libstring-crc32-perl(c) AND perl~69(c)) AND 
 (NOT nagzilla~1(c)) AND 
 (NOT sagasu~2(c)) AND 
 (NOT zope-ploneformgen~1(c)) AND 
 (NOT libpoppler-qt-dev~2(c)) AND 
 (NOT libwpd-tools~2(c)) AND 
 (python-louie~1(c) IMPLIES python~22(c) AND python-central~22(c)) AND 
 (NOT libboost-math1.40.0~1(c)) AND 
 (NOT gambas2-gb-compress-bzlib2~2(c)) AND 
 (NOT sqlite~1(c)) AND 
 (backup2l~1(c) IMPLIES findutils~10(c)) AND 
 (NOT hexalate~1(c)) AND 
 (NOT liblzma0~3(c)) AND 
 (NOT swi-prolog-http~1(c)) AND 
 (NOT crm114~3(c)) AND 
 (NOT dcgui~1(c)) AND 
 (NOT openjade1.3~1(c)) AND 
 (NOT libst1~2(c)) AND 
 (NOT libpoconet8~1(c)) AND 
 (NOT blender~1(c)) AND 
 (NOT libfontconfig1-dbg~1(c)) AND 
 (NOT libgnome2-perl~4(c)) AND 
 (NOT libmlpcap-ocaml~1(c)) AND 
 (NOT bogofilter-sqlite~2(c)) AND 
 (NOT kde-i18n-fr~5(c)) AND 
 (NOT clamav-base~5(c)) AND 
 (NOT nvidia-kernel-legacy-2.6.18-4-amd64~1(c)) AND 
 (NOT libcv-dev~2(c)) AND 
 (NOT ri1.8~4(c)) AND 
 (icedove-gcontactsync~1(c) IMPLIES icedove~13(c)) AND 
 (NOT libgv-php5~1(c)) AND 
 (NOT libfoundation1.0~2(c)) AND 
 (NOT x11proto-xf86vidmode-dev~1(c)) AND 
 (NOT ssldump~1(c)) AND 
 (NOT qt4-qmake~1(c)) AND 
 (NOT libmail-cclient-perl~1(c)) AND 
 (NOT cyrus2courier~1(c)) AND 
 (NOT kde-i18n-fi~5(c)) AND 
 (NOT libsidutils0~1(c)) AND 
 (python-twisted-lore~3(c) IMPLIES python(c) AND python-central~22(c) AND python-twisted-web~10(c)) AND 
 (NOT sun-java6-javadb~1(c)) AND 
 (NOT flobopuyo~1(c)) AND 
 (NOT libterm-readkey-perl~4(c)) AND 
 (NOT libdb4.6-java-gcj~2(c)) AND 
 (NOT uim-xim~2(c)) AND 
 (NOT xfig~4(c)) AND 
 (NOT libsfst1-1.2-0-dev~1(c)) AND 
 (NOT libgnomeprint15~2(c)) AND 
 (NOT tex-gyre~1(c)) AND 
 (NOT munin-plugins-extra~2(c)) AND 
 (NOT kde-i18n-eu~5(c)) AND 
 (NOT libtzinfo-ruby~1(c)) AND 
 (NOT kde-i18n-et~5(c)) AND 
 (NOT wesnoth-trow~3(c)) AND 
 (NOT kde-i18n-es~5(c)) AND 
 (NOT rrdcollect~2(c)) AND 
 (NOT libyubikey0~2(c)) AND 
 (NOT liberis-1.3-dev~1(c)) AND 
 (NOT libtext-csv-perl~2(c)) AND 
 (NOT python-webkit~2(c)) AND 
 (NOT xmountains~2(c)) AND 
 (NOT dsdp~2(c)) AND 
 (phpgroupware-todo~1(c) IMPLIES (phpgroupware~2(c) OR phpgroupware~5(c))) AND 
 (NOT libwww-indexparser-perl~2(c)) AND 
 (NOT hplip-dbg~1(c)) AND 
 (NOT kde-i18n-el~5(c)) AND 
 (sdic~1(c) IMPLIES (emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs~1(c))) AND 
 (NOT klettres~3(c)) AND 
 (NOT eclipse-pde~3(c)) AND 
 (NOT pymacs~2(c)) AND 
 (NOT yydecode~1(c)) AND 
 (NOT kdebase-workspace-dev~3(c)) AND 
 (NOT trac-mastertickets~1(c)) AND 
 (latex209-bin~1(c) IMPLIES texlive-base-bin(c) AND latex209-base(c)) AND 
 (NOT icewm~3(c)) AND 
 (toolbar-fancy~1(c) IMPLIES (xemacs21-mule-canna-wnn~2(c) OR xemacs21-mule-canna-wnn~2(c))) AND 
 (NOT fusefat~1(c)) AND 
 (NOT expect~4(c)) AND 
 (NOT dput~1(c)) AND 
 (NOT rwho~1(c)) AND 
 (NOT libclaw-configuration-file1~2(c)) AND 
 (libclass-data-accessor-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT xbel~2(c)) AND 
 (NOT mgetty-fax~2(c)) AND 
 (NOT libtulip-ogl-2.0-dev~1(c)) AND 
 (NOT libroxen-group~1(c)) AND 
 (NOT libiax0~1(c)) AND 
 (NOT wsola~1(c)) AND 
 (NOT gstreamer0.10-plugins-base-doc~4(c)) AND 
 (NOT goto-fai-progress~1(c)) AND 
 (NOT libgfs-1.3-1~1(c)) AND 
 (NOT nemerle~2(c)) AND 
 (NOT tortoisehg~1(c)) AND 
 (libpgraphutil-smlnj~1(c) IMPLIES smlnj~1(c)) AND 
 (sfftw-dev~2(c) IMPLIES sfftw2~2(c)) AND 
 (NOT mono-apache-server2~8(c)) AND 
 (NOT iec16022~3(c)) AND 
 (NOT freebsd-sendpr~3(c)) AND 
 (NOT libscalar-list-utils-perl~5(c)) AND 
 (NOT libsox-fmt-ffmpeg~1(c)) AND 
 (NOT apertium-es-pt~2(c)) AND 
 (NOT libqttestrunner1c2a~1(c)) AND 
 (jhove~1(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c) OR sun-java5-bin(c))) AND 
 (NOT hyphen-show~2(c)) AND 
 (guile-www~1(c) IMPLIES (guile-1.6~4(c) OR guile-1.6~4(c) OR guile-1.6(c))) AND 
 (NOT flowscan~1(c)) AND 
 (NOT cyrus-sasl2-heimdal-dbg~3(c)) AND 
 (NOT kde-i18n-de~5(c)) AND 
 (NOT rt3.6-clients~2(c)) AND 
 (NOT ruby1.8~7(c)) AND 
 (NOT libkarma0~1(c)) AND 
 (NOT libvelocity-tools-java~1(c)) AND 
 (NOT python-pyvtk~2(c)) AND 
 (NOT kde-i18n-da~5(c)) AND 
 (NOT kde-i18n-cs~5(c)) AND 
 (NOT xserver-xorg-input-all~2(c)) AND 
 (NOT xengine~2(c)) AND 
 (NOT lhs2tex~3(c)) AND 
 (NOT klines~1(c)) AND 
 (NOT rovclock~1(c)) AND 
 (NOT xgraph~2(c)) AND 
 (NOT mrwtoppm~2(c)) AND 
 (redmine-sqlite~1(c) IMPLIES libdbd-sqlite3-ruby(c) AND sqlite3(c)) AND 
 (NOT snmp~6(c)) AND 
 (texlive-common~6(c) IMPLIES tex-common~15(c)) AND 
 (NOT libipc-pubsub-perl~2(c)) AND 
 (latex-cjk-thai~1(c) IMPLIES latex-cjk-common~1(c) AND tetex-base~16(c) AND (tex-common~15(c) OR tex-common~7(c))) AND 
 (NOT autofs5-hesiod~1(c)) AND 
 (libdatetime-format-w3cdtf-perl~2(c) IMPLIES perl(c) AND libdatetime-perl(c)) AND 
 (NOT python-dumbnet~1(c)) AND 
 (NOT kde-i18n-ca~5(c)) AND 
 (NOT latexdraw~1(c)) AND 
 (icedove-l10n-ga-ie~1(c) IMPLIES icedove~13(c) AND (icedove~13(c) OR icedove~5(c))) AND 
 (NOT libxml-rss-feed-perl~1(c)) AND 
 (NOT xfonts-intl-phonetic~1(c)) AND 
 (NOT pulseaudio-module-lirc~1(c)) AND 
 (NOT libfam0~2(c)) AND 
 (NOT buxon~1(c)) AND 
 (NOT keyboards-rg~1(c)) AND 
 (NOT yate-openh323~2(c)) AND 
 (cl-infix~1(c) IMPLIES common-lisp-controller~17(c)) AND 
 (NOT exiftran~2(c)) AND 
 (NOT vobcopy~1(c)) AND 
 (NOT python2.4~9(c)) AND 
 (NOT darcs-buildpackage~2(c)) AND 
 (NOT kompose~1(c)) AND 
 (NOT libipe1-dev~2(c)) AND 
 (NOT libcherokee-mod-admin~1(c)) AND 
 (NOT vdr-plugin-streamdev-client~1(c)) AND 
 (NOT xfce4-power-manager~3(c)) AND 
 (NOT kde-style-qtcurve~1(c)) AND 
 (NOT hfsprogs~1(c)) AND 
 (NOT libxcb-render-util0-dev~1(c)) AND 
 (NOT ohphone~2(c)) AND 
 (NOT rubberband-vamp~1(c)) AND 
 (NOT svn-buildpackage~1(c)) AND 
 (NOT libwill-paginate-ruby1.8~1(c)) AND 
 (libfont-ttf-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT libgphoto2-port0~4(c)) AND 
 (NOT libgnutls26~6(c)) AND 
 (NOT avant-window-navigator~2(c)) AND 
 (libdebug0-dev~3(c) IMPLIES libdebug0~3(c)) AND 
 (NOT libqscintilla2-dev~1(c)) AND 
 (NOT libglib2.0-0~5(c)) AND 
 (NOT kdebase-workspace-dbg~3(c)) AND 
 (NOT mb2md~1(c)) AND 
 (NOT screen-profiles~2(c)) AND 
 (NOT calcoo~2(c)) AND 
 (NOT gnustep-dl2~1(c)) AND 
 (libstfl-ruby~1(c) IMPLIES libstfl-ruby1.8(c)) AND 
 (libnet-ip-perl~2(c) IMPLIES perl~69(c)) AND 
 (geeqie-dbg~1(c) IMPLIES geeqie~2(c)) AND 
 (NOT slurm-llnl-sview~1(c)) AND 
 (NOT ncpfs~3(c)) AND 
 (NOT grub-linuxbios~4(c)) AND 
 (NOT scrollz~1(c)) AND 
 (libunshield-dev~1(c) IMPLIES libunshield0~2(c)) AND 
 (NOT libclass-dbi-asform-perl~2(c)) AND 
 (NOT sysstat~2(c)) AND 
 (NOT libmono-system-ldap1.0-cil~3(c)) AND 
 (NOT libsynaptics0~1(c)) AND 
 (NOT kimwitu~1(c)) AND 
 (NOT courier-base~3(c)) AND 
 (NOT xmms2-plugin-avcodec~2(c)) AND 
 (NOT aes2501-wy~1(c)) AND 
 (NOT sdcv~1(c)) AND 
 (NOT squashfs-tools~3(c)) AND 
 (NOT liblancelot-dev~1(c)) AND 
 (NOT isync~2(c)) AND 
 (NOT libtinymail-dev~1(c)) AND 
 (NOT libfloat-coq~1(c)) AND 
 (NOT libsm6~2(c)) AND 
 (NOT klaptopdaemon~1(c)) AND 
 (NOT libio-async-perl~2(c)) AND 
 (NOT proftpd-mod-pgsql~2(c)) AND 
 (NOT warsow~1(c)) AND 
 (NOT meep-mpi~1(c)) AND 
 (NOT libqglviewer-qt3-2~3(c)) AND 
 (NOT grads~1(c)) AND 
 (NOT gshare~2(c)) AND 
 (NOT liblua5.1-svn1~2(c)) AND 
 (NOT ocaml-findlib~4(c)) AND 
 (NOT wikipediafs~3(c)) AND 
 (NOT lib32readline5-dev~3(c)) AND 
 (NOT libmusclepkcs11~1(c)) AND 
 (NOT python-semanage~1(c)) AND 
 (NOT libhypre-dev~3(c)) AND 
 (NOT libhdf5-serial-1.6.5-0~1(c)) AND 
 (libgdcm2.0-dbg~2(c) IMPLIES libgdcm2.0~4(c)) AND 
 (NOT songwrite~2(c)) AND 
 (NOT vserver-debiantools~1(c)) AND 
 (NOT libupnp-dev~3(c)) AND 
 (pubtal~2(c) IMPLIES python~22(c) AND python-central~22(c) AND python-simpletal~1(c)) AND 
 (cl-lml2~3(c) IMPLIES common-lisp-controller~17(c) AND cl-kmrcl(c)) AND 
 (NOT libclan2c2a-gl~1(c)) AND 
 (NOT kio-gopher~1(c)) AND 
 (NOT libzeroc-ice-3.3-cil~1(c)) AND 
 (NOT gambas2-gb-crypt~3(c)) AND 
 (NOT libgnomedb2-4~1(c)) AND 
 (NOT cups-client~3(c)) AND 
 (NOT libqmmp-misc~1(c)) AND 
 (liq-contrib~1(c) IMPLIES liquidsoap(c)) AND 
 (proftpd~5(c) IMPLIES proftpd-basic(c) AND proftpd-mod-mysql(c) AND proftpd-mod-pgsql(c) AND proftpd-mod-ldap(c)) AND 
 (NOT libt1-5~3(c)) AND 
 (NOT libmon-perl~2(c)) AND 
 (NOT rxvt~2(c)) AND 
 (NOT libfontenc1~1(c)) AND 
 (NOT openoffice.org-base-core~2(c)) AND 
 (NOT libghc6-tagsoup-dev~2(c)) AND 
 (xmame-common~2(c) IMPLIES (xmess-sdl~1(c) OR xmame-x~2(c))) AND 
 (NOT libgv-tcl~3(c)) AND 
 (NOT amarok-utils~1(c)) AND 
 (NOT connman~2(c)) AND 
 (NOT libhugs-openal-bundled~1(c)) AND 
 (runit-services~2(c) IMPLIES runit~7(c) AND socklog(c)) AND 
 (NOT fabric~1(c)) AND 
 (NOT libdebconfclient0-dev~2(c)) AND 
 (NOT mumble-dbg~1(c)) AND 
 (NOT caudium-modules~1(c)) AND 
 (NOT libgpmg1~2(c)) AND 
 (NOT micropolis~1(c)) AND 
 (mysql-server-4.1~2(c) IMPLIES (mysql-server-5.0(c) OR mysql-server-5.1~2(c))) AND 
 (NOT libghc6-hdbc-odbc-dev~1(c)) AND 
 (libnet-ldap-filterbuilder-perl~1(c) IMPLIES perl(c)) AND 
 (NOT libgpevtype-dev~1(c)) AND 
 (NOT libparted1.8-12~2(c)) AND 
 (NOT libsyncml-utils~1(c)) AND 
 (NOT openbox-themes~2(c)) AND 
 (NOT wildmidi~1(c)) AND 
 (NOT kde-i18n-nds~4(c)) AND 
 (NOT bleachbit~1(c)) AND 
 (NOT libtomcrypt0~1(c)) AND 
 (NOT libbcpg-java-gcj~2(c)) AND 
 (NOT kcontrol~7(c)) AND 
 (NOT php4-uuid~1(c)) AND 
 (NOT python-rpy~2(c)) AND 
 (NOT libkfontinst4~2(c)) AND 
 (NOT facter~2(c)) AND 
 (NOT libgui-commands-java~1(c)) AND 
 (NOT libforms-bin~2(c)) AND 
 (NOT libgnatvsn4.4-dev~2(c)) AND 
 (NOT libidzebra-2.0-mod-dom~1(c)) AND 
 (vimacs~1(c) IMPLIES (vim(c) OR vim-gtk~4(c) OR vim-gnome~5(c) OR vim-gtk~4(c) OR vim-gnome~5(c) OR vim-lesstif~5(c))) AND 
 (firmware-ivtv~2(c) IMPLIES (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf(c))) AND 
 (NOT device-tree-compiler~1(c)) AND 
 (NOT wesnoth-sof~1(c)) AND 
 (NOT libasedrive-usb~2(c)) AND 
 (NOT inn2~2(c)) AND 
 (libmath-vec-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT mail-notification-evolution~1(c)) AND 
 (ndiff~1(c) IMPLIES perl~69(c) AND (nmap~4(c) OR nmap~5(c) OR nmap~7(c))) AND 
 (NOT python-rpm~2(c)) AND 
 (NOT xfonts-cronyx-koi8u-100dpi~1(c)) AND 
 (NOT junit4~2(c)) AND 
 (NOT gtkhtml3.8~3(c)) AND 
 (NOT kommander~2(c)) AND 
 (NOT dvilx~1(c)) AND 
 (NOT smbind~1(c)) AND 
 (NOT netsend~1(c)) AND 
 (NOT fp-utils~1(c)) AND 
 (NOT r-cran-date~1(c)) AND 
 (NOT bison-1.35~1(c)) AND 
 (NOT gtkpod~1(c)) AND 
 (NOT libgv-perl~3(c)) AND 
 (libdbd-sqlite3-ruby~2(c) IMPLIES libdbd-sqlite3-ruby1.8(c)) AND 
 (python-mode~1(c) IMPLIES xemacs21-bin(c) AND pymacs~2(c)) AND 
 (NOT lesstif-bin~1(c)) AND 
 (NOT dssi-utils~1(c)) AND 
 (libdb-file-lock-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT xapm~2(c)) AND 
 (NOT emacs~1(c)) AND 
 (NOT ktsuss~1(c)) AND 
 (NOT grabc~1(c)) AND 
 (NOT kernel-patch-nfs-ngroups~2(c)) AND 
 (NOT python-trml2pdf~1(c)) AND 
 (NOT libsolidcontrol4~4(c)) AND 
 (NOT htdig~2(c)) AND 
 (NOT gtk2-engines-magicchicken~3(c)) AND 
 (NOT libtsk3-3-dbg~1(c)) AND 
 (NOT wine-utils~3(c)) AND 
 (NOT libthreads-shared-perl~3(c)) AND 
 (NOT xsoldier~2(c)) AND 
 (NOT libgsl-ruby~1(c)) AND 
 (NOT jackbeat~1(c)) AND 
 (NOT kamera~1(c)) AND 
 (NOT libstring-crc32-perl~2(c)) AND 
 (NOT psp-samples-src~1(c)) AND 
 (NOT smarty-validate~1(c)) AND 
 (NOT libgpiv-mpi3~1(c)) AND 
 (NOT libtrash~2(c)) AND 
 (NOT qa-assistant~2(c)) AND 
 (NOT spread~2(c)) AND 
 (NOT xaos~2(c)) AND 
 (NOT libgphoto2-2-dev~1(c)) AND 
 (NOT libapache2-mod-fcgid~2(c)) AND 
 (cl-speech-dispatcher~2(c) IMPLIES common-lisp-controller(c) AND cl-regex(c)) AND 
 (NOT lib32gfortran3~3(c)) AND 
 (NOT libhocr-perl~2(c)) AND 
 (NOT dcmtk-www~1(c)) AND 
 (NOT libxml-dev~2(c)) AND 
 (NOT kdevelop3-doc~2(c)) AND 
 (libgooglecharts-ruby1.8~1(c) IMPLIES libruby1.8(c)) AND 
 (NOT netspeed~1(c)) AND 
 (NOT docutils-writer-manpage~3(c)) AND 
 (NOT librsvg2-dev~5(c)) AND 
 (NOT php5-gd~3(c)) AND 
 (NOT wdm~4(c)) AND 
 (NOT libradius1~1(c)) AND 
 (NOT liblasso-perl~1(c)) AND 
 (NOT libapache-authznetldap-perl~1(c)) AND 
 (NOT libforms-dev~3(c)) AND 
 (NOT bisho~2(c)) AND 
 (NOT libhighgui-dev~2(c)) AND 
 (postnews~2(c) IMPLIES python(c)) AND 
 (logwatch~1(c) IMPLIES perl(c) AND (nullmailer~1(c) OR courier-mta~3(c) OR postfix~16(c) OR esmtp-run~1(c))) AND 
 (NOT samtools~1(c)) AND 
 (NOT signing-party~2(c)) AND 
 (NOT libi18n-ruby~1(c)) AND 
 (NOT libotr2~5(c)) AND 
 (NOT libslv2-9~2(c)) AND 
 (NOT libpanel-applet2-ruby~3(c)) AND 
 (NOT asp.net2-examples~3(c)) AND 
 (NOT otrs2~2(c)) AND 
 (NOT php-geshi~4(c)) AND 
 (NOT prayer~6(c)) AND 
 (NOT libplot2c2~1(c)) AND 
 (NOT libgnome-keyring0~3(c)) AND 
 (NOT libdnas-core-0.32.5-0~1(c)) AND 
 (NOT sudo-ldap~2(c)) AND 
 (NOT libjinglexmllite0.3-0~1(c)) AND 
 (NOT libqtuitools2.2-cil~2(c)) AND 
 (NOT libdvdnav4~5(c)) AND 
 (NOT asp.net-examples~1(c)) AND 
 (monodoc-gdata-manual~1(c) IMPLIES monodoc-manual(c)) AND 
 (NOT libapq-postgresql-dev~1(c)) AND 
 (NOT yabasic~1(c)) AND 
 (NOT libgnatvsn4.4-dbg~2(c)) AND 
 (NOT kubrick~1(c)) AND 
 (NOT libobjc2~7(c)) AND 
 (NOT libboost-wave1.35-dev~1(c)) AND 
 (NOT pwauth~1(c)) AND 
 (NOT arch-buildpackage~2(c)) AND 
 (NOT balance~1(c)) AND 
 (NOT libdebian-package-make-perl~2(c)) AND 
 (NOT policykit~3(c)) AND 
 (NOT python-transmissionrpc~1(c)) AND 
 (NOT renrot~2(c)) AND 
 (NOT amarok~4(c)) AND 
 (NOT xfonts-bitmap-mule~1(c)) AND 
 (NOT libccs-dev~2(c)) AND 
 (NOT apache2-utils~1(c)) AND 
 (NOT libelfg0-dev~1(c)) AND 
 (NOT libgnatprj4.4-dev~1(c)) AND 
 (NOT libio-all-lwp-perl~1(c)) AND 
 (NOT libfreeradius2~2(c)) AND 
 (NOT libmail-imapclient-perl~3(c)) AND 
 (NOT python-kiwi~3(c)) AND 
 (NOT mkcue~2(c)) AND 
 (libcob1-dev~1(c) IMPLIES libcob1~1(c)) AND 
 (NOT mount~9(c)) AND 
 (NOT tetrinet-client~2(c)) AND 
 (NOT oftc-hybrid-respond~1(c)) AND 
 (python-pkg-resources~8(c) IMPLIES python~22(c) AND python~22(c) AND python-central~22(c)) AND 
 (NOT xxdiff~1(c)) AND 
 (NOT libportmidi0~1(c)) AND 
 (NOT callgit~1(c)) AND 
 (NOT djview4~1(c)) AND 
 (NOT modlogan~2(c)) AND 
 (NOT python-formencode~3(c)) AND 
 (NOT gtk-sharp2-examples~1(c)) AND 
 (NOT libcherokee-server0-dev~3(c)) AND 
 (NOT tcpreen~2(c)) AND 
 (NOT beep-media-player-scrobbler~1(c)) AND 
 (NOT libusbprog-dev~1(c)) AND 
 (NOT texlive-latex-recommended~6(c)) AND 
 (NOT ddccontrol~2(c)) AND 
 (NOT empire~1(c)) AND 
 (NOT njam~2(c)) AND 
 (NOT libchamplain-gtk-0.4-dev~2(c)) AND 
 (NOT wmweather~1(c)) AND 
 (NOT libwww-mechanize-perl~3(c)) AND 
 (NOT gcc-4.4-locales~1(c)) AND 
 (NOT gsm-utils~2(c)) AND 
 (gnustep-base-common~4(c) IMPLIES gnustep-common~5(c)) AND 
 (NOT kmidimon~1(c)) AND 
 (NOT gstreamer0.8-musepack~2(c)) AND 
 (NOT python-gnuradio-audio-oss~1(c)) AND 
 (NOT pidgin-festival~1(c)) AND 
 (NOT python-pysnmp-common~2(c)) AND 
 (NOT libfreetype6-dev~9(c)) AND 
 (NOT libmimelib4~1(c)) AND 
 (debian-reference-zh-tw~1(c) IMPLIES debian-reference-common~2(c)) AND 
 (NOT libi18n-charset-perl~2(c)) AND 
 (NOT openoffice.org-calc~12(c)) AND 
 (NOT w3m-el~2(c)) AND 
 (NOT pperl~2(c)) AND 
 (NOT ttf-unfonts~2(c)) AND 
 (NOT phpsysinfo~1(c)) AND 
 (NOT liblinphone1-dev~1(c)) AND 
 (NOT egroupware-projectmanager~2(c)) AND 
 (NOT libphat0~2(c)) AND 
 (NOT gnokii~5(c)) AND 
 (libcommons-lang-java~4(c) IMPLIES (gcj-4.4-jre-headless~3(c) OR gcj-4.4-jre-headless~3(c) OR gcj-4.4-jre-headless~3(c) OR gcj-4.4-jre-headless~3(c))) AND 
 (libfcgi-procmanager-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT python-pydoctor~1(c)) AND 
 (NOT tesseract-ocr-deu-f~1(c)) AND 
 (libdw-dev~1(c) IMPLIES libelf-dev(c)) AND 
 (NOT localepurge~2(c)) AND 
 (NOT scilab-scimax~1(c)) AND 
 (NOT libvdkbuilder2c2~1(c)) AND 
 (NOT libapq-postgresql-dbg~1(c)) AND 
 (NOT ttf-gujarati-fonts~3(c)) AND 
 (NOT fglrx-kernel-src~4(c)) AND 
 (NOT mountpy~1(c)) AND 
 (NOT gimp2.0-quiteinsane~2(c)) AND 
 (NOT habak~2(c)) AND 
 (NOT libgp11-dev~3(c)) AND 
 (NOT qcomicbook~1(c)) AND 
 (NOT libace-tkreactor-dev~2(c)) AND 
 (NOT apertium-es-ca~2(c)) AND 
 (NOT recoverjpeg~1(c)) AND 
 (NOT dvifb~1(c)) AND 
 (NOT tripod~1(c)) AND 
 (NOT libsc7~2(c)) AND 
 (NOT libgconf-cil~2(c)) AND 
 (NOT libgraflib1-dev~3(c)) AND 
 (NOT tao-trading~2(c)) AND 
 (NOT gs~13(c)) AND 
 (NOT libaal-dev~3(c)) AND 
 (NOT rinetd~1(c)) AND 
 (NOT liboggplay1~1(c)) AND 
 (NOT libqmmpui-dev~1(c)) AND 
 (NOT libcsound64-5.2~4(c)) AND 
 (libnanoxml2-java-doc~1(c) IMPLIES (classpath-doc(c) OR libgcj-doc~3(c) OR libgcj-doc~3(c))) AND 
 (NOT libsdl-net1.2~1(c)) AND 
 (NOT liboss-salsa-asound2~1(c)) AND 
 (NOT pbuilder-uml~1(c)) AND 
 (python-mpdclient~2(c) IMPLIES python(c) AND python-support(c)) AND 
 (NOT ssmping~2(c)) AND 
 (NOT scli~1(c)) AND 
 (NOT cheesetracker~2(c)) AND 
 (NOT libgnatprj4.4-dbg~1(c)) AND 
 (NOT libgraphics-magick-perl~4(c)) AND 
 (NOT debconf~35(c)) AND 
 (NOT splat~2(c)) AND 
 (NOT libgdiplus~2(c)) AND 
 (NOT libgwyddion2-0~2(c)) AND 
 (NOT openoffice.org-impress~10(c)) AND 
 (NOT semi~2(c)) AND 
 (NOT etpan-ng~2(c)) AND 
 (NOT postgresql-8.3-postgis~2(c)) AND 
 (NOT pgdesigner~1(c)) AND 
 (NOT tryton-modules-account-invoice~1(c)) AND 
 (NOT libmpd1~1(c)) AND 
 (NOT tclthread~1(c)) AND 
 (NOT libmpd0~1(c)) AND 
 (NOT libgdome2-xslt-ocaml-dev~1(c)) AND 
 (NOT libatspi1.0-0~4(c)) AND 
 (NOT bincimap-run~2(c)) AND 
 (NOT librpcsecgss3~1(c)) AND 
 (NOT libwine-capi~1(c)) AND 
 (NOT libextutils-pkgconfig-perl~5(c)) AND 
 (libfile-type-perl~1(c) IMPLIES perl~69(c)) AND 
 (uim-common~6(c) IMPLIES im-switch(c)) AND 
 (NOT libexempi3-dbg~1(c)) AND 
 (NOT libmono-system1.0-cil~6(c)) AND 
 (NOT xcin~3(c)) AND 
 (NOT cpp~5(c)) AND 
 (NOT libchamplain-gtk-0.4-dbg~2(c)) AND 
 (phpgroupware-setup~1(c) IMPLIES (phpgroupware~2(c) OR phpgroupware~5(c))) AND 
 (NOT unixodbc~8(c)) AND 
 (NOT libmpc2~1(c)) AND 
 (NOT libwww-mechanize-ruby-doc~1(c)) AND 
 (NOT libghc6-xmonad-doc~1(c)) AND 
 (NOT kolab-cyrus-imapd~1(c)) AND 
 (NOT libbarby-ruby~1(c)) AND 
 (NOT libsvnqt-dev~2(c)) AND 
 (NOT clamav-dbg~4(c)) AND 
 (NOT gphpedit~1(c)) AND 
 (NOT mplayer~4(c)) AND 
 (NOT libpar2-0-dev~1(c)) AND 
 (wget-el~1(c) IMPLIES (emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs~1(c)) AND wget(c)) AND 
 (NOT libqrencode3~1(c)) AND 
 (NOT boa-constructor~1(c)) AND 
 (NOT xiterm+thai~3(c)) AND 
 (NOT xchm~3(c)) AND 
 (NOT libavahi-glib-dev~2(c)) AND 
 (NOT libswt-gtk-3.4-java~1(c)) AND 
 (NOT openoffice.org-l10n-hi-in~3(c)) AND 
 (NOT gnome-icon-theme~10(c)) AND 
 (NOT s3270~1(c)) AND 
 (NOT trash-cli~1(c)) AND 
 (libconfig-simple-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT libecore-job-svn-03~2(c)) AND 
 (cpuburn~2(c) IMPLIES (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c))) AND 
 (libjboss-deployers-java~1(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c) OR gcj-4.4-jre~2(c))) AND 
 (NOT libpwl-dev~1(c)) AND 
 (NOT libghc6-missingpy-dev~1(c)) AND 
 (NOT killbots~1(c)) AND 
 (NOT libdose2-ocaml~1(c)) AND 
 (NOT kdevelop3-dev~2(c)) AND 
 (NOT amarok-xine~1(c)) AND 
 (NOT xen-tools~3(c)) AND 
 (NOT gnupg2~2(c)) AND 
 (NOT tetrinetx~2(c)) AND 
 (NOT libsage-dev~1(c)) AND 
 (NOT gambas2-gb-compress-zlib~1(c)) AND 
 (NOT piuparts~1(c)) AND 
 (NOT libavahi-gobject0~3(c)) AND 
 (libglobus-gram-job-manager-callout-error-doc~1(c) IMPLIES libglobus-gram-job-manager-callout-error-dev~1(c)) AND 
 (NOT scid~1(c)) AND 
 (NOT libdatetime-format-natural-perl~2(c)) AND 
 (NOT qalculate-gtk~1(c)) AND 
 (NOT dante-server~1(c)) AND 
 (NOT mono-gmcs~6(c)) AND 
 (NOT poxml~2(c)) AND 
 (NOT libhdf5-lam-dev~2(c)) AND 
 (NOT libpolybori-0.5.0-0~1(c)) AND 
 (NOT librudiments0.32~2(c)) AND 
 (NOT vdr-plugin-mp3~2(c)) AND 
 (NOT wmacpi~1(c)) AND 
 (NOT smlnj-runtime~1(c)) AND 
 (libgetopt-mixed-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT libexif-ruby~3(c)) AND 
 (NOT kamefu~1(c)) AND 
 (NOT gadmintools~1(c)) AND 
 (NOT libchamplain-gtk-0.4-0~2(c)) AND 
 (NOT libxml-java~2(c)) AND 
 (NOT librudiments0.29~2(c)) AND 
 (NOT postgis~5(c)) AND 
 (NOT launchtool~1(c)) AND 
 (NOT lighttpd-mod-trigger-b4-dl~3(c)) AND 
 (NOT tryton-modules-currency~1(c)) AND 
 (NOT nip2~2(c)) AND 
 (NOT heartbeat-gui~2(c)) AND 
 (NOT libldns-dev~3(c)) AND 
 (NOT dots~1(c)) AND 
 (NOT r-cran-lattice~5(c)) AND 
 (NOT dancer-ircd~1(c)) AND 
 (NOT zendframework-bin~1(c)) AND 
 (NOT libqtscript4-svg~1(c)) AND 
 (NOT l2tpns~2(c)) AND 
 (NOT tntdb-sqlite0~2(c)) AND 
 (NOT gtans~2(c)) AND 
 (libpurple-bin~3(c) IMPLIES libpurple0(c) AND python(c) AND python-dbus(c)) AND 
 (NOT conquest-gl~1(c)) AND 
 (NOT libgtk-vnc-1.0-dev~3(c)) AND 
 (NOT expectk-tk8.3~2(c)) AND 
 (NOT libpdf-table-perl~1(c)) AND 
 (NOT libast2-dev~1(c)) AND 
 (NOT libgtk-mozembed-ruby~1(c)) AND 
 (NOT libmoon~1(c)) AND 
 (NOT gambas2-gb-net-smtp~1(c)) AND 
 (NOT lighttpd-mod-cml~3(c)) AND 
 (NOT paris-traceroute~1(c)) AND 
 (NOT kexi-mdb-plugin~1(c)) AND 
 (NOT gource~2(c)) AND 
 (NOT libdeps-renderer-dot-perl~1(c)) AND 
 (NOT karpski~1(c)) AND 
 (NOT hsetroot~1(c)) AND 
 (NOT firebird2.1-server-common~1(c)) AND 
 (NOT cdrecord~6(c)) AND 
 (python-irclib~2(c) IMPLIES python(c) AND python-central~22(c)) AND 
 (NOT tqsllib-dev~2(c)) AND 
 (glassfish-activation~1(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c))) AND 
 (NOT fakechroot~1(c)) AND 
 (NOT tkrat~2(c)) AND 
 (NOT libbio-samtools-perl~1(c)) AND 
 (python-clientform~3(c) IMPLIES python(c) AND python-central~22(c)) AND 
 (NOT libimage-librsvg-perl~1(c)) AND 
 (NOT tetex-brev~2(c)) AND 
 (NOT kdiamond~1(c)) AND 
 (NOT gnocatan-help~1(c)) AND 
 (NOT libhugs-parsec-bundled~1(c)) AND 
 (NOT libvisual-0.4-plugins~2(c)) AND 
 (NOT hardinfo~2(c)) AND 
 (NOT libgavl1~3(c)) AND 
 (NOT shaperd~2(c)) AND 
 (NOT libgpod3~1(c)) AND 
 (NOT ecasound~2(c)) AND 
 (NOT pyvnc2swf~1(c)) AND 
 (NOT python-pyusb~2(c)) AND 
 (NOT ident2~2(c)) AND 
 (NOT libxau-dev~2(c)) AND 
 (NOT inkscape~4(c)) AND 
 (NOT libqalculate4~1(c)) AND 
 (NOT libqalculate3~1(c)) AND 
 (NOT libfusd-dev~1(c)) AND 
 (NOT liblwres9~1(c)) AND 
 (NOT dictionaryreader.app~1(c)) AND 
 (NOT libxsltc-java~2(c)) AND 
 (NOT python-deliciousapi~1(c)) AND 
 (NOT libempathy-gtk28-dbg~1(c)) AND 
 (NOT libglw1-mesa-dev~1(c)) AND 
 (NOT frozen-bubble~4(c)) AND 
 (NOT dwww~5(c)) AND 
 (NOT nautilus-open-terminal~1(c)) AND 
 (NOT ncompress~1(c)) AND 
 (NOT pcb-lesstif~2(c)) AND 
 (NOT audacious-plugins-extra~1(c)) AND 
 (NOT drac~2(c)) AND 
 (NOT gnurobots~1(c)) AND 
 (NOT gstreamer0.10-plugins-good-dbg~1(c)) AND 
 (NOT smpeg-plaympeg~3(c)) AND 
 (NOT libssl0.9.8-dbg~3(c)) AND 
 (NOT libdbix-oo-perl~1(c)) AND 
 (NOT texlive-lang-danish~2(c)) AND 
 (NOT libmoosex-strictconstructor-perl~2(c)) AND 
 (NOT libruby1.9~5(c)) AND 
 (NOT libtasn1-3~4(c)) AND 
 (NOT kmyfirewall~1(c)) AND 
 (NOT libhtml-treebuilder-xpath-perl~1(c)) AND 
 (NOT libruby1.8~5(c)) AND 
 (libset-nestedgroups-perl~1(c) IMPLIES perl~69(c)) AND 
 (librudiments-dev~2(c) IMPLIES librudiments0.29~2(c)) AND 
 (NOT gallery2~2(c)) AND 
 (NOT libwine-cms-unstable~1(c)) AND 
 (NOT blinken~1(c)) AND 
 (NOT gtalk~2(c)) AND 
 (NOT libhypre-2.4.0~2(c)) AND 
 (NOT fossology-agents-single~2(c)) AND 
 (NOT libautounit2~1(c)) AND 
 (NOT php5-recode~2(c)) AND 
 (NOT gnome-session-bin~5(c)) AND 
 (NOT xcolorsel~3(c)) AND 
 (NOT libuuidm-ocaml-dev~1(c)) AND 
 (NOT gnunet-qt~1(c)) AND 
 (education-misc~2(c) IMPLIES education-tasks~2(c)) AND 
 (NOT netsed~2(c)) AND 
 (NOT libasyncns-dev~2(c)) AND 
 (NOT baz-load-dirs~1(c)) AND 
 (NOT gtkfontsel~1(c)) AND 
 (NOT fluid~1(c)) AND 
 (NOT openoffice.org-zemberek~1(c)) AND 
 (NOT wmtemp~1(c)) AND 
 (NOT libboost-dbg~1(c)) AND 
 (NOT libbinio1c2~3(c)) AND 
 (NOT libbusiness-onlinepayment-openecho-perl~1(c)) AND 
 (NOT libbickley-0.4-0~1(c)) AND 
 (NOT vim~4(c)) AND 
 (libtelepathy-glib0-dbg~1(c) IMPLIES libtelepathy-glib0~13(c)) AND 
 (NOT libsexy-dev~2(c)) AND 
 (NOT mailscanner~2(c)) AND 
 (NOT irssi-plugin-silc~2(c)) AND 
 (NOT ltsp-controlaula~1(c)) AND 
 (NOT strongswan-ikev2~1(c)) AND 
 (NOT libhk-kdeclasses-dev~2(c)) AND 
 (NOT strongswan-ikev1~1(c)) AND 
 (findimagedupes~1(c) IMPLIES perl(c) AND perlmagick(c) AND libfile-mimeinfo-perl(c) AND libinline-perl(c) AND (imagemagick(c) OR graphicsmagick-imagemagick-compat~2(c))) AND 
 (NOT numconv~1(c)) AND 
 (nvidia-glx-legacy-173xx-dev~1(c) IMPLIES nvidia-glx-legacy-173xx~2(c)) AND 
 (NOT cvssuck~2(c)) AND 
 (NOT kfloppy~3(c)) AND 
 (NOT uim-gtk2.0~2(c)) AND 
 (gpsim-dev~2(c) IMPLIES gpsim(c) AND libpopt-dev(c)) AND 
 (NOT seed~2(c)) AND 
 (NOT libobject-declare-perl~3(c)) AND 
 (libmono-ldap2.0-cil~7(c) IMPLIES (libmono-corlib2.0-cil~6(c) OR libmono-corlib2.0-cil~10(c)) AND libmono-system2.0-cil~13(c)) AND 
 (NOT xmms-midi~1(c)) AND 
 (NOT ddclient~2(c)) AND 
 (NOT libxml-sax-expat-incremental-perl~1(c)) AND 
 (NOT libxrandr-dev~6(c)) AND 
 (NOT libghc6-quickcheck-dev~4(c)) AND 
 (NOT python-dcop~1(c)) AND 
 (NOT xbomb~2(c)) AND 
 (NOT libgd2-xpm-dev~2(c)) AND 
 (NOT imp4~2(c)) AND 
 (NOT libxmpi4~1(c)) AND 
 (NOT libdb4.8-java-gcj~1(c)) AND 
 (NOT xcal~3(c)) AND 
 (NOT libsqlxx-2.3c2a~2(c)) AND 
 (NOT php4-cgi~11(c)) AND 
 (NOT rexima~2(c)) AND 
 (NOT base-passwd~5(c)) AND 
 (NOT jlha-utils~1(c)) AND 
 (NOT iogerman~1(c)) AND 
 (NOT libdigest-sha-perl~3(c)) AND 
 (NOT lib32objc1~1(c)) AND 
 (NOT karrigell-demo~1(c)) AND 
 (NOT maildir-bulletin~2(c)) AND 
 (NOT libghc6-opengl-doc~1(c)) AND 
 (NOT hylafax-client~2(c)) AND 
 (NOT passepartout~2(c)) AND 
 (NOT jwhois~1(c)) AND 
 (NOT libqtscript4-sql~1(c)) AND 
 (NOT mono-xsp2-base~4(c)) AND 
 (mencal~2(c) IMPLIES perl(c)) AND 
 (libportmidi-dev~2(c) IMPLIES libportmidi0~2(c)) AND 
 (NOT libsmapi-dev~1(c)) AND 
 (NOT autoclass~1(c)) AND 
 (NOT php-fpdf~3(c)) AND 
 (libclass-trait-perl~1(c) IMPLIES perl~69(c) AND libclass-accessor-perl(c)) AND 
 (NOT blacs1-mpich~1(c)) AND 
 (NOT gforge-ftp-proftpd~2(c)) AND 
 (NOT miredo~1(c)) AND 
 (NOT xserver-xorg-video-rendition~2(c)) AND 
 (NOT uqm-content~4(c)) AND 
 (NOT php-pear~4(c)) AND 
 (NOT octave3.0-emacsen~1(c)) AND 
 (NOT ipplan~2(c)) AND 
 (NOT qlo10k1~1(c)) AND 
 (NOT ruby1.8-dev~2(c)) AND 
 (NOT libneon27-dev~1(c)) AND 
 (NOT sitecopy~2(c)) AND 
 (NOT cgiemail~1(c)) AND 
 (NOT libjogl-jni~1(c)) AND 
 (libecasoundc2.2-dev~1(c) IMPLIES libreadline5-dev(c)) AND 
 (NOT libyahoo2-dev~1(c)) AND 
 (NOT knetwalk~3(c)) AND 
 (NOT libasis2008-dev~1(c)) AND 
 (NOT packeth~1(c)) AND 
 (NOT dnsutils~5(c)) AND 
 (NOT libghc6-xmonad-dev~1(c)) AND 
 (NOT lusernet.app~2(c)) AND 
 (NOT binutils-m68hc1x~4(c)) AND 
 (NOT z8530-utils2~1(c)) AND 
 (icicles~1(c) IMPLIES (emacs23(c) OR emacs23-lucid~1(c) OR emacs23-lucid~1(c))) AND 
 (NOT randomplay~1(c)) AND 
 (NOT nget~1(c)) AND 
 (NOT qt3-apps-dev~1(c)) AND 
 (NOT libfwbuilder-dev~1(c)) AND 
 (php-benchmark~1(c) IMPLIES php-pear(c)) AND 
 (NOT libpetal-perl~2(c)) AND 
 (NOT pbuilder~4(c)) AND 
 (NOT libroxen-roxpoll~1(c)) AND 
 (libtext-micromason-perl~1(c) IMPLIES perl~69(c) AND libclass-mixinfactory-perl~2(c)) AND 
 (NOT libsemanage-ruby1.8~2(c)) AND 
 (systemtap-sdt-dev~1(c) IMPLIES python(c)) AND 
 (NOT gnu-fdisk~2(c)) AND 
 (NOT sugar-chat-activity-0.86~1(c)) AND 
 (NOT sun-java5-doc~1(c)) AND 
 (socklog-run~1(c) IMPLIES socklog(c) AND runit~7(c)) AND 
 (NOT sugar-chat-activity-0.84~1(c)) AND 
 (NOT yate-mysql~1(c)) AND 
 (NOT freesweep~1(c)) AND 
 (NOT pcsx-bin~1(c)) AND 
 (NOT libneon26-gnutls-dev~2(c)) AND 
 (NOT aewm++-goodies~1(c)) AND 
 (NOT liblablgtk2-gnome-ocaml~1(c)) AND 
 (bwidget~4(c) IMPLIES (tk8.5~3(c) OR tk8.5~3(c) OR tk8.4~5(c) OR tk~4(c))) AND 
 (NOT libjpeg-progs~3(c)) AND 
 (NOT boinc-app-milkyway~1(c)) AND 
 (NOT firebird2-dev~1(c)) AND 
 (NOT libkleo4~2(c)) AND 
 (NOT libsigcx-gtk-0.6-1c2a~1(c)) AND 
 (NOT apache2-prefork-dev~3(c)) AND 
 (NOT libgnupdf-dev~1(c)) AND 
 (NOT libgst-ruby1.8~2(c)) AND 
 (NOT quagga~3(c)) AND 
 (NOT libswt-gtk-3.2~1(c)) AND 
 (malaga-mode~1(c) IMPLIES (emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs~1(c))) AND 
 (NOT openclipart-openoffice.org~2(c)) AND 
 (NOT sear~2(c)) AND 
 (NOT ire-the-flat~1(c)) AND 
 (NOT libghc6-utf8-string-prof~2(c)) AND 
 (libimap-admin-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT liblua5.1-0-dev~2(c)) AND 
 (NOT metalink~1(c)) AND 
 (NOT visualboyadvance~2(c)) AND 
 (NOT libglobus-gram-job-manager-callout-error-dev~1(c)) AND 
 (NOT libstdc++6~6(c)) AND 
 (NOT ion3~3(c)) AND 
 (NOT libserveez-0.1.5~1(c)) AND 
 (NOT dome~1(c)) AND 
 (NOT bitpim-lib~1(c)) AND 
 (libdatetime-format-mysql-perl~1(c) IMPLIES perl~69(c) AND libdatetime-perl(c) AND libdatetime-format-builder-perl(c)) AND 
 (NOT libzephyr4~1(c)) AND 
 (NOT opencryptoki~1(c)) AND 
 (NOT libzephyr3~1(c)) AND 
 (phpgroupware-phpsysinfo~1(c) IMPLIES (phpgroupware~2(c) OR phpgroupware~5(c))) AND 
 (NOT freebsd5-buildutils~2(c)) AND 
 (NOT opensync-plugin-moto~1(c)) AND 
 (NOT python-zope.testing~1(c)) AND 
 (NOT dpsyco-sudo~2(c)) AND 
 (NOT globus-gass-server-ez-progs~1(c)) AND 
 (NOT sinfo~1(c)) AND 
 (NOT libgudev-1.0-0~3(c)) AND 
 (NOT libace-tmcast5.4.7c2a~1(c)) AND 
 (NOT portreserve~1(c)) AND 
 (NOT festvox-suopuhe-mv~1(c)) AND 
 (NOT libtextwrap1~3(c)) AND 
 (NOT biomode~1(c)) AND 
 (NOT libyaz2~2(c)) AND 
 (NOT xmpuzzles~2(c)) AND 
 (NOT libdata-ical-perl~1(c)) AND 
 (NOT upslug2~2(c)) AND 
 (NOT libwww-perl~27(c)) AND 
 (NOT open-iscsi~1(c)) AND 
 (NOT libmixlib-config-ruby~1(c)) AND 
 (esmtp-run~1(c) IMPLIES esmtp(c)) AND 
 (NOT pstotext~1(c)) AND 
 (php-db~4(c) IMPLIES php-pear(c)) AND 
 (NOT libplucene-perl~1(c)) AND 
 (NOT uim-byeoru~1(c)) AND 
 (NOT libsqlrelay-java~1(c)) AND 
 (libgdbm-ruby~2(c) IMPLIES libgdbm-ruby1.8(c)) AND 
 (libwww-mediawiki-client-perl~2(c) IMPLIES libexception-class-perl(c) AND libvcs-lite-perl~3(c) AND libwww-perl(c) AND libxml-libxml-perl(c) AND perl~69(c)) AND 
 (NOT confluence~2(c)) AND 
 (NOT dnscvsutil~1(c)) AND 
 (NOT u3-tool~1(c)) AND 
 (NOT upgrade-system~1(c)) AND 
 (NOT copyfs~1(c)) AND 
 (NOT libdatetime-set-perl~3(c)) AND 
 (NOT libneon27-dbg~1(c)) AND 
 (NOT amaterus~1(c)) AND 
 (NOT gcc-4.3-multilib~4(c)) AND 
 (NOT array-info~1(c)) AND 
 (NOT libicee12~1(c)) AND 
 (NOT libgtkmm-doc~1(c)) AND 
 (NOT libicee11~1(c)) AND 
 (NOT xmms2-client-cli~1(c)) AND 
 (NOT libpowerman0-dev~1(c)) AND 
 (NOT thunar-archive-plugin~3(c)) AND 
 (weblint-perl~1(c) IMPLIES perl(c) AND libhtml-lint-perl(c)) AND 
 (NOT libasis2008-dbg~1(c)) AND 
 (NOT xa65~1(c)) AND 
 (NOT root-plugin-sql-odbc~1(c)) AND 
 (NOT ttf-ecolier-lignes-court~1(c)) AND 
 (NOT pkspxy~1(c)) AND 
 (NOT guile-1.6-dev~2(c)) AND 
 (NOT xmms2-et~3(c)) AND 
 (NOT libtifiles0-dev~2(c)) AND 
 (NOT festvox-suopuhe-lj~1(c)) AND 
 (NOT libartsc0~2(c)) AND 
 (NOT loop-aes-modules-2.6-xen-amd64~1(c)) AND 
 (NOT netsurf-gtk~1(c)) AND 
 (nice~2(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c) OR gcj-4.4-jre~2(c))) AND 
 (NOT synce-hal-bluetooth~1(c)) AND 
 (NOT evolution-data-server-dev~1(c)) AND 
 (NOT libghc6-fastcgi-dev~1(c)) AND 
 (NOT libghc6-regex-tdfa-utf8-dev~1(c)) AND 
 (NOT drivel~1(c)) AND 
 (NOT libgnomevfs2-ruby1.8-dbg~2(c)) AND 
 (NOT mailutils-mh~2(c)) AND 
 (NOT rsh-redone-server~1(c)) AND 
 (libperlio-via-dynamic-perl~4(c) IMPLIES perl~69(c)) AND 
 (NOT orpie~1(c)) AND 
 (NOT libneon26-gnutls-dbg~2(c)) AND 
 (NOT libperl-dev~2(c)) AND 
 (NOT mn-fit~3(c)) AND 
 (NOT openoffice.org-base~11(c)) AND 
 (NOT docbook-dsssl~2(c)) AND 
 (NOT sylpheed-claws-gtk2-pgpinline~1(c)) AND 
 (NOT libwxgtk2.6-dev~3(c)) AND 
 (NOT libgnupdf-dbg~1(c)) AND 
 (libjargs-java~1(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c) OR gcj-4.4-jre~2(c))) AND 
 (NOT kinoplus~2(c)) AND 
 (gnumail.app-dbg~1(c) IMPLIES gnumail.app~2(c)) AND 
 (NOT universalindentgui~1(c)) AND 
 (NOT liblua5.1-sql-mysql-dev~2(c)) AND 
 (NOT kcachegrind-converters~3(c)) AND 
 (NOT mldonkey-gui~3(c)) AND 
 (NOT cl-plplot~1(c)) AND 
 (NOT dump~4(c)) AND 
 (NOT banshee~11(c)) AND 
 (debian-reference-zh-cn~1(c) IMPLIES debian-reference-common~2(c)) AND 
 (NOT x-window-system~1(c)) AND 
 (NOT liblv2dynparamplugin1-0~1(c)) AND 
 (NOT lurker~2(c)) AND 
 (NOT nosql~2(c)) AND 
 (libuuidtools-ruby1.8~1(c) IMPLIES libopenssl-ruby1.8(c) AND rubygems1.8(c)) AND 
 (python-pexpect~2(c) IMPLIES python(c) AND python-central~22(c)) AND 
 (libgd-graph3d-perl~2(c) IMPLIES perl~69(c) AND libgd-graph-perl~3(c)) AND 
 (NOT libkexiv2-7~2(c)) AND 
 (NOT libppi-perl~9(c)) AND 
 (NOT iwidgets4~2(c)) AND 
 (NOT libmagic-dev~2(c)) AND 
 (libposixlock-ruby1.8~1(c) IMPLIES ruby1.8(c)) AND 
 (NOT since~1(c)) AND 
 (NOT libmono-system2.0-cil~13(c)) AND 
 (tetex-base~16(c) IMPLIES ucf~13(c) AND (tex-common~15(c) OR tex-common~7(c))) AND 
 (NOT libvorbis-ocaml-dev~3(c)) AND 
 (NOT neverputt-data~1(c)) AND 
 (NOT libgnomeuimm-2.6-dev~3(c)) AND 
 (NOT libnet-openid-consumer-perl~3(c)) AND 
 (libcgi-doc~1(c) IMPLIES (epiphany-browser~10(c) OR xemacs21-mule-canna-wnn~2(c) OR epiphany-gecko~2(c) OR iceweasel~5(c) OR dillo~2(c) OR epiphany-browser~10(c) OR xemacs21-mule-canna-wnn~2(c) OR epiphany-gecko~2(c) OR iceweasel~5(c) OR dillo~2(c) OR konqueror~13(c) OR midori~2(c) OR iceweasel~16(c) OR netrik~2(c) OR netsurf-linuxfb~1(c) OR netsurf-gtk~1(c))) AND 
 (NOT libcurl4-gnutls-dev~4(c)) AND 
 (NOT libsane-extras-dev~2(c)) AND 
 (NOT libpreludedb-dev~2(c)) AND 
 (NOT madfuload~1(c)) AND 
 (NOT postgresql-autodoc~2(c)) AND 
 (NOT xdmx~4(c)) AND 
 (NOT icegrid~1(c)) AND 
 (NOT ksokoban~1(c)) AND 
 (NOT openload~1(c)) AND 
 (NOT libopenmpi-dev~2(c)) AND 
 (NOT libwrap0~4(c)) AND 
 (libspf-dev~2(c) IMPLIES libspf0~2(c)) AND 
 (NOT xmlstarlet~2(c)) AND 
 (NOT libmodplug-dev~3(c)) AND 
 (NOT libunicode-japanese-perl~1(c)) AND 
 (NOT mgltools-vision~1(c)) AND 
 (NOT ttf-liberation~2(c)) AND 
 (libclass-whitehole-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT dhcp-client~7(c)) AND 
 (NOT aufs-modules-2.6-amd64~1(c)) AND 
 (NOT music-bin~1(c)) AND 
 (xfce4-icon-theme~4(c) IMPLIES hicolor-icon-theme~4(c)) AND 
 (pyftpd~1(c) IMPLIES python-central(c) AND python(c) AND python-central~22(c)) AND 
 (libfile-nfslock-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT libpam-ldapd~1(c)) AND 
 (NOT sbnc~1(c)) AND 
 (NOT sqlrelay-mysql~2(c)) AND 
 (NOT wsjt~2(c)) AND 
 (NOT khangman~2(c)) AND 
 (NOT onscripter~1(c)) AND 
 (NOT gcj-4.4-jre~2(c)) AND 
 (NOT xkbset~1(c)) AND 
 (libmodule-refresh-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT libdate-pcalc-perl~2(c)) AND 
 (NOT docvert~1(c)) AND 
 (NOT libprophet-perl~2(c)) AND 
 (NOT lastmp~1(c)) AND 
 (NOT gtk-sharp~1(c)) AND 
 (NOT vnc4-common~1(c)) AND 
 (NOT dovecot-imapd~3(c)) AND 
 (cfgstoragemaker~1(c) IMPLIES perl(c) AND mrtg(c) AND snmp(c)) AND 
 (NOT xkbsel~1(c)) AND 
 (NOT diogenes~1(c)) AND 
 (NOT libgraphite-dev~1(c)) AND 
 (NOT python-pyfribidi~1(c)) AND 
 (NOT libghc6-opengl-dev~1(c)) AND 
 (libmono-data-tds2.0-cil~2(c) IMPLIES (libmono-corlib2.0-cil~6(c) OR libmono-corlib2.0-cil~10(c)) AND libmono-security2.0-cil~7(c) AND libmono-system2.0-cil~13(c)) AND 
 (NOT libroot-gui-dev~1(c)) AND 
 (NOT uim-m17nlib~1(c)) AND 
 (NOT wav2cdr~1(c)) AND 
 (NOT bacula-common~1(c)) AND 
 (NOT ure~4(c)) AND 
 (NOT libmono-bytefx0.7.6.1-cil~5(c)) AND 
 (NOT gs~12(c)) AND 
 (NOT acpitail~1(c)) AND 
 (NOT python-musicbrainz~1(c)) AND 
 (NOT evolution-data-server-dbg~1(c)) AND 
 (NOT libchm1~6(c)) AND 
 (NOT libcore-extended-ocaml-dev~1(c)) AND 
 (NOT itcl3.1~1(c)) AND 
 (NOT gedit~11(c)) AND 
 (NOT ttf-lg-aboriginal~1(c)) AND 
 (NOT libgdbm-ruby1.8~4(c)) AND 
 (openoffice.org-thesaurus-en-us~1(c) IMPLIES openoffice.org-core~34(c) AND (dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c))) AND 
 (libmono-system-data1.0-cil~6(c) IMPLIES libmono-corlib1.0-cil~3(c) AND libmono-data-tds1.0-cil~8(c) AND libmono-system1.0-cil~6(c)) AND 
 (NOT nmap~4(c)) AND 
 (NOT python-louis~2(c)) AND 
 (NOT python-scientific~2(c)) AND 
 (NOT libjana-examples~1(c)) AND 
 (NOT sailcut~2(c)) AND 
 (NOT smart-notifier~1(c)) AND 
 (NOT mgltools-opengltk~1(c)) AND 
 (NOT scim-modules-table~1(c)) AND 
 (NOT desktop-file-utils~3(c)) AND 
 (NOT upx-nrv~1(c)) AND 
 (NOT libwx11-0~1(c)) AND 
 (NOT wallpaper-tray~2(c)) AND 
 (NOT texlive-font-utils~5(c)) AND 
 (NOT netsurf-linuxfb~1(c)) AND 
 (NOT libmcal0~1(c)) AND 
 (cl-ubf~1(c) IMPLIES common-lisp-controller~17(c)) AND 
 (NOT libbeecrypt7~1(c)) AND 
 (libhtml-lint-perl~2(c) IMPLIES perl~69(c) AND libhtml-parser-perl~14(c) AND libhtml-tagset-perl~4(c)) AND 
 (NOT libbeecrypt6~1(c)) AND 
 (NOT tucnak2~1(c)) AND 
 (NOT libmaven-scm-java~1(c)) AND 
 (NOT gnustep-devel~1(c)) AND 
 (NOT python-libavg~1(c)) AND 
 (NOT libnessus-dev~1(c)) AND 
 (NOT r-cran-zoo~2(c)) AND 
 (NOT festvox-kallpc16k~1(c)) AND 
 (NOT libxmltok1~2(c)) AND 
 (NOT libgdcm-cil~2(c)) AND 
 (NOT gmerlin~2(c)) AND 
 (NOT libcaca0~7(c)) AND 
 (NOT libhocr-dev~2(c)) AND 
 (NOT gambas2-gb-vb~1(c)) AND 
 (NOT kde-i18n-ptbr~5(c)) AND 
 (NOT libncurses5-dev~1(c)) AND 
 (NOT v-sim~2(c)) AND 
 (NOT libogdi3.2-dev~2(c)) AND 
 (NOT libsmokekde1~2(c)) AND 
 (NOT libspeechd-dev~1(c)) AND 
 (NOT xaw3dg~5(c)) AND 
 (NOT libsane-extras-dbg~2(c)) AND 
 (NOT mgltools-pyautodock~1(c)) AND 
 (NOT python-biopython-martel~1(c)) AND 
 (NOT python-pyx~2(c)) AND 
 (NOT libsidutils0~2(c)) AND 
 (libmono-security1.0-cil~5(c) IMPLIES libmono-corlib1.0-cil~3(c) AND libmono-system1.0-cil~6(c)) AND 
 (NOT devicekit-disks~4(c)) AND 
 (NOT libopenmpi-dbg~2(c)) AND 
 (NOT blends-common~2(c)) AND 
 (NOT rdmacm-utils~1(c)) AND 
 (NOT libentity0~1(c)) AND 
 (NOT libchewing3-dev~2(c)) AND 
 (NOT python-selinux~1(c)) AND 
 (NOT libsha-ocaml~1(c)) AND 
 (NOT ihungarian~2(c)) AND 
 (NOT libicc-dev~2(c)) AND 
 (NOT docbook-simple~2(c)) AND 
 (libnet-whois-raw-perl~3(c) IMPLIES perl(c)) AND 
 (NOT libcpan-mini-perl~1(c)) AND 
 (NOT wesnoth-trow~4(c)) AND 
 (NOT wesnoth-editor~2(c)) AND 
 (NOT db4.2-util~1(c)) AND 
 (NOT python-libvirt~2(c)) AND 
 (libarch-perl~4(c) IMPLIES tla~4(c)) AND 
 (NOT libwbxml2-dev~3(c)) AND 
 (libyanfs-java~1(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c))) AND 
 (NOT basket~2(c)) AND 
 (NOT python-flup~3(c)) AND 
 (NOT finch~4(c)) AND 
 (NOT racoon~1(c)) AND 
 (NOT librss1~4(c)) AND 
 (latex209-bin~2(c) IMPLIES latex209-base(c) AND texlive-base-bin(c)) AND 
 (libpcap-dev~1(c) IMPLIES libpcap0.7-dev(c)) AND 
 (NOT libcommons-jci-rhino-java~1(c)) AND 
 (libclass-factory-perl~2(c) IMPLIES perl~69(c)) AND 
 (libgeo-ipfree-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT netris~2(c)) AND 
 (python-gadfly~3(c) IMPLIES python(c) AND python-central~22(c)) AND 
 (NOT embassy-domsearch~1(c)) AND 
 (NOT gfs-tools~3(c)) AND 
 (NOT libalps-mpi1~1(c)) AND 
 (NOT libopencascade-foundation-dev~1(c)) AND 
 (NOT libmoosex-types-structured-perl~3(c)) AND 
 (NOT libagrep-ocaml~2(c)) AND 
 (NOT libgtkgl2.0-dev~1(c)) AND 
 (NOT eject~2(c)) AND 
 (NOT gnome-core~3(c)) AND 
 (NOT libsystemu-ruby-doc~1(c)) AND 
 (NOT djvulibre-bin~2(c)) AND 
 (ko.tex-base~1(c) IMPLIES tex-common(c)) AND 
 (NOT gnoemoe~1(c)) AND 
 (NOT netrik~2(c)) AND 
 (NOT libpri1.2~3(c)) AND 
 (libjama-java~1(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c) OR gcj-4.4-jre~2(c))) AND 
 (NOT screentest~1(c)) AND 
 (NOT visualboyadvance-gtk~1(c)) AND 
 (NOT libtelepathy-qt4-0~1(c)) AND 
 (NOT libakonadiprivate1~2(c)) AND 
 (NOT libfsotransport-dbg~1(c)) AND 
 (NOT liburi-find-perl~2(c)) AND 
 (NOT libblas-dev~1(c)) AND 
 (NOT fusedav~1(c)) AND 
 (NOT paje.app~1(c)) AND 
 (NOT xen-linux-system-2.6.26-2-xen-amd64~1(c)) AND 
 (NOT python-parted~1(c)) AND 
 (NOT librainbow-dev~2(c)) AND 
 (NOT nepenthes~1(c)) AND 
 (NOT djvulibre-plugin~2(c)) AND 
 (NOT tor-geoipdb~3(c)) AND 
 (NOT libvirt-ocaml-dev~1(c)) AND 
 (NOT libsmokesoprano2~2(c)) AND 
 (NOT calcurse~1(c)) AND 
 (NOT maxima-emacs~1(c)) AND 
 (ack-grep~1(c) IMPLIES libfile-next-perl(c) AND perl(c)) AND 
 (libxmlunit-java~1(c) IMPLIES junit(c) AND libjaxp1.3-java(c)) AND 
 (NOT pstngw~1(c)) AND 
 (libdaemonize-ruby1.8~1(c) IMPLIES ruby1.8(c)) AND 
 (NOT libaudiofile-dev~2(c)) AND 
 (NOT iputils-ping~2(c)) AND 
 (NOT libapache-mod-dosevasive~1(c)) AND 
 (octave2.9-emacsen~3(c) IMPLIES octave3.0-emacsen(c)) AND 
 (NOT python-pudge~1(c)) AND 
 (NOT rplay-server~1(c)) AND 
 (NOT stunnel4~1(c)) AND 
 (NOT hobbit-plugins~1(c)) AND 
 (NOT php5-mhash~3(c)) AND 
 (NOT sixpack~2(c)) AND 
 (NOT fcitx~1(c)) AND 
 (sdic~2(c) IMPLIES (emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs~1(c) OR emacs(c))) AND 
 (NOT dropbear~1(c)) AND 
 (NOT mozilla-tabextensions~1(c)) AND 
 (NOT texlive-lang-mongolian~2(c)) AND 
 (NOT libghc6-dataenc-prof~1(c)) AND 
 (NOT pdfedit~2(c)) AND 
 (NOT velocity~2(c)) AND 
 (NOT decibel-audio-player~1(c)) AND 
 (konversation-dbg~3(c) IMPLIES konversation~4(c)) AND 
 (NOT dput~2(c)) AND 
 (myspell-fr-gut~2(c) IMPLIES (dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c))) AND 
 (NOT rwho~2(c)) AND 
 (NOT wput~1(c)) AND 
 (libncurses5-dbg~1(c) IMPLIES libncurses5-dev~1(c)) AND 
 (NOT osdclock~1(c)) AND 
 (NOT type1inst~1(c)) AND 
 (libcommons-discovery-java-doc~1(c) IMPLIES (gcj-4.4-jre-headless~3(c) OR gcj-4.4-jre-headless~3(c) OR gcj-4.4-jre-headless~3(c) OR gcj-4.4-jre-headless~3(c))) AND 
 (NOT libpolyml1~2(c)) AND 
 (NOT memories~2(c)) AND 
 (NOT unmo3~1(c)) AND 
 (NOT chicken-bin~2(c)) AND 
 (NOT gambas2-gb-qt~1(c)) AND 
 (libapache-admin-config-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT libnova-0.12-1~1(c)) AND 
 (NOT torrentflux~1(c)) AND 
 (NOT egroupware-wiki~2(c)) AND 
 (NOT libgdchart-gd2-noxpm~2(c)) AND 
 (NOT hping3~2(c)) AND 
 (NOT mgltools-sff~1(c)) AND 
 (NOT kcoloredit~2(c)) AND 
 (NOT camserv-relay~2(c)) AND 
 (NOT donkey~1(c)) AND 
 (NOT clamav-getfiles~1(c)) AND 
 (NOT lastfm~1(c)) AND 
 (NOT expectk~1(c)) AND 
 (NOT kwin-style-qtcurve~1(c)) AND 
 (NOT icewm-lite~2(c)) AND 
 (NOT libapache2-mod-mono~2(c)) AND 
 (NOT libkaya-ncurses-dev~1(c)) AND 
 (NOT libxvmc1-dbg~1(c)) AND 
 (NOT kmines~1(c)) AND 
 (NOT kdesktop~2(c)) AND 
 (NOT dhis-tools-genkeys~1(c)) AND 
 (NOT libmono-oracle1.0-cil~5(c)) AND 
 (NOT libnet-libidn-perl~2(c)) AND 
 (libclass-delegator-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT libgrafx11-1-dev~3(c)) AND 
 (libcgi-dev~1(c) IMPLIES libcgi0~1(c)) AND 
 (NOT gforge-mta-courier~3(c)) AND 
 (libfreezethaw-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT buffer~1(c)) AND 
 (libcrimson-java~2(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c) OR gcj-4.4-jre~2(c))) AND 
 (libstfl-ruby~2(c) IMPLIES libstfl-ruby1.8(c)) AND 
 (libstonith-dev~3(c) IMPLIES heartbeat-dev~2(c)) AND 
 (NOT libclutter-gtk-0.10-0~2(c)) AND 
 (quickml~2(c) IMPLIES ruby1.8(c)) AND 
 (NOT xserver-xorg-input-ur98~1(c)) AND 
 (NOT libsdl-image1.2~4(c)) AND 
 (NOT ircii~1(c)) AND 
 (libghc6-parsec2-prof~1(c) IMPLIES libghc6-parsec2-dev~1(c) AND ghc6-prof~12(c) AND ghc6-prof~12(c)) AND 
 (NOT libxcb-render-util0~6(c)) AND 
 (NOT libcapsinetwork-dev~1(c)) AND 
 (NOT libautotrace-dev~2(c)) AND 
 (NOT libqsearch1~1(c)) AND 
 (NOT virtualbox-ose-modules-2.6.30-2-amd64~1(c)) AND 
 (NOT xmms-singit~1(c)) AND 
 (NOT yiyantang~2(c)) AND 
 (NOT libgnatvsn-dev~2(c)) AND 
 (NOT r-cran-mnormt~3(c)) AND 
 (libbigdecimal-ruby~1(c) IMPLIES libruby1.8~5(c)) AND 
 (NOT libapache-mod-ldap~1(c)) AND 
 (NOT libgtkglext1-ruby~4(c)) AND 
 (NOT minbif-webcam~1(c)) AND 
 (NOT tablix2~2(c)) AND 
 (NOT libgsasl7-dev~2(c)) AND 
 (NOT libgpelaunch0~2(c)) AND 
 (NOT libghc6-haskelldb-dev~1(c)) AND 
 (NOT liberis-1.3-15~1(c)) AND 
 (NOT ttf-devanagari-fonts~3(c)) AND 
 (NOT bchunk~1(c)) AND 
 (NOT python-pyrrd~1(c)) AND 
 (NOT gnujump~1(c)) AND 
 (NOT liberis-1.3-11~1(c)) AND 
 (NOT mono-xsp~2(c)) AND 
 (NOT tap-plugins~1(c)) AND 
 (NOT uim~4(c)) AND 
 (NOT linux-patch-aufs~1(c)) AND 
 (NOT libhypre-dev~4(c)) AND 
 (NOT libgupnp-av-1.0-dev~2(c)) AND 
 (libhugs-filepath~2(c) IMPLIES hugs~5(c)) AND 
 (jsmath~1(c) IMPLIES (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c))) AND 
 (libtar-dev~2(c) IMPLIES libtar~2(c)) AND 
 (NOT libmono-system-web1.0-cil~8(c)) AND 
 (NOT python-nipy-lib~2(c)) AND 
 (NOT python-xcbgen~1(c)) AND 
 (NOT libqmmp-misc~2(c)) AND 
 (NOT selinux-policy-mls~2(c)) AND 
 (NOT gnustep-games~1(c)) AND 
 (thunderbird-traybiff~2(c) IMPLIES xul-ext-traybiff~1(c)) AND 
 (libio-stringy-perl~6(c) IMPLIES perl~69(c)) AND 
 (kdewebdev-dbg~2(c) IMPLIES kdelibs-dbg(c)) AND 
 (NOT libcupsys2-dev~5(c)) AND 
 (NOT amarok-utils~2(c)) AND 
 (NOT yubikey-personalization~1(c)) AND 
 (NOT firebird2.1-examples~1(c)) AND 
 (NOT libnss3-tools~4(c)) AND 
 (NOT collectd-utils~3(c)) AND 
 (NOT leafnode~2(c)) AND 
 (NOT r-cran-colorspace~1(c)) AND 
 (NOT qemu-launcher~1(c)) AND 
 (NOT bacula-director-common~1(c)) AND 
 (NOT python-daemon~2(c)) AND 
 (statcvs~1(c) IMPLIES classpath(c) AND (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c))) AND 
 (NOT libopenthreads4~2(c)) AND 
 (NOT libpadre-plugin-xml-perl~1(c)) AND 
 (emacs-chess-pieces~1(c) IMPLIES emacs-chess(c)) AND 
 (NOT sdcv~2(c)) AND 
 (libnet-smpp-perl~1(c) IMPLIES perl~69(c)) AND 
 (cl-ironclad~1(c) IMPLIES common-lisp-controller~17(c)) AND 
 (libuptimed-dev~1(c) IMPLIES (debconf~35(c) OR debconf~38(c)) AND perl(c) AND libuptimed0(c)) AND 
 (NOT xmms2-dev~2(c)) AND 
 (NOT splitvt~2(c)) AND 
 (NOT magnus~1(c)) AND 
 (NOT libstrigiqtdbusclient0~3(c)) AND 
 (NOT libevent-1.4-2~4(c)) AND 
 (NOT qimhangul-qt3~1(c)) AND 
 (NOT snooper~2(c)) AND 
 (NOT libemail-send-perl~2(c)) AND 
 (NOT libopenigtlink1-dev~1(c)) AND 
 (NOT libtexttools2.0.5~1(c)) AND 
 (php-auth~2(c) IMPLIES (php-pear~5(c) OR php-pear~4(c))) AND 
 (NOT sgml2x~3(c)) AND 
 (NOT squirrelmail-decode~1(c)) AND 
 (NOT python-crypto-dbg~1(c)) AND 
 (NOT gtetrinet~1(c)) AND 
 (NOT ocaml-compiler-libs~4(c)) AND 
 (NOT libgtksourceview2-ruby1.8~2(c)) AND 
 (libobject-realize-later-perl~3(c) IMPLIES perl~69(c) AND libscalar-list-utils-perl(c)) AND 
 (NOT python-iptcdata~1(c)) AND 
 (NOT ifeffit~2(c)) AND 
 (NOT gkrellm-bfm~2(c)) AND 
 (NOT libplayercore2~1(c)) AND 
 (NOT libslang2-pic~2(c)) AND 
 (NOT thinkfan~2(c)) AND 
 (NOT yaz-illclient~1(c)) AND 
 (NOT python-recaptcha~1(c)) AND 
 (NOT kwin-style-dekorator~2(c)) AND 
 (NOT med-tasks~1(c)) AND 
 (NOT libgeotiff-dev~1(c)) AND 
 (NOT aqemu~1(c)) AND 
 (NOT xml-core~2(c)) AND 
 (NOT liblua5.1-md5-dev~1(c)) AND 
 (scala-library~1(c) IMPLIES (gcj-4.4-jre-headless~3(c) OR gcj-4.4-jre-headless~3(c) OR gij(c))) AND 
 (NOT python-carquinyol-0.86~1(c)) AND 
 (NOT mono-complete~1(c)) AND 
 (NOT libpils-dev~4(c)) AND 
 (NOT libevent1~2(c)) AND 
 (NOT libxklavier12-dev~2(c)) AND 
 (NOT python-carquinyol-0.84~1(c)) AND 
 (NOT rockdodger~1(c)) AND 
 (NOT trac-bitten~1(c)) AND 
 (NOT libgpod-dev~3(c)) AND 
 (NOT matchbox~2(c)) AND 
 (NOT libslp-dev~1(c)) AND 
 (NOT autopsy~2(c)) AND 
 (NOT kpovmodeler~2(c)) AND 
 (NOT libtwitter-glib-1.0-dbg~1(c)) AND 
 (NOT libatk1.0-dev~5(c)) AND 
 (NOT libtinymail-camel-1.0-0~2(c)) AND 
 (NOT xmms2-plugin-ices~3(c)) AND 
 (NOT libfreej0~1(c)) AND 
 (libmail-verp-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT blends-dev~1(c)) AND 
 (liblapack-dev~1(c) IMPLIES liblapack3gf~1(c) AND (libatlas-base-dev~1(c) OR libblas-dev~1(c) OR libblas-dev(c) OR libatlas-base-dev(c))) AND 
 (php-xml-parser~3(c) IMPLIES php-pear(c)) AND 
 (NOT libopenh323-1.19.1~3(c)) AND 
 (NOT doxygen-gui~1(c)) AND 
 (NOT libparserutils0-dev~1(c)) AND 
 (NOT pidentd~2(c)) AND 
 (NOT libdar64-4~2(c)) AND 
 (NOT bittwist~1(c)) AND 
 (NOT libapache-mod-suphp~1(c)) AND 
 (NOT sash~1(c)) AND 
 (NOT libgtk2-gladexml-perl~5(c)) AND 
 (NOT libgupnp-av-1.0-dbg~2(c)) AND 
 (NOT sary~1(c)) AND 
 (NOT xless~2(c)) AND 
 (NOT libboost-test-dev~3(c)) AND 
 (NOT docbook-to-man~2(c)) AND 
 (NOT libghc6-zlib-dev~2(c)) AND 
 (oidua~1(c) IMPLIES python(c)) AND 
 (NOT softbeep~1(c)) AND 
 (NOT finger~2(c)) AND 
 (NOT libscotch-dev~1(c)) AND 
 (NOT gcj-4.4-jdk~2(c)) AND 
 (NOT bacula~1(c)) AND 
 (NOT inn2~3(c)) AND 
 (NOT libsmokeqt1~3(c)) AND 
 (NOT libxcb-xprint0-dev~2(c)) AND 
 (linux-patch-openswan~1(c) IMPLIES (fileutils(c) OR coreutils(c))) AND 
 (libconfigreader-simple-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT libtomcat6-java~3(c)) AND 
 (NOT nvidia-glx-legacy-173xx~2(c)) AND 
 (NOT ocaml-libs~1(c)) AND 
 (NOT logtools~2(c)) AND 
 (NOT cl-s-http-server~1(c)) AND 
 (libswidgets-java~1(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c) OR gcj-4.4-jre~2(c))) AND 
 (NOT libtachyon-0.98~1(c)) AND 
 (NOT python-amqplib~1(c)) AND 
 (NOT shaper~1(c)) AND 
 (NOT libghemical3gf~1(c)) AND 
 (NOT kvirc~3(c)) AND 
 (libdb-je-java~2(c) IMPLIES (gcj-4.4-jre-headless~3(c) OR gcj-4.4-jre-headless~3(c))) AND 
 (python-pyrss2gen~2(c) IMPLIES python~22(c) AND python-central~22(c)) AND 
 (NOT hexedit~2(c)) AND 
 (libreturn-value-perl~3(c) IMPLIES perl~69(c)) AND 
 (NOT starttls~1(c)) AND 
 (NOT bld-tools~1(c)) AND 
 (NOT r-cran-gmodels~2(c)) AND 
 (NOT scsh~2(c)) AND 
 (NOT erlang-runtime-tools~1(c)) AND 
 (NOT python-pmw~2(c)) AND 
 (NOT gromacs-mpich~1(c)) AND 
 (NOT 9mount~1(c)) AND 
 (NOT libshib6~1(c)) AND 
 (NOT ttf-alee~2(c)) AND 
 (NOT libphp-jpgraph-examples~2(c)) AND 
 (NOT libvncauth0~1(c)) AND 
 (NOT libghc6-glade-dev~2(c)) AND 
 (NOT tioga~1(c)) AND 
 (NOT liblzma1~2(c)) AND 
 (NOT libglobus-rsl2~1(c)) AND 
 (NOT xvnc4viewer~2(c)) AND 
 (NOT liblzma0~2(c)) AND 
 (NOT kgamma~3(c)) AND 
 (libevent-dev~1(c) IMPLIES libevent1~2(c)) AND 
 (NOT solfege~1(c)) AND 
 (NOT vncsnapshot~1(c)) AND 
 (NOT libnotifymm-1.0-dbg~1(c)) AND 
 (NOT subdownloader~1(c)) AND 
 (NOT vrflash~2(c)) AND 
 (NOT libbcmail-java-gcj~3(c)) AND 
 (NOT pioneers-meta-server~1(c)) AND 
 (NOT libelfg0-dev~2(c)) AND 
 (NOT libxtrap-dev~2(c)) AND 
 (NOT python-ply~2(c)) AND 
 (NOT quark~2(c)) AND 
 (NOT iconx~1(c)) AND 
 (NOT dvorak7min~2(c)) AND 
 (NOT libprocessui4~2(c)) AND 
 (NOT mythtv-status~1(c)) AND 
 (NOT yahtzeesharp~1(c)) AND 
 (NOT libportmidi0~2(c)) AND 
 (NOT gitweb~2(c)) AND 
 (NOT libroot-tree-treeplayer5.24~2(c)) AND 
 (NOT icont~1(c)) AND 
 (NOT libdbus-glib-1-2~2(c)) AND 
 (NOT remstats-bintools~1(c)) AND 
 (itrans-doc~1(c) IMPLIES tex-common(c)) AND 
 (NOT dns2tcp~1(c)) AND 
 (NOT libserf-0-0-dev~1(c)) AND 
 (NOT libjavascript-perl~1(c)) AND 
 (NOT tftpd~2(c)) AND 
 (NOT libghc6-network-prof~1(c)) AND 
 (NOT inkblot~1(c)) AND 
 (nvidia-kernel-2.6.26-2-openvz-amd64~2(c) IMPLIES nvidia-kernel-common~2(c) AND linux-image-2.6.26-2-openvz-amd64(c)) AND 
 (NOT imlib11-dev~1(c)) AND 
 (NOT libcurses-ocaml-dev~1(c)) AND 
 (NOT sasl2-bin~4(c)) AND 
 (NOT tomcat5.5-admin~1(c)) AND 
 (NOT klettres~2(c)) AND 
 (NOT dbndns~2(c)) AND 
 (NOT libparserutils0-dbg~1(c)) AND 
 (NOT zekr-quran-translations-en~1(c)) AND 
 (NOT libghc6-parsec2-dev~1(c)) AND 
 (NOT iconc~1(c)) AND 
 (NOT libqhull5~3(c)) AND 
 (NOT xmmsctrl~1(c)) AND 
 (NOT python-xapian~1(c)) AND 
 (NOT vdr-plugin-sudoku~1(c)) AND 
 (NOT z88dk~1(c)) AND 
 (gnat-4.3-doc~2(c) IMPLIES (gcc-doc-base~1(c) OR gcc-doc-base~2(c))) AND 
 (NOT libnumerix-ocaml~2(c)) AND 
 (NOT zabbix-server-pgsql~1(c)) AND 
 (NOT libglobus-openssl-dev~2(c)) AND 
 (perlsgml~2(c) IMPLIES perl~69(c)) AND 
 (libscotch-dbg~1(c) IMPLIES libscotch-dev(c) AND zlib1g-dbg(c)) AND 
 (NOT libxcb-xprint0-dbg~2(c)) AND 
 (pine-tracker~1(c) IMPLIES (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf(c))) AND 
 (NOT libapache2-mod-log-sql~1(c)) AND 
 (NOT libcatalyst-perl~3(c)) AND 
 (NOT qmail-qfilter~1(c)) AND 
 (NOT r-cran-cairodevice~3(c)) AND 
 (wbrazilian~2(c) IMPLIES (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf(c)) AND (dictionaries-common~20(c) OR dictionaries-common~15(c))) AND 
 (NOT x11proto-trap-dev~1(c)) AND 
 (NOT libplasma-applet-system-monitor4~4(c)) AND 
 (NOT libgv-perl~1(c)) AND 
 (NOT libx500-dn-perl~1(c)) AND 
 (NOT libfsoframework0~2(c)) AND 
 (NOT atlantik~2(c)) AND 
 (NOT iec16022~2(c)) AND 
 (NOT tttprobe~2(c)) AND 
 (NOT libapache2-redirtoservname~2(c)) AND 
 (NOT libapache-mod-speedycgi~1(c)) AND 
 (NOT libcatalyst-view-tt-perl~1(c)) AND 
 (NOT libxmmsclient0~1(c)) AND 
 (NOT libmusclepkcs11-dev~1(c)) AND 
 (NOT vile-common~3(c)) AND 
 (NOT gpc-4.1-doc~2(c)) AND 
 (NOT xjdic~1(c)) AND 
 (NOT wmmemload~2(c)) AND 
 (NOT sane~1(c)) AND 
 (junit~5(c) IMPLIES (gcj-4.4-jre-headless~3(c) OR gcj-4.4-jre-headless~3(c) OR openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c))) AND 
 (NOT xemacs21-bin~1(c)) AND 
 (libjdom1-java~2(c) IMPLIES (gcj-4.4-jre-headless~3(c) OR gcj-4.4-jre-headless~3(c))) AND 
 (NOT browser-history~2(c)) AND 
 (NOT libpari-dev~2(c)) AND 
 (NOT libgnomeada2.12~1(c)) AND 
 (NOT qlandkarte~1(c)) AND 
 (NOT compiz-kde~1(c)) AND 
 (NOT simba~1(c)) AND 
 (NOT fsviewer~1(c)) AND 
 (NOT libbitstring-ocaml-dev~1(c)) AND 
 (NOT libdv4-dev~2(c)) AND 
 (NOT libpantomime1-dev~1(c)) AND 
 (NOT pure-ftpd-mysql~2(c)) AND 
 (NOT swftools~1(c)) AND 
 (NOT libdjconsole-dev~1(c)) AND 
 (NOT remctl-server~2(c)) AND 
 (NOT gedit-dev~5(c)) AND 
 (NOT centericq~2(c)) AND 
 (NOT pinball~2(c)) AND 
 (NOT kazehakase-dbg~1(c)) AND 
 (NOT ark~5(c)) AND 
 (NOT mgltools-bhtree~1(c)) AND 
 (NOT libgarlic2006~1(c)) AND 
 (NOT libcontactsdb-dev~2(c)) AND 
 (NOT mozilla-firefox-locale-de-de~2(c)) AND 
 (NOT uim-latin~3(c)) AND 
 (umlrun-uml~1(c) IMPLIES python~22(c)) AND 
 (NOT glurp~1(c)) AND 
 (NOT exiftran~1(c)) AND 
 (liberis-1.3-11-dbg~1(c) IMPLIES liberis-1.3-11~1(c)) AND 
 (NOT libmono-zeroconf1.0-cil~2(c)) AND 
 (libgnome-mag-dev~2(c) IMPLIES libgnome-mag2~4(c)) AND 
 (NOT apt-utils~5(c)) AND 
 (NOT libserf-0-0-dbg~1(c)) AND 
 (NOT jocaml~1(c)) AND 
 (NOT alleyoop~2(c)) AND 
 (NOT libwine-capi~2(c)) AND 
 (NOT ikvm~2(c)) AND 
 (libdb4.6-java-dev~2(c) IMPLIES libdb4.6-java(c)) AND 
 (NOT mailfilter~2(c)) AND 
 (NOT libares-dev~2(c)) AND 
 (NOT avifile-mad-plugin~3(c)) AND 
 (NOT remembrance-agent~2(c)) AND 
 (NOT yudit-doc~2(c)) AND 
 (NOT asymptote~1(c)) AND 
 (NOT formed~1(c)) AND 
 (NOT openuniverse~2(c)) AND 
 (NOT gputils~4(c)) AND 
 (NOT gambas2-gb-db~1(c)) AND 
 (NOT libcvm1~1(c)) AND 
 (NOT libpt-dev~3(c)) AND 
 (NOT zope3-sandbox~3(c)) AND 
 (NOT libresid-builder-dev~2(c)) AND 
 (NOT libnet-amazon-ec2-perl~2(c)) AND 
 (NOT smbget~1(c)) AND 
 (NOT libelementary-dev~1(c)) AND 
 (NOT dchroot~2(c)) AND 
 (NOT ganglia-monitor~3(c)) AND 
 (NOT gcj-4.4-source~1(c)) AND 
 (qalculate~2(c) IMPLIES qalculate-gtk(c)) AND 
 (NOT wzdftpd-back-mysql~2(c)) AND 
 (openoffice.org-thesaurus-en-au~1(c) IMPLIES (openoffice.org-common~28(c) OR openoffice.org-common~30(c) OR openoffice.org-common~21(c)) AND (dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c))) AND 
 (NOT pulseaudio-module-lirc~5(c)) AND 
 (NOT php5-xsl~3(c)) AND 
 (NOT euca2ools~1(c)) AND 
 (python-pyrex~1(c) IMPLIES python-central~22(c) AND python(c)) AND 
 (NOT libboost-all-dev~1(c)) AND 
 (NOT squeeze~3(c)) AND 
 (NOT gstreamer0.8-plugins~1(c)) AND 
 (NOT linux-headers-2.6.26-bpo.1-amd64~1(c)) AND 
 (NOT pulseaudio-module-jack~3(c)) AND 
 (NOT debsig-verify~1(c)) AND 
 (NOT scli~2(c)) AND 
 (NOT git-email~4(c)) AND 
 (NOT libxss1~2(c)) AND 
 (NOT linux-image-2.6-vserver-amd64~2(c)) AND 
 (jumpnbump-levels~2(c) IMPLIES jumpnbump(c)) AND 
 (NOT gssdp-tools~2(c)) AND 
 (libheap-perl~3(c) IMPLIES perl~69(c)) AND 
 (NOT semi~3(c)) AND 
 (NOT fatattr~1(c)) AND 
 (NOT libxmuu-dev~1(c)) AND 
 (NOT lib32objc2-dbg~1(c)) AND 
 (NOT inspircd~2(c)) AND 
 (NOT samba-dbg~1(c)) AND 
 (wbritish-large~2(c) IMPLIES (dictionaries-common~20(c) OR dictionaries-common~15(c)) AND (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c))) AND 
 (NOT libtao-qtresource-dev~2(c)) AND 
 (wfrench~3(c) IMPLIES (dictionaries-common~20(c) OR dictionaries-common~15(c)) AND debconf(c)) AND 
 (NOT openscenegraph~1(c)) AND 
 (NOT libcloog-ppl-dev~1(c)) AND 
 (NOT libjgrapht0.6-java-link~1(c)) AND 
 (libesd0-dev~3(c) IMPLIES libesd0~5(c) AND libaudiofile-dev~2(c) AND esound-common~2(c)) AND 
 (NOT phyml~1(c)) AND 
 (NOT qlandkartegt-garmin~1(c)) AND 
 (NOT psutils~3(c)) AND 
 (NOT ltp-commands-test~3(c)) AND 
 (NOT cyrus21-dev~1(c)) AND 
 (NOT libwww-cnic-perl~1(c)) AND 
 (NOT libpari-dbg~2(c)) AND 
 (NOT cl-ssl~1(c)) AND 
 (markdown~2(c) IMPLIES perl~69(c)) AND 
 (NOT citadel-server~2(c)) AND 
 (NOT quodlibet-plugins~5(c)) AND 
 (NOT xfce4-battery-plugin~1(c)) AND 
 (thailatex~1(c) IMPLIES texlive-base-bin(c) AND tetex-base~16(c) AND (tex-common~15(c) OR tex-common~7(c))) AND 
 (NOT ffmpeg-dbg~2(c)) AND 
 (NOT dante-server~2(c)) AND 
 (libnet-server-mail-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT gnome-mplayer~2(c)) AND 
 (NOT libzvt2.0-dev~1(c)) AND 
 (NOT mini-dinstall~2(c)) AND 
 (NOT openoffice.org-kde~4(c)) AND 
 (NOT python-zope.traversing~1(c)) AND 
 (NOT libtabe-db~3(c)) AND 
 (NOT libkadm5clnt4-heimdal~1(c)) AND 
 (libdata-hierarchy-perl~4(c) IMPLIES perl~69(c)) AND 
 (NOT libcrack2~2(c)) AND 
 (NOT wpagui~1(c)) AND 
 (NOT kdebase-bin~8(c)) AND 
 (NOT libpcap0.7-dev~1(c)) AND 
 (NOT wmgtemp~1(c)) AND 
 (NOT libkipi6-dev~1(c)) AND 
 (NOT grunt-uucp~1(c)) AND 
 (NOT libdata-peek-perl~1(c)) AND 
 (NOT gpe-othello~1(c)) AND 
 (NOT tint2~1(c)) AND 
 (mffm-timecode-dev~1(c) IMPLIES g++(c)) AND 
 (NOT qt3-dev-tools-embedded~3(c)) AND 
 (kernel-image-2.6-em64t-p4-smp~1(c) IMPLIES linux-image-2.6-amd64(c)) AND 
 (NOT springgraph~1(c)) AND 
 (vdr-dev~1(c) IMPLIES debhelper(c)) AND 
 (NOT witty~1(c)) AND 
 (libparams-util-perl~5(c) IMPLIES perl~69(c)) AND 
 (NOT libwn-dev~1(c)) AND 
 (NOT openafs-client~6(c)) AND 
 (NOT iptotal~3(c)) AND 
 (NOT libendeavour2-dev~1(c)) AND 
 (NOT libsemanage1-dev~3(c)) AND 
 (NOT libcherokee-server0~4(c)) AND 
 (NOT shiki-wise-theme~1(c)) AND 
 (NOT libgnome-perl~3(c)) AND 
 (NOT libcman-dev~3(c)) AND 
 (NOT libbarry0~1(c)) AND 
 (NOT idle-python2.5~4(c)) AND 
 (NOT libsaml-dev~2(c)) AND 
 (NOT libpantomime1~1(c)) AND 
 (cl-sql~1(c) IMPLIES common-lisp-controller~17(c)) AND 
 (NOT libelementary-dbg~1(c)) AND 
 (NOT tdiary-contrib~2(c)) AND 
 (NOT fprobe~1(c)) AND 
 (openthesaurus-de-kword~1(c) IMPLIES kword~6(c)) AND 
 (NOT annoyance-filter~1(c)) AND 
 (NOT scid~2(c)) AND 
 (NOT torrus-apache2~1(c)) AND 
 (NOT libpq4~2(c)) AND 
 (python-simplejson~4(c) IMPLIES python~22(c) AND python-support~7(c)) AND 
 (libclutter-imcontext-0.1-0-dbg~1(c) IMPLIES libclutter-imcontext-0.1-0~1(c)) AND 
 (NOT vdr-plugin-streamdev-server~2(c)) AND 
 (libcorelinux-examples~1(c) IMPLIES libcorelinux-dev(c)) AND 
 (NOT libtagc0-ruby~2(c)) AND 
 (libgcj-common~8(c) IMPLIES python(c) AND python-central~22(c)) AND 
 (NOT libgnomeprint2-ruby~1(c)) AND 
 (NOT dvgrab~3(c)) AND 
 (libtrollop-ruby~1(c) IMPLIES ruby(c)) AND 
 (NOT libevent-loop-ruby~1(c)) AND 
 (libgems-ruby1.8~2(c) IMPLIES libruby1.8(c) AND rdoc1.8(c) AND libopenssl-ruby1.8(c)) AND 
 (NOT gnome-nettool~5(c)) AND 
 (NOT xsoldier~1(c)) AND 
 (NOT libdbd-mysql-perl~10(c)) AND 
 (NOT python-zope.security~2(c)) AND 
 (NOT cdtool~1(c)) AND 
 (NOT stalonetray~1(c)) AND 
 (NOT xfonts-bolkhov-koi8u-misc~1(c)) AND 
 (NOT coco-java~1(c)) AND 
 (NOT libtrash~1(c)) AND 
 (NOT libgnomeada-2.8~1(c)) AND 
 (NOT libkabcommon4~2(c)) AND 
 (uim-common~4(c) IMPLIES im-switch(c)) AND 
 (NOT libtest-warn-perl~3(c)) AND 
 (NOT kmplot~3(c)) AND 
 (NOT tagtool~1(c)) AND 
 (NOT libdataobjects-mysql-ruby1.8~1(c)) AND 
 (NOT rtfm~1(c)) AND 
 (NOT tla~4(c)) AND 
 (NOT bacula-console~2(c)) AND 
 (NOT libxfce4menu-0.1-0~2(c)) AND 
 (NOT kview~3(c)) AND 
 (NOT drupal6~1(c)) AND 
 (python-pyrad~1(c) IMPLIES python(c) AND python-support~7(c)) AND 
 (NOT drupal5~1(c)) AND 
 (NOT libnids-dev~1(c)) AND 
 (NOT libloudmouth1-0~7(c)) AND 
 (NOT picocom~2(c)) AND 
 (NOT libgnomevfs2-0~7(c)) AND 
 (NOT wmitime~1(c)) AND 
 (NOT libstrigiqtdbusclient-dev~1(c)) AND 
 (NOT ttf-kochi-gothic~1(c)) AND 
 (python-virtualenv~1(c) IMPLIES python(c) AND python-central~22(c) AND python-pkg-resources(c)) AND 
 (libgupnp-doc~1(c) IMPLIES (epiphany-browser~10(c) OR xemacs21-mule-canna-wnn~2(c) OR epiphany-gecko~2(c) OR iceweasel~5(c) OR dillo~2(c) OR epiphany-browser~10(c) OR xemacs21-mule-canna-wnn~2(c) OR epiphany-gecko~2(c) OR iceweasel~5(c) OR dillo~2(c) OR konqueror~13(c) OR midori~2(c) OR iceweasel~16(c) OR netrik~2(c) OR netsurf-linuxfb~1(c) OR netsurf-gtk~1(c))) AND 
 (clamav-dbg~2(c) IMPLIES libclamav5(c) AND clamav(c)) AND 
 (NOT libautounit2~2(c)) AND 
 (NOT python-mpi~4(c)) AND 
 (NOT beast~2(c)) AND 
 (NOT gnome-screensaver~2(c)) AND 
 (NOT libxml-qofqsf-perl~1(c)) AND 
 (NOT php4-common~1(c)) AND 
 (postnews~1(c) IMPLIES python(c)) AND 
 (NOT libparse-exuberantctags-perl~1(c)) AND 
 (NOT libdiagnostics0~1(c)) AND 
 (crypt++el~1(c) IMPLIES (emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs~1(c))) AND 
 (NOT ne-doc~2(c)) AND 
 (NOT henplus~1(c)) AND 
 (NOT ruby1.9.1~1(c)) AND 
 (NOT python-pam~2(c)) AND 
 (NOT libkwwidgets1.0.0908~1(c)) AND 
 (libfreebob0-dev~1(c) IMPLIES libfreebob0~1(c) AND libxml2-dev(c)) AND 
 (NOT arc-noble~1(c)) AND 
 (NOT libnm-util-dev~2(c)) AND 
 (php-cache~2(c) IMPLIES php-pear(c)) AND 
 (NOT php-radius-legacy~2(c)) AND 
 (NOT libhttp-access2-ruby1.8~4(c)) AND 
 (NOT silky~1(c)) AND 
 (NOT giflib-dbg~1(c)) AND 
 (NOT vdr-dbg~1(c)) AND 
 (NOT genext2fs~2(c)) AND 
 (xmame-gl~2(c) IMPLIES xmame-x~2(c) AND xmame-common~2(c)) AND 
 (ipw2200-modules-2.6-vserver-amd64~1(c) IMPLIES ipw2200-modules-2.6.18-6-vserver-amd64(c)) AND 
 (NOT libqt4-gui~8(c)) AND 
 (NOT texlive-fonts-extra~6(c)) AND 
 (NOT libdnas-application-0.32.5-0-dev~1(c)) AND 
 (NOT libmlx4-1-dbg~1(c)) AND 
 (NOT njplot~2(c)) AND 
 (NOT pdns-backend-mysql~2(c)) AND 
 (NOT python-oss~2(c)) AND 
 (NOT libnzb0c2a~1(c)) AND 
 (NOT liburcu0~1(c)) AND 
 (NOT libsymmetrica-dev~1(c)) AND 
 (NOT libm17n-0~3(c)) AND 
 (NOT libhdate1~5(c)) AND 
 (NOT opencubicplayer~2(c)) AND 
 (NOT libfuse-dev~1(c)) AND 
 (NOT librarian0~2(c)) AND 
 (NOT libobjc2~6(c)) AND 
 (libgnumail-java~1(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c) OR gcj-4.4-jre~2(c)) AND libgnujaf-java(c) AND libgnuinet-java(c)) AND 
 (NOT libedata-book1.2-dev~2(c)) AND 
 (NOT libgnomecanvas2-ruby~1(c)) AND 
 (libproc-background-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT openser-radius-modules~1(c)) AND 
 (NOT freeciv-client-gtk~1(c)) AND 
 (NOT libgconf2-dev~10(c)) AND 
 (NOT libwx-perl~4(c)) AND 
 (texpower-manual~1(c) IMPLIES (evince-gtk~4(c) OR kghostview~2(c) OR kghostview~4(c) OR gv~2(c) OR gv~3(c) OR evince-gtk~4(c) OR kghostview~2(c) OR kghostview~4(c) OR gv~2(c) OR gv~3(c))) AND 
 (xpilot-extra~1(c) IMPLIES (perl~69(c) OR perl~69(c))) AND 
 (NOT libgtkmathview0c2a~2(c)) AND 
 (NOT base-files~10(c)) AND 
 (moinmoin-common~1(c) IMPLIES python~22(c) AND python-support~7(c)) AND 
 (NOT python-gpod~4(c)) AND 
 (NOT modlogan~1(c)) AND 
 (libi18n-acceptlanguage-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT openhpi~2(c)) AND 
 (NOT penggy~1(c)) AND 
 (NOT libdsdp-5.8gf~2(c)) AND 
 (NOT libedit-dev~2(c)) AND 
 (NOT pppstatus~1(c)) AND 
 (NOT libomniorb4-dev~2(c)) AND 
 (NOT libopenvrml9~1(c)) AND 
 (NOT libpcp-mmv-perl~1(c)) AND 
 (NOT python-paste~1(c)) AND 
 (NOT gnusim8085~2(c)) AND 
 (NOT evolution-data-server-dbg~4(c)) AND 
 (NOT libmultisync-plugin-all~2(c)) AND 
 (NOT fakepop~1(c)) AND 
 (NOT konwert~2(c)) AND 
 (NOT amule-utils-gui~2(c)) AND 
 (libmono-security2.0-cil~7(c) IMPLIES (libmono-corlib2.0-cil~6(c) OR libmono-corlib2.0-cil~10(c)) AND libmono-system2.0-cil~13(c)) AND 
 (msort-gui~2(c) IMPLIES tk8.5(c) AND iwidgets4(c) AND msort(c)) AND 
 (NOT ndiswrapper-utils-1.9~2(c)) AND 
 (libprobe-perl-perl~2(c) IMPLIES perl~69(c)) AND 
 (liblua5.1-copas0~1(c) IMPLIES liblua5.1-socket2(c)) AND 
 (NOT libkworkspace4~4(c)) AND 
 (NOT z8530-utils2~2(c)) AND 
 (NOT libedataserverui1.2-dev~4(c)) AND 
 (NOT openoffice.org-l10n-be-by~1(c)) AND 
 (NOT qt3-apps-dev~2(c)) AND 
 (NOT libmono-sqlite1.0-cil~2(c)) AND 
 (libarray-unique-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT gcc-4.3-locales~1(c)) AND 
 (NOT mah-jong~2(c)) AND 
 (NOT openhpi-plugin-ipmidirect~1(c)) AND 
 (NOT jpilot-plugins~2(c)) AND 
 (libmono-ldap2.0-cil~2(c) IMPLIES (libmono-corlib2.0-cil~6(c) OR libmono-corlib2.0-cil~10(c)) AND libmono-system2.0-cil~13(c)) AND 
 (NOT libforms1~3(c)) AND 
 (NOT python-numarray~3(c)) AND 
 (NOT hotkey-setup~1(c)) AND 
 (NOT uniutils~1(c)) AND 
 (NOT libharminv2~4(c)) AND 
 (NOT libgdbm-ruby1.9.1~1(c)) AND 
 (NOT libloki0.1.5-dbg~1(c)) AND 
 (NOT libclass-dbi-asform-perl~1(c)) AND 
 (NOT freepops~4(c)) AND 
 (NOT libkdeedu-dev~1(c)) AND 
 (NOT xshisen~1(c)) AND 
 (NOT libggz-gtk-dev~2(c)) AND 
 (NOT libphat0~1(c)) AND 
 (NOT pympd~2(c)) AND 
 (NOT libuptimed0~3(c)) AND 
 (NOT gnuminishogi~1(c)) AND 
 (NOT libipc-sharedcache-perl~2(c)) AND 
 (NOT xtermcontrol~1(c)) AND 
 (NOT wmxres~1(c)) AND 
 (NOT libghc6-http-prof~2(c)) AND 
 (NOT kwave~1(c)) AND 
 (NOT ruby1.9-dev~2(c)) AND 
 (NOT libglu1-mesa-dev~1(c)) AND 
 (NOT pcmciautils~2(c)) AND 
 (NOT pidgin-audacious~1(c)) AND 
 (NOT pymol~2(c)) AND 
 (NOT libopenh323-1.18.0~3(c)) AND 
 (NOT libruby1.9~3(c)) AND 
 (NOT libtasn1-3~2(c)) AND 
 (NOT sqlrelay-postgresql~1(c)) AND 
 (NOT libdate-calc-perl~1(c)) AND 
 (NOT libwvstreams4.6-extras~1(c)) AND 
 (NOT libshhmsg1~2(c)) AND 
 (NOT libgnome-window-settings-dev~1(c)) AND 
 (NOT libpostgis-java~1(c)) AND 
 (NOT rssh~1(c)) AND 
 (NOT nget~2(c)) AND 
 (NOT perl-suid~1(c)) AND 
 (NOT tipptrainer~2(c)) AND 
 (NOT libboost-iostreams1.40-dev~1(c)) AND 
 (NOT libghc6-pcre-light-dev~1(c)) AND 
 (NOT exiv2~2(c)) AND 
 (inspircd-dbg~1(c) IMPLIES inspircd(c)) AND 
 (NOT libdca0~1(c)) AND 
 (NOT python-ctypes~5(c)) AND 
 (NOT djvuserve~2(c)) AND 
 (NOT libdatetime-format-builder-perl~6(c)) AND 
 (NOT libwine-print-unstable~1(c)) AND 
 (NOT tao-utils~1(c)) AND 
 (libhtml-tree-perl~6(c) IMPLIES perl~69(c) AND libhtml-parser-perl(c) AND libhtml-tagset-perl~4(c)) AND 
 (NOT mathpartir~2(c)) AND 
 (NOT libndesk-dbus-glib1.0-cil~2(c)) AND 
 (NOT libenca-dev~1(c)) AND 
 (NOT etpan-ng~1(c)) AND 
 (NOT perlmagick~5(c)) AND 
 (NOT sun-java6-doc~1(c)) AND 
 (NOT btscanner~2(c)) AND 
 (NOT iaxmodem~2(c)) AND 
 (NOT php4-maxdb~1(c)) AND 
 (NOT libpacklib1-lesstif-dev~1(c)) AND 
 (NOT openoffice.org-base-core~1(c)) AND 
 (NOT gthumb~3(c)) AND 
 (libclassworlds-java-doc~2(c) IMPLIES (classpath-doc(c) OR libgcj-doc~3(c) OR libgcj-doc~3(c))) AND 
 (NOT libopencascade-ocaf-dev~1(c)) AND 
 (NOT libkwiki-perl~4(c)) AND 
 (libmono-corlib2.0-cil~6(c) IMPLIES (mono-jit~7(c) OR mono-jit~4(c)) AND mono-jit~4(c)) AND 
 (NOT kjots~2(c)) AND 
 (firmware-ipw2x00~1(c) IMPLIES (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf(c))) AND 
 (NOT libopenipmi-dev~1(c)) AND 
 (NOT sciplot-dev~2(c)) AND 
 (NOT libdb4.6-java~1(c)) AND 
 (NOT libfile-sharedir-perl~5(c)) AND 
 (weblint-perl~2(c) IMPLIES perl(c) AND libhtml-lint-perl(c)) AND 
 (NOT gambas2-gb-db-mysql~1(c)) AND 
 (NOT pronto~1(c)) AND 
 (NOT pychess~1(c)) AND 
 (NOT zlibc~2(c)) AND 
 (libgimp2.0-doc~2(c) IMPLIES (epiphany-browser~10(c) OR xemacs21-mule-canna-wnn~2(c) OR epiphany-gecko~2(c) OR iceweasel~5(c) OR dillo~2(c) OR epiphany-browser~10(c) OR xemacs21-mule-canna-wnn~2(c) OR epiphany-gecko~2(c) OR iceweasel~5(c) OR dillo~2(c) OR konqueror~13(c) OR midori~2(c) OR iceweasel~16(c) OR netrik~2(c) OR netsurf-linuxfb~1(c) OR netsurf-gtk~1(c))) AND 
 (NOT multisync0.90~2(c)) AND 
 (python2.4-dev~8(c) IMPLIES python2.4~9(c)) AND 
 (NOT ggz-sdl-games-data~2(c)) AND 
 (libjcommon-java~2(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c))) AND 
 (NOT gaim-hotkeys~1(c)) AND 
 (NOT intltool~4(c)) AND 
 (NOT mono-jit~7(c)) AND 
 (NOT jack-jconv~1(c)) AND 
 (NOT libgpiv3~2(c)) AND 
 (NOT darcs~5(c)) AND 
 (NOT os-prober~4(c)) AND 
 (jtex-base~4(c) IMPLIES texlive-base-bin(c)) AND 
 (NOT ipopd~5(c)) AND 
 (tcl~4(c) IMPLIES tcl8.4~7(c)) AND 
 (NOT wmmount~1(c)) AND 
 (NOT banshee-extension-coverwallpaper~1(c)) AND 
 (NOT pinentry-gtk2~2(c)) AND 
 (NOT dovecot-pop3d~4(c)) AND 
 (NOT libhttp-daemon-ssl-perl~1(c)) AND 
 (NOT schedutils~1(c)) AND 
 (libboost-system1.40-dev~1(c) IMPLIES libboost1.40-dev~1(c) AND libboost-system1.40.0~2(c)) AND 
 (NOT sitesummary~2(c)) AND 
 (NOT tpm-tools~1(c)) AND 
 (NOT kernel-patch-nfs-ngroups~1(c)) AND 
 (NOT kbabel~3(c)) AND 
 (NOT dates-hildon~1(c)) AND 
 (NOT libpoe-loop-tk-perl~1(c)) AND 
 (NOT libpam-unix2~1(c)) AND 
 (libclass-autouse-perl~4(c) IMPLIES perl~69(c) AND libextutils-autoinstall-perl(c)) AND 
 (NOT libgettext-ruby1.8~3(c)) AND 
 (NOT at-spi~4(c)) AND 
 (NOT php5-xdebug~1(c)) AND 
 (libdata-compare-perl~2(c) IMPLIES perl~69(c) AND libfile-find-rule-perl~8(c)) AND 
 (NOT pdns-server~5(c)) AND 
 (NOT xmms-finespectrum~1(c)) AND 
 (NOT libxcb-render0~1(c)) AND 
 (NOT libfreehdl0-dev~1(c)) AND 
 (NOT xblast-tnt~3(c)) AND 
 (libdifflcs-ruby1.9~1(c) IMPLIES ruby1.9(c)) AND 
 (libdifflcs-ruby1.8~1(c) IMPLIES ruby1.8(c)) AND 
 (NOT groundhog~1(c)) AND 
 (NOT libmagic-dev~3(c)) AND 
 (NOT compiz-gtk~3(c)) AND 
 (NOT esmtp~2(c)) AND 
 (NOT kmtrace~1(c)) AND 
 (NOT levee~2(c)) AND 
 (NOT ulog-acctd~1(c)) AND 
 (education-mathematics~1(c) IMPLIES education-tasks(c)) AND 
 (NOT xa65~2(c)) AND 
 (NOT awffull~1(c)) AND 
 (NOT xfonts-a12k12~1(c)) AND 
 (NOT gfs2-tools~1(c)) AND 
 (NOT freedink-dfarc-dbg~1(c)) AND 
 (NOT qt3-dev-tools-compat~2(c)) AND 
 (NOT iiimf-im-switcher~1(c)) AND 
 (NOT torcs~4(c)) AND 
 (fprobe-ng~2(c) IMPLIES fprobe(c)) AND 
 (NOT speedbar~3(c)) AND 
 (NOT vlc-nox~1(c)) AND 
 (NOT python-metacity~1(c)) AND 
 (NOT libocsigen-ocaml~1(c)) AND 
 (NOT biococoa.app~1(c)) AND 
 (NOT libenca-dbg~1(c)) AND 
 (NOT silcd~1(c)) AND 
 (NOT libroxen-discussit~1(c)) AND 
 (NOT libclan2c2a-ttf~1(c)) AND 
 (libotr2-dev~3(c) IMPLIES libotr2~5(c) AND libgcrypt11-dev(c)) AND 
 (libjgoodies-looks-java~1(c) IMPLIES (gcj-4.4-jre-headless~3(c) OR gcj-4.4-jre-headless~3(c))) AND 
 (NOT nvclock-gtk~2(c)) AND 
 (NOT geoip-bin~4(c)) AND 
 (NOT libgpeschedule0-dbg~1(c)) AND 
 (NOT libsasl2-modules-ldap~1(c)) AND 
 (NOT shanty~1(c)) AND 
 (NOT libdm0-dev~2(c)) AND 
 (NOT kcron~1(c)) AND 
 (NOT mono-xsp2~3(c)) AND 
 (NOT sun-java5-bin~1(c)) AND 
 (NOT zope-kupu~2(c)) AND 
 (NOT timidity-interfaces-extra~1(c)) AND 
 (NOT blacs-lam-test~1(c)) AND 
 (NOT liblog4cxx9c2a~1(c)) AND 
 (NOT libpolkit-dev~1(c)) AND 
 (libextutils-autoinstall-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT libglobus-nexus-dev~2(c)) AND 
 (NOT libseed-dev~1(c)) AND 
 (libxpm4-dbg~2(c) IMPLIES libxpm4~2(c)) AND 
 (python-slides~2(c) IMPLIES python(c) AND python-central~22(c)) AND 
 (NOT libapache2-request-perl~6(c)) AND 
 (NOT ogle-gui~1(c)) AND 
 (NOT penguin-command~2(c)) AND 
 (NOT cl-sdl~1(c)) AND 
 (NOT libprelude2~1(c)) AND 
 (NOT libpam-blue~1(c)) AND 
 (NOT honeyd~2(c)) AND 
 (NOT libgstreamer-plugins-base0.10-0~21(c)) AND 
 (NOT libaosd2~1(c)) AND 
 (NOT mktorrent~1(c)) AND 
 (NOT libargtable2-dev~2(c)) AND 
 (NOT libglobus-duroc-common-dev~2(c)) AND 
 (NOT freewnn-jserver~2(c)) AND 
 (NOT libgraphics-colornames-www-perl~1(c)) AND 
 (libtoolbar-java~2(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c) OR gcj-4.4-jre~2(c))) AND 
 (NOT libapm-dev~2(c)) AND 
 (NOT libghc6-opengl-prof~2(c)) AND 
 (NOT bbrun~1(c)) AND 
 (NOT cdrecord~5(c)) AND 
 (NOT libsfs0c2~1(c)) AND 
 (gnomeicu-common~1(c) IMPLIES gconf2~7(c)) AND 
 (libmono-peapi2.0-cil~2(c) IMPLIES (libmono-corlib2.0-cil~6(c) OR libmono-corlib2.0-cil~10(c))) AND 
 (NOT nvidia-kernel-common~2(c)) AND 
 (NOT avrdude-doc~2(c)) AND 
 (NOT openoffice.org-l10n-sr-cs~2(c)) AND 
 (NOT php5-imap~1(c)) AND 
 (NOT xnest~3(c)) AND 
 (myspell-de-ch~2(c) IMPLIES (dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c))) AND 
 (NOT xfce4-diskperf-plugin~1(c)) AND 
 (NOT psi-plus-plugins~1(c)) AND 
 (NOT cdrdao~3(c)) AND 
 (NOT coinor-libcbc-dev~1(c)) AND 
 (NOT libhugs-hdbc-postgresql~1(c)) AND 
 (NOT wl-beta~1(c)) AND 
 (NOT libgavl0~2(c)) AND 
 (NOT irssi-plugin-xmpp~1(c)) AND 
 (NOT libghc6-parallel-prof~2(c)) AND 
 (NOT libbigloosqlite2.8c~1(c)) AND 
 (dart-server~1(c) IMPLIES python(c)) AND 
 (crossfire-maps~2(c) IMPLIES procps(c)) AND 
 (NOT inkscape~3(c)) AND 
 (NOT kuiviewer~2(c)) AND 
 (NOT bfilter-gui~2(c)) AND 
 (NOT wsjt~3(c)) AND 
 (gs~10(c) IMPLIES (gs-esp(c) OR gs-gpl(c))) AND 
 (NOT libice-dev~4(c)) AND 
 (NOT nedit-dbg~1(c)) AND 
 (NOT xcolors~2(c)) AND 
 (NOT libocamlgraph-ocaml-dev~1(c)) AND 
 (NOT courier-pop~3(c)) AND 
 (libalgorithm-munkres-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT libcurl3-gnutls~4(c)) AND 
 (NOT gtk2-engines~11(c)) AND 
 (NOT redhat-cluster-suite~1(c)) AND 
 (NOT cupsys-common~6(c)) AND 
 (libcrypt-passwdmd5-perl~4(c) IMPLIES perl~69(c)) AND 
 (NOT libobexftp-ruby~1(c)) AND 
 (NOT libcrack2-dev~2(c)) AND 
 (NOT lokalize~1(c)) AND 
 (NOT xsane~3(c)) AND 
 (libnet-tftp-ruby1.8~1(c) IMPLIES libruby1.8(c)) AND 
 (NOT gallery2~1(c)) AND 
 (NOT libgtkdatabox-0.6.0-0~1(c)) AND 
 (NOT libchamplain-gtk-0.4-dev~1(c)) AND 
 (myspell-de-at~2(c) IMPLIES (dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c))) AND 
 (pycmail~1(c) IMPLIES python(c)) AND 
 (NOT python-quixote~2(c)) AND 
 (NOT libsasl2-modules-gssapi-heimdal~3(c)) AND 
 (NOT searchandrescue~2(c)) AND 
 (NOT xmms2-plugin-musepack~1(c)) AND 
 (NOT chemtool~2(c)) AND 
 (NOT rdmacm-utils~2(c)) AND 
 (NOT heimdal-kdc~1(c)) AND 
 (NOT libfsoframework-dev~1(c)) AND 
 (NOT libsha-ocaml~2(c)) AND 
 (NOT libmono-bytefx0.7.6.2-cil~5(c)) AND 
 (NOT vim-vimoutliner~1(c)) AND 
 (xml-twig-tools~1(c) IMPLIES perl(c) AND libxml-parser-perl(c) AND libxml-twig-perl(c)) AND 
 (NOT bacula-sd-mysql~1(c)) AND 
 (NOT claws-mail-extra-plugins~1(c)) AND 
 (NOT netbase~24(c)) AND 
 (NOT php5-remctl~2(c)) AND 
 (NOT heimdal-kcm~1(c)) AND 
 (NOT vpb-driver-source~1(c)) AND 
 (NOT nmap~5(c)) AND 
 (libarch-perl~5(c) IMPLIES tla~4(c)) AND 
 (libroot-proof-proofplayer-dev~1(c) IMPLIES libroot-proof-proofplayer5.24~1(c) AND libroot-proof-dev(c)) AND 
 (NOT python-ogg~2(c)) AND 
 (NOT libglib2.0-0-refdbg~1(c)) AND 
 (NOT cl-irc-logger~1(c)) AND 
 (libfeedparser-ruby~2(c) IMPLIES libfeedparser-ruby1.8(c)) AND 
 (NOT util-vserver~3(c)) AND 
 (NOT gir1.0-gconf-2.0~1(c)) AND 
 (NOT libboost-graph-parallel1.40.0~1(c)) AND 
 (NOT sox~4(c)) AND 
 (NOT treeviewx~2(c)) AND 
 (NOT libstage2-dev~1(c)) AND 
 (NOT compiz-gnome~1(c)) AND 
 (NOT ndoc~1(c)) AND 
 (NOT libqof2-backend-qsf~1(c)) AND 
 (NOT libhugs-edison-api~2(c)) AND 
 (ddclient~1(c) IMPLIES (perl~69(c) OR perl~69(c)) AND (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c))) AND 
 (NOT cl-rss~1(c)) AND 
 (opalmod~4(c) IMPLIES perl~69(c)) AND 
 (NOT wpg2odg~1(c)) AND 
 (libfcgi-procmanager-perl~1(c) IMPLIES perl~69(c)) AND 
 (jacal~2(c) IMPLIES guile-1.6(c) AND slib~7(c)) AND 
 (libdtdparser-java~2(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c) OR gcj-4.4-jre~2(c))) AND 
 (NOT kbruch~2(c)) AND 
 (NOT libxcb-screensaver0-dev~1(c)) AND 
 (NOT gnuvd~2(c)) AND 
 (NOT exim4~2(c)) AND 
 (NOT libqt3-mt~8(c)) AND 
 (libjspeex-java~1(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c) OR gcj-4.4-jre~2(c))) AND 
 (NOT solid-pop3d~1(c)) AND 
 (NOT libjama-java~2(c)) AND 
 (NOT parprouted~2(c)) AND 
 (iceweasel-downloadstatusbar~1(c) IMPLIES iceweasel~16(c)) AND 
 (NOT libgpgme-ruby1.9~2(c)) AND 
 (NOT php-fpdf~2(c)) AND 
 (NOT pound~2(c)) AND 
 (NOT smbfs~5(c)) AND 
 (NOT r-cran-xml~2(c)) AND 
 (adzapper~2(c) IMPLIES perl(c)) AND 
 (NOT libxi6-dbg~2(c)) AND 
 (NOT lm-sensors~6(c)) AND 
 (NOT maxima-emacs~2(c)) AND 
 (NOT libgtkmm-dev~2(c)) AND 
 (python-advas~1(c) IMPLIES python(c) AND python-support~7(c)) AND 
 (NOT xbindkeys~2(c)) AND 
 (NOT python-geoip~1(c)) AND 
 (NOT iputils-ping~3(c)) AND 
 (NOT htcheck~1(c)) AND 
 (NOT cernlib-core-dev~2(c)) AND 
 (NOT libmlt2~1(c)) AND 
 (NOT byobu-extras~2(c)) AND 
 (NOT sitecopy~1(c)) AND 
 (NOT libocamlnet-ocaml-dev~8(c)) AND 
 (NOT python-pudge~2(c)) AND 
 (NOT rplay-server~2(c)) AND 
 (NOT yate-alsa~2(c)) AND 
 (NOT libgimp2.0-dev~2(c)) AND 
 (NOT knetwalk~2(c)) AND 
 (NOT zope2.10-sandbox~2(c)) AND 
 (NOT chillispot~1(c)) AND 
 (NOT dnsutils~4(c)) AND 
 (NOT libtdb1~2(c)) AND 
 (NOT python-daap~1(c)) AND 
 (NOT timps~1(c)) AND 
 (libbytecode-java~1(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c) OR openjdk-6-jre(c))) AND 
 (NOT libuim3-dbg~1(c)) AND 
 (NOT portaudio19-dev~1(c)) AND 
 (NOT gnuift-perl~1(c)) AND 
 (NOT libpoppler0c2-qt~2(c)) AND 
 (NOT pbuilder~3(c)) AND 
 (libchamplain-gtk-0.4-dbg~1(c) IMPLIES libchamplain-gtk-0.4-0~2(c)) AND 
 (NOT tdiary-mode~2(c)) AND 
 (NOT apwal~1(c)) AND 
 (NOT gstreamer0.8-sid~2(c)) AND 
 (NOT apt-watch~3(c)) AND 
 (NOT dissy~2(c)) AND 
 (libfsoframework-dbg~1(c) IMPLIES libfsoframework0~2(c)) AND 
 (NOT libgps-dev~3(c)) AND 
 (NOT dbmail~1(c)) AND 
 (NOT adjtimex~2(c)) AND 
 (NOT libcommons-discovery-java~2(c)) AND 
 (NOT html-helper-mode~1(c)) AND 
 (NOT adept-installer~1(c)) AND 
 (NOT slice2freezej~1(c)) AND 
 (NOT ttf2pt1~1(c)) AND 
 (NOT gearman-job-server~2(c)) AND 
 (NOT libgmp3c2~2(c)) AND 
 (NOT libkleo4~1(c)) AND 
 (NOT monster-masher~2(c)) AND 
 (NOT libtext-bibtex-perl~1(c)) AND 
 (NOT libsane-dbg~1(c)) AND 
 (NOT ksysv~2(c)) AND 
 (NOT pam-pkcs11-dbg~1(c)) AND 
 (NOT libgpgme-ruby~2(c)) AND 
 (NOT gedit-latex-plugin~1(c)) AND 
 (NOT libaspect0-dev~2(c)) AND 
 (NOT wordnet-grind~1(c)) AND 
 (NOT xwrits~1(c)) AND 
 (NOT libcgi-untaint-email-perl~1(c)) AND 
 (NOT lxmusic~1(c)) AND 
 (NOT libxvmc1-dbg~2(c)) AND 
 (NOT pure-ftpd-postgresql~1(c)) AND 
 (NOT libffado1~2(c)) AND 
 (NOT xserver-xorg-input-mutouch~1(c)) AND 
 (NOT libsnmp9-dev~1(c)) AND 
 (NOT proftpd-mod-mysql~3(c)) AND 
 (NOT lib32gomp1~3(c)) AND 
 (NOT libxcb-screensaver0-dbg~1(c)) AND 
 (NOT gambas2-gb-db-form~1(c)) AND 
 (NOT liblua50-socket2~2(c)) AND 
 (libswfdec-0.6-90-dbg~1(c) IMPLIES libswfdec-0.6-90~1(c)) AND 
 (graphicsmagick-imagemagick-compat~2(c) IMPLIES graphicsmagick(c)) AND 
 (NOT libcryptui0~1(c)) AND 
 (NOT libxcb-aux0~2(c)) AND 
 (NOT libnfnetlink-dev~5(c)) AND 
 (NOT libtreil0~1(c)) AND 
 (NOT muddleftpd~1(c)) AND 
 (NOT libgsl0ldbl~3(c)) AND 
 (liblog4r-ruby1.8~2(c) IMPLIES libruby1.8(c)) AND 
 (libhugs-http~1(c) IMPLIES (hugs~2(c) OR hugs~5(c))) AND 
 (NOT gnome-netstatus-applet~5(c)) AND 
 (NOT xfonts-jmk~2(c)) AND 
 (NOT emcast~2(c)) AND 
 (NOT wput~2(c)) AND 
 (NOT libsocksd-dev~1(c)) AND 
 (NOT diffstat~3(c)) AND 
 (NOT libdb4.8-java-dev~1(c)) AND 
 (NOT iputils-tracepath~3(c)) AND 
 (NOT cl-rsm-rsa~1(c)) AND 
 (NOT libmojito0~3(c)) AND 
 (NOT xtermset~2(c)) AND 
 (NOT libroxen-jsredirect~1(c)) AND 
 (NOT libhyantes-dev~1(c)) AND 
 (NOT adplay~1(c)) AND 
 (NOT ipsec-tools~2(c)) AND 
 (NOT libgnadepostgresql-dev~2(c)) AND 
 (NOT itools~1(c)) AND 
 (NOT timidity-el~3(c)) AND 
 (NOT libghc6-gtksourceview2-dev~1(c)) AND 
 (NOT libapache-mod-cgi-debug~1(c)) AND 
 (libhugs-magic~3(c) IMPLIES hugs~5(c)) AND 
 (NOT junior-games-net~2(c)) AND 
 (NOT php-zeroc-ice~2(c)) AND 
 (NOT libxcursor1-dbg~2(c)) AND 
 (NOT asp.net-examples~3(c)) AND 
 (NOT eikazo~1(c)) AND 
 (NOT zipper.app~2(c)) AND 
 (NOT libfslio0-dev~1(c)) AND 
 (NOT libmedimportcxx0~1(c)) AND 
 (NOT libssl0.9.8~11(c)) AND 
 (NOT liblwt-ssl-ocaml-dev~1(c)) AND 
 (NOT gnome-do-plugin-evolution~1(c)) AND 
 (NOT srecord~2(c)) AND 
 (NOT makexvpics~1(c)) AND 
 (NOT postgresql-client~3(c)) AND 
 (NOT kolabd~3(c)) AND 
 (NOT geki2~2(c)) AND 
 (libgeography-nationalgrid-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT xmms2-et~2(c)) AND 
 (NOT liblablgtkmathview-ocaml-dev~1(c)) AND 
 (libmath-calc-units-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT festival-gaim~1(c)) AND 
 (libmath-derivative-perl~1(c) IMPLIES perl~69(c)) AND 
 (rt2860-source~1(c) IMPLIES bzip2(c)) AND 
 (NOT xscorch~2(c)) AND 
 (NOT libuclmmbase1-dev~1(c)) AND 
 (NOT libghc6-cgi-prof~2(c)) AND 
 (NOT libcue1~1(c)) AND 
 (NOT php-getid3~2(c)) AND 
 (NOT syscp~2(c)) AND 
 (NOT csound~4(c)) AND 
 (NOT libcanberra-pulse-dbg~1(c)) AND 
 (NOT ttf-okolaks~1(c)) AND 
 (NOT bear-factory~1(c)) AND 
 (NOT libpsp-parser-perl~1(c)) AND 
 (NOT enigmail-locale-es-es~1(c)) AND 
 (NOT libapache2-mod-speedycgi~3(c)) AND 
 (NOT libsqlite3-tcl~1(c)) AND 
 (NOT libpam-ldap~1(c)) AND 
 (NOT libtirpc1~1(c)) AND 
 (NOT plplot9-driver-gd~1(c)) AND 
 (NOT sbnc-tcl~1(c)) AND 
 (NOT gstreamer0.8-sdl~2(c)) AND 
 (NOT freecell-solver-bin~1(c)) AND 
 (NOT libdmraid1.0.0.rc15~2(c)) AND 
 (NOT faketime~1(c)) AND 
 (NOT xwota~3(c)) AND 
 (NOT apt-howto-uk~1(c)) AND 
 (NOT php5-mhash~1(c)) AND 
 (NOT python~22(c)) AND 
 (NOT slang-gtk~2(c)) AND 
 (NOT strigi-daemon~3(c)) AND 
 (NOT sysprof-module-source~2(c)) AND 
 (NOT xfonts-scalable~3(c)) AND 
 (NOT yorick-soy~1(c)) AND 
 (NOT reinteract~1(c)) AND 
 (NOT protobuf-compiler~2(c)) AND 
 (NOT zimpl~3(c)) AND 
 (NOT cupsys~9(c)) AND 
 (NOT libkontactinterfaces4~1(c)) AND 
 (NOT sndfile-programs~1(c)) AND 
 (NOT junior-typing~2(c)) AND 
 (cl-rlc~1(c) IMPLIES common-lisp-controller~17(c) AND cl-kmrcl(c) AND xgraph(c)) AND 
 (NOT kdegraphics-dbg~4(c)) AND 
 (NOT cmatrix-xfont~1(c)) AND 
 (NOT netapplet~1(c)) AND 
 (NOT blt-dev~4(c)) AND 
 (NOT xmabacus~1(c)) AND 
 (NOT apt-howto-tr~1(c)) AND 
 (NOT libgpmg1-dev~1(c)) AND 
 (NOT libshishi-dev~2(c)) AND 
 (NOT proftpd-basic~2(c)) AND 
 (NOT libxmmsclient-glib0~1(c)) AND 
 (NOT gnunet-gtk-dev~1(c)) AND 
 (NOT libwrap0~3(c)) AND 
 (NOT courier-maildrop~5(c)) AND 
 (NOT libdbi-ruby1.8~3(c)) AND 
 (NOT vloopback-source~1(c)) AND 
 (xmms-skins~1(c) IMPLIES xmms~11(c)) AND 
 (NOT slang-gsl~2(c)) AND 
 (NOT trickle~1(c)) AND 
 (NOT kdetoys~6(c)) AND 
 (NOT python-repoze.what~1(c)) AND 
 (NOT redmine-mysql~1(c)) AND 
 (NOT libestraier-java~1(c)) AND 
 (NOT debian-backports-keyring~1(c)) AND 
 (libfast-md5-java~1(c) IMPLIES (gcj-4.4-jre-headless~3(c) OR gcj-4.4-jre-headless~3(c))) AND 
 (NOT libaqdtaus3~1(c)) AND 
 (NOT libaudio-mpd-common-perl~3(c)) AND 
 (NOT openexr-viewers~1(c)) AND 
 (NOT sqwebmail~3(c)) AND 
 (NOT debian-edu-install~2(c)) AND 
 (NOT fig2sxd~1(c)) AND 
 (NOT libsvn1~2(c)) AND 
 (NOT aolserver4-daemon~1(c)) AND 
 (NOT kpsion~1(c)) AND 
 (NOT kmilo~1(c)) AND 
 (NOT docgenerator~1(c)) AND 
 (NOT libavahi-qt3-1~5(c)) AND 
 (NOT abuse-sfx~1(c)) AND 
 (NOT muine-plugin-inotify~1(c)) AND 
 (strongswan~4(c) IMPLIES strongswan-ikev1(c) AND strongswan-ikev2(c)) AND 
 (NOT r-cran-cluster~4(c)) AND 
 (NOT libgstreamer-plugins-pulse0.10-0~2(c)) AND 
 (NOT openoffice.org-voikko~2(c)) AND 
 (NOT dpkg-cross~8(c)) AND 
 (libstring-format-perl~2(c) IMPLIES perl~69(c)) AND 
 (mhonarc~1(c) IMPLIES perl(c)) AND 
 (libwiki-toolkit-plugin-diff-perl~2(c) IMPLIES libparams-validate-perl~13(c) AND libvcs-lite-perl~3(c) AND libwiki-toolkit-perl(c) AND perl~69(c)) AND 
 (NOT ov51x-jpeg-source~1(c)) AND 
 (NOT libgdk-pixbuf-gnome2~2(c)) AND 
 (NOT apt-build~2(c)) AND 
 (NOT buici-clock~2(c)) AND 
 (libmockobjects-java~2(c) IMPLIES (gcj-4.4-jre~2(c) OR openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c))) AND 
 (NOT lockout~1(c)) AND 
 (NOT postgresql-pltcl-8.4~1(c)) AND 
 (NOT postgresql-pltcl-8.3~1(c)) AND 
 (NOT snort-rules-default~1(c)) AND 
 (NOT postgresql-pltcl-8.1~1(c)) AND 
 (NOT libsvm2~2(c)) AND 
 (NOT libnm-glib-vpn0~2(c)) AND 
 (NOT apt-howto-ru~1(c)) AND 
 (NOT libwww-google-calculator-perl~2(c)) AND 
 (NOT libgpepimc0~2(c)) AND 
 (NOT courier-pcp~3(c)) AND 
 (NOT quickplot~1(c)) AND 
 (NOT apvlv~1(c)) AND 
 (NOT ncbi-rrna-data~1(c)) AND 
 (NOT sdcc~3(c)) AND 
 (NOT vlc-plugin-jack~2(c)) AND 
 (NOT worldwind~1(c)) AND 
 (NOT concordance~1(c)) AND 
 (NOT nagios-mysql~2(c)) AND 
 (NOT cl-brlapi~1(c)) AND 
 (NOT sauce~2(c)) AND 
 (libtest-unit-ruby~1(c) IMPLIES libruby1.8~5(c)) AND 
 (NOT shogun-dbg~1(c)) AND 
 (NOT hplip-data~7(c)) AND 
 (libboost-doc~3(c) IMPLIES libboost1.40-doc(c)) AND 
 (NOT erlang~1(c)) AND 
 (NOT rygel-tracker~1(c)) AND 
 (NOT libxcb-xf86dri0~1(c)) AND 
 (NOT xserver-xorg-input-fpit~2(c)) AND 
 (NOT gnome-wise-icon-theme~1(c)) AND 
 (NOT kflickr~2(c)) AND 
 (NOT equivs~1(c)) AND 
 (NOT pppoeconf~2(c)) AND 
 (NOT libpam-shield~1(c)) AND 
 (NOT autotrace~3(c)) AND 
 (librfilter-ruby1.8~1(c) IMPLIES librmail-ruby1.8(c)) AND 
 (debconf-english~2(c) IMPLIES debconf(c)) AND 
 (libmpcdec-dev~2(c) IMPLIES libmpcdec6~2(c)) AND 
 (NOT enigmail-locale-es-ar~1(c)) AND 
 (NOT paq8l~2(c)) AND 
 (NOT petsc-dev~2(c)) AND 
 (NOT kshisen~1(c)) AND 
 (NOT ilohamail~1(c)) AND 
 (NOT libexif-dev~1(c)) AND 
 (NOT line6-usb-source~1(c)) AND 
 (NOT libxcb-glx0-dev~2(c)) AND 
 (iceweasel-l10n-hi-in~2(c) IMPLIES iceweasel~16(c) AND (iceweasel~16(c) OR iceweasel~5(c))) AND 
 (NOT dhcp3-server-ldap~1(c)) AND 
 (NOT libevent-dev~2(c)) AND 
 (liblist-compare-perl~2(c) IMPLIES perl~69(c)) AND 
 (vzdump~1(c) IMPLIES perl(c) AND vzctl(c)) AND 
 (NOT libsc-dev~1(c)) AND 
 (NOT apticron~3(c)) AND 
 (NOT libgnetwork1.0-dev~1(c)) AND 
 (NOT kgoldrunner~2(c)) AND 
 (NOT beancounter~1(c)) AND 
 (NOT libipoddevice0~2(c)) AND 
 (NOT libxtrap-dev~3(c)) AND 
 (NOT nvidia-glx-dev~6(c)) AND 
 (NOT libfontenc-dev~3(c)) AND 
 (NOT libopal-2.2.0~2(c)) AND 
 (NOT inn2~4(c)) AND 
 (fig2sty~1(c) IMPLIES perl~69(c)) AND 
 (NOT classpath-gtkpeer~1(c)) AND 
 (NOT libmdbodbc~1(c)) AND 
 (NOT wmauda~2(c)) AND 
 (NOT libhugs-glut-bundled~1(c)) AND 
 (NOT ttf-goudybookletter~1(c)) AND 
 (NOT gnunet-gtk-dbg~1(c)) AND 
 (NOT libportmidi0~3(c)) AND 
 (NOT libmaven-invoker-java~1(c)) AND 
 (NOT klogic~2(c)) AND 
 (NOT md5deep~1(c)) AND 
 (openverse~2(c) IMPLIES (tcl8.5~3(c) OR tcl8.5~3(c) OR tcl8.4~7(c) OR tcl~4(c)) AND (tk8.5~3(c) OR tk8.5~3(c) OR tk8.4~5(c) OR tk~4(c))) AND 
 (NOT libnetcdf-dev~1(c)) AND 
 (NOT libroxen-thumbview~1(c)) AND 
 (NOT libboost-serialization-dev~4(c)) AND 
 (libmd5-perl~3(c) IMPLIES perl~69(c)) AND 
 (NOT gallimimus~1(c)) AND 
 (NOT libnetfilter-queue-dev~1(c)) AND 
 (NOT libemail-sender-perl~1(c)) AND 
 (NOT kblackbox~1(c)) AND 
 (NOT mixmaster~2(c)) AND 
 (NOT ttf-sazanami-gothic~2(c)) AND 
 (NOT gobjc~2(c)) AND 
 (NOT python-pyorbit-omg~2(c)) AND 
 (NOT apt-howto-pl~1(c)) AND 
 (NOT gnuit~2(c)) AND 
 (NOT prayer-accountd~2(c)) AND 
 (NOT libsyslog-ocaml-dev~2(c)) AND 
 (NOT sarg~2(c)) AND 
 (galeon-common~1(c) IMPLIES gconf2~7(c)) AND 
 (NOT libmpeg3-1~2(c)) AND 
 (NOT xmms-speex~1(c)) AND 
 (NOT libscim8c2a~4(c)) AND 
 (NOT libmpcdec6~2(c)) AND 
 (NOT pulseaudio-esound-compat-dbg~3(c)) AND 
 (NOT restartd~1(c)) AND 
 (NOT libmpcdec3~2(c)) AND 
 (NOT atheme-services~1(c)) AND 
 (NOT php4-librdf~1(c)) AND 
 (NOT xmms2-plugin-vorbis~1(c)) AND 
 (NOT libqca2~3(c)) AND 
 (NOT cli-uno-bridge~3(c)) AND 
 (NOT pvrg-jpeg~1(c)) AND 
 (linux-image-2.6-vserver-amd64-k8-smp~1(c) IMPLIES linux-image-2.6-vserver-amd64(c)) AND 
 (NOT selinux-policy-refpolicy-targeted~1(c)) AND 
 (NOT libavahi-client-dev~5(c)) AND 
 (NOT libghc6-utf8-string-prof~1(c)) AND 
 (NOT iputils-arping~1(c)) AND 
 (libgemplugin-ruby1.8~2(c) IMPLIES ruby~8(c) AND rubygems1.8(c)) AND 
 (NOT libxml-validator-schema-perl~1(c)) AND 
 (NOT libgpib0~2(c)) AND 
 (NOT scilab-plotlib~1(c)) AND 
 (pine-tracker~2(c) IMPLIES (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf(c))) AND 
 (libclass-base-perl~1(c) IMPLIES perl~69(c)) AND 
 (python-nose~2(c) IMPLIES python~22(c) AND python-support~7(c) AND (python-setuptools~11(c) OR python-setuptools~10(c))) AND 
 (cracklib2-dev~1(c) IMPLIES libcrack2~2(c)) AND 
 (NOT kompozer~2(c)) AND 
 (satutils~2(c) IMPLIES perl~69(c) AND libwww-perl(c)) AND 
 (NOT libcomplearn-gomp-dev~1(c)) AND 
 (NOT dpsyco-base~3(c)) AND 
 (NOT pure-ftpd~2(c)) AND 
 (NOT python-pisock~1(c)) AND 
 (NOT neko-dev~1(c)) AND 
 (NOT libgportugol-dev~1(c)) AND 
 (NOT libmysql-ocaml-dev~3(c)) AND 
 (NOT caudium-ultralog~2(c)) AND 
 (NOT libelementary-bin~1(c)) AND 
 (NOT gnuboy-sdl~1(c)) AND 
 (librmail-ruby1.8~1(c) IMPLIES libruby1.8(c)) AND 
 (NOT r-cran-sp~2(c)) AND 
 (NOT r-cran-sn~2(c)) AND 
 (NOT xmms2-plugin-mpg123~1(c)) AND 
 (NOT r-cran-sm~2(c)) AND 
 (NOT libgladexml-perl~1(c)) AND 
 (clamav-data~3(c) IMPLIES (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c))) AND 
 (NOT kde-devel-extras~1(c)) AND 
 (NOT linux-image-2.6.26-1-amd64~1(c)) AND 
 (NOT aolserver4-nssqlite3~1(c)) AND 
 (python-textile~2(c) IMPLIES python(c) AND python-central~22(c)) AND 
 (NOT xemacs21-bin~2(c)) AND 
 (NOT hodie~2(c)) AND 
 (NOT kword~6(c)) AND 
 (NOT libsigc++-2.0-dev~4(c)) AND 
 (NOT libshhopt1-dev~1(c)) AND 
 (NOT gnugo~2(c)) AND 
 (capplets-data~10(c) IMPLIES gconf2~7(c)) AND 
 (NOT evolution-dbg~2(c)) AND 
 (NOT libapache2-mod-php5filter~2(c)) AND 
 (NOT gnugk~2(c)) AND 
 (NOT libscalar-string-perl~1(c)) AND 
 (NOT libxcb-glx0-dbg~2(c)) AND 
 (NOT mgltools-pmv~1(c)) AND 
 (NOT deluge-torrent~3(c)) AND 
 (NOT rarpd~2(c)) AND 
 (NOT cfengine2~3(c)) AND 
 (NOT openoffice.org-presenter-console~2(c)) AND 
 (NOT libghc6-parsec3-dev~1(c)) AND 
 (NOT milkytracker~1(c)) AND 
 (NOT subtitleeditor~1(c)) AND 
 (NOT python-sasync~1(c)) AND 
 (NOT libraw1394-dev~4(c)) AND 
 (NOT gnulib~2(c)) AND 
 (libbluecloth-ruby1.8~1(c) IMPLIES ruby1.8(c)) AND 
 (NOT geany-plugin-sendmail~2(c)) AND 
 (NOT memories~1(c)) AND 
 (NOT trackballs~2(c)) AND 
 (NOT libcvsservice0~2(c)) AND 
 (libtime-modules-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT mhc-utils~1(c)) AND 
 (NOT libboost-regex1.39.0~2(c)) AND 
 (libcommons-net2-java-doc~1(c) IMPLIES (classpath-doc(c) OR libgcj-doc~3(c) OR libgcj-doc~3(c) OR openjdk-6-doc(c))) AND 
 (NOT libtag1-rusxmms~1(c)) AND 
 (NOT libsmtpguard1~2(c)) AND 
 (NOT libcdb-dev~2(c)) AND 
 (NOT libxmmsclient++-dev~1(c)) AND 
 (NOT libgenders-perl~1(c)) AND 
 (liblwp-authen-wsse-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT bugsx~3(c)) AND 
 (NOT fossology-common~1(c)) AND 
 (NOT libarkrpg0c2a~2(c)) AND 
 (NOT libgnomevfs2-ruby1.8-dbg~1(c)) AND 
 (NOT libgnome2-dev~10(c)) AND 
 (NOT pngmeta~3(c)) AND 
 (dict-devil~2(c) IMPLIES (serpento~1(c) OR dictd~4(c) OR dictd(c))) AND 
 (libnet-z3950-perl~3(c) IMPLIES libnet-z3950-zoom-perl(c)) AND 
 (NOT patcher~1(c)) AND 
 (NOT openuniverse~3(c)) AND 
 (NOT kdessh~3(c)) AND 
 (NOT python-gtask~1(c)) AND 
 (NOT tremulous-server~2(c)) AND 
 (NOT liblpsolve55-dev~2(c)) AND 
 (NOT libtk-img~2(c)) AND 
 (NOT sane~2(c)) AND 
 (NOT libstdc++6-4.1-pic~2(c)) AND 
 (NOT libgdal1-dev~1(c)) AND 
 (NOT kdesktop~1(c)) AND 
 (NOT libglib2-ruby1.8~3(c)) AND 
 (cl-regex~2(c) IMPLIES common-lisp-controller~17(c)) AND 
 (NOT howl-xml~1(c)) AND 
 (NOT libtagc0-dev~2(c)) AND 
 (NOT ocaml~5(c)) AND 
 (wcanadian-large~1(c) IMPLIES debconf(c) AND (dictionaries-common~20(c) OR dictionaries-common~15(c)) AND (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c))) AND 
 (librudiments-dev~4(c) IMPLIES librudiments0.32~2(c)) AND 
 (NOT xmldiff~2(c)) AND 
 (NOT apt-howto-ko~1(c)) AND 
 (NOT giblib-dev~2(c)) AND 
 (NOT advancecomp~1(c)) AND 
 (NOT execstack~1(c)) AND 
 (NOT epiphany~3(c)) AND 
 (libtest-simple-perl~7(c) IMPLIES perl(c)) AND 
 (NOT promoe~1(c)) AND 
 (python-pyrex~2(c) IMPLIES python(c) AND python-central~22(c)) AND 
 (NOT libdnsres0~1(c)) AND 
 (NOT drbd8-utils~3(c)) AND 
 (NOT lsh-utils~5(c)) AND 
 (NOT seaview~1(c)) AND 
 (NOT drobo-utils~1(c)) AND 
 (NOT linux-headers-2.6.26-bpo.1-xen-amd64~1(c)) AND 
 (NOT moblin-icon-theme~1(c)) AND 
 (NOT pioneers-ai~1(c)) AND 
 (NOT xfonts-bolkhov-isocyr-75dpi~1(c)) AND 
 (NOT fteqcc~2(c)) AND 
 (NOT openoffice.org-l10n-be-by~4(c)) AND 
 (NOT socket~2(c)) AND 
 (NOT libogre5c2a~1(c)) AND 
 (NOT libxapian-ruby1.8~1(c)) AND 
 (NOT xdebconfigurator~1(c)) AND 
 (NOT xml2rfc~1(c)) AND 
 (libheap-perl~4(c) IMPLIES perl~69(c)) AND 
 (NOT uim-skk~2(c)) AND 
 (NOT root-plugin-graf2d-qt~2(c)) AND 
 (NOT buffycli~1(c)) AND 
 (NOT ca-certificates-java~1(c)) AND 
 (NOT libimage-imlib2-perl~2(c)) AND 
 (NOT libglibmm-2.4-dev~11(c)) AND 
 (libextractor-java-dev~2(c) IMPLIES libextractor-java0~2(c)) AND 
 (python-mutagen~3(c) IMPLIES python-central~22(c) AND python~22(c)) AND 
 (libdevel-symdump-perl~1(c) IMPLIES perl~69(c)) AND 
 (heartbeat-dev~2(c) IMPLIES heartbeat~3(c)) AND 
 (NOT librra-dev~1(c)) AND 
 (NOT libsolidcontrolifaces4~4(c)) AND 
 (NOT wmdiskmon~2(c)) AND 
 (python-parallel~2(c) IMPLIES python(c) AND python-central~22(c)) AND 
 (NOT libctl3~1(c)) AND 
 (NOT libxml-filter-buffertext-perl~3(c)) AND 
 (NOT linphone~2(c)) AND 
 (NOT libestools1.2-dev~2(c)) AND 
 (NOT parley~1(c)) AND 
 (NOT quantlib-ruby~1(c)) AND 
 (NOT mono-xsp~1(c)) AND 
 (NOT pnm2ppa~2(c)) AND 
 (NOT vblade~1(c)) AND 
 (NOT libmailutils-dev~2(c)) AND 
 (muttprint-manual~2(c) IMPLIES (evince-gtk~4(c) OR kghostview~2(c) OR kghostview~4(c) OR gv~2(c) OR gv~3(c) OR evince-gtk~4(c) OR kghostview~2(c) OR kghostview~4(c) OR gv~2(c) OR gv~3(c) OR epiphany-browser~10(c) OR xemacs21-mule-canna-wnn~2(c) OR epiphany-gecko~2(c) OR iceweasel~5(c) OR dillo~2(c) OR epiphany-browser~10(c) OR xemacs21-mule-canna-wnn~2(c) OR epiphany-gecko~2(c) OR iceweasel~5(c) OR dillo~2(c) OR konqueror~13(c) OR midori~2(c) OR iceweasel~16(c) OR netrik~2(c) OR netsurf-linuxfb~1(c) OR netsurf-gtk~1(c))) AND 
 (NOT anacron~2(c)) AND 
 (NOT libxres1~2(c)) AND 
 (NOT openoffice.org-draw~4(c)) AND 
 (php-net-smartirc~2(c) IMPLIES php-pear(c)) AND 
 (NOT colormake~1(c)) AND 
 (NOT apt-howto-it~1(c)) AND 
 (NOT apt-howto-ja~1(c)) AND 
 (NOT libgksu1.2-0~2(c)) AND 
 (NOT python-peak.util~1(c)) AND 
 (NOT pango-libthai~2(c)) AND 
 (NOT shorlfilter~1(c)) AND 
 (NOT libcunit1-ncurses~1(c)) AND 
 (NOT gobby~2(c)) AND 
 (NOT iceweasel~16(c)) AND 
 (NOT hpoj-xojpanel~1(c)) AND 
 (NOT jffnms~1(c)) AND 
 (wamerican~1(c) IMPLIES debconf(c) AND (dictionaries-common~20(c) OR dictionaries-common~15(c)) AND (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c))) AND 
 (NOT libboost-date-time1.35-dev~1(c)) AND 
 (NOT libkipi6-dev~2(c)) AND 
 (NOT sylpheed-claws-gtk2-acpi-notifier~1(c)) AND 
 (NOT libfusefs-ruby1.8~1(c)) AND 
 (NOT leafnode~1(c)) AND 
 (NOT libexchange-storage1.2-dev~4(c)) AND 
 (NOT open-vm-tools~2(c)) AND 
 (NOT hobbit~4(c)) AND 
 (NOT emacs-goodies-el~2(c)) AND 
 (NOT libtemplate-plugin-yaml-perl~1(c)) AND 
 (NOT mongrel-cluster~2(c)) AND 
 (NOT apollon~1(c)) AND 
 (NOT hello~2(c)) AND 
 (NOT canna~5(c)) AND 
 (NOT proda~1(c)) AND 
 (NOT dahdi-linux~1(c)) AND 
 (NOT libcanlock2~3(c)) AND 
 (NOT libsoundtouch-ocaml-dev~2(c)) AND 
 (NOT libcherokee-client0~1(c)) AND 
 (NOT gnubg~2(c)) AND 
 (NOT libclass-virtual-perl~3(c)) AND 
 (NOT libetpan-dev~1(c)) AND 
 (NOT libaio-dev~2(c)) AND 
 (NOT freedroid~2(c)) AND 
 (NOT libgtk2-spell-perl~1(c)) AND 
 (NOT axiom-graphics~1(c)) AND 
 (NOT monit~2(c)) AND 
 (NOT highlight~3(c)) AND 
 (NOT fontforge~4(c)) AND 
 (NOT octave3.0-headers~2(c)) AND 
 (NOT php-auth~1(c)) AND 
 (NOT licq-plugin-rms~2(c)) AND 
 (NOT python-freej-dbg~1(c)) AND 
 (ecasound-el~3(c) IMPLIES (ecasound~3(c) OR ecasound~2(c)) AND (xemacs21-mule-canna-wnn~2(c) OR xemacs21-mule-canna-wnn~2(c))) AND 
 (libxmlrpc3-java-doc~1(c) IMPLIES (classpath-doc(c) OR libgcj-doc~3(c) OR libgcj-doc~3(c))) AND 
 (NOT kde-icons-nuvola~3(c)) AND 
 (NOT abook~1(c)) AND 
 (NOT libghc6-hdbc-dev~1(c)) AND 
 (NOT thinkfan~1(c)) AND 
 (NOT k3b-i18n~2(c)) AND 
 (NOT gspot~2(c)) AND 
 (NOT librplay3-dev~1(c)) AND 
 (NOT milter-greylist~1(c)) AND 
 (libcgi-simple-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT glipper~2(c)) AND 
 (NOT potrace~1(c)) AND 
 (NOT libminpack1~1(c)) AND 
 (NOT erlang-esdl-dev~1(c)) AND 
 (libsequel-ruby1.9~1(c) IMPLIES ruby1.9(c)) AND 
 (NOT bashdb~2(c)) AND 
 (NOT libpcap0.8-dev~1(c)) AND 
 (libsequel-ruby1.8~1(c) IMPLIES ruby1.8(c)) AND 
 (NOT sugar-0.84~2(c)) AND 
 (NOT xturqstat~3(c)) AND 
 (NOT dh-make~2(c)) AND 
 (NOT gir1.0-nautilus-1.0~1(c)) AND 
 (NOT libhippocanvas-1-0~2(c)) AND 
 (shtool~1(c) IMPLIES perl(c)) AND 
 (NOT libproxy-tools~1(c)) AND 
 (NOT libgnatvsn4.4~2(c)) AND 
 (NOT librra-dbg~1(c)) AND 
 (NOT xserver-xorg-video-ivtv~2(c)) AND 
 (courier-filter-perl~1(c) IMPLIES courier-mta(c) AND perl~69(c) AND liberror-perl(c)) AND 
 (NOT apt-howto-fr~1(c)) AND 
 (NOT libcommons-digester-java~6(c)) AND 
 (NOT premail~1(c)) AND 
 (NOT mp3info~1(c)) AND 
 (khmerconverter~2(c) IMPLIES python~22(c) AND python-support~7(c)) AND 
 (NOT glade-doc~2(c)) AND 
 (NOT libgl1-mesa-swx11-dev~4(c)) AND 
 (python-pyrad~2(c) IMPLIES python-support~7(c)) AND 
 (libspread1-dev~2(c) IMPLIES libspread1~3(c)) AND 
 (beneath-a-steel-sky~1(c) IMPLIES scummvm~3(c)) AND 
 (NOT gstreamer0.10-plugins-good~3(c)) AND 
 (NOT libghc6-glib-dev~2(c)) AND 
 (NOT libdigest-hmac-perl~2(c)) AND 
 (NOT bbdate~1(c)) AND 
 (NOT gnome-keyring-manager~2(c)) AND 
 (libcairo2-doc~3(c) IMPLIES (epiphany-browser~10(c) OR xemacs21-mule-canna-wnn~2(c) OR epiphany-gecko~2(c) OR iceweasel~5(c) OR dillo~2(c) OR epiphany-browser~10(c) OR xemacs21-mule-canna-wnn~2(c) OR epiphany-gecko~2(c) OR iceweasel~5(c) OR dillo~2(c) OR konqueror~13(c) OR midori~2(c) OR iceweasel~16(c) OR netrik~2(c) OR netsurf-linuxfb~1(c) OR netsurf-gtk~1(c))) AND 
 (NOT libfcgi-dev~2(c)) AND 
 (libterm-encoding-perl~1(c) IMPLIES perl(c)) AND 
 (NOT libbibutils1~2(c)) AND 
 (NOT libalps-mpi1-dev~1(c)) AND 
 (libgupnp-doc~2(c) IMPLIES (epiphany-browser~10(c) OR xemacs21-mule-canna-wnn~2(c) OR epiphany-gecko~2(c) OR iceweasel~5(c) OR dillo~2(c) OR epiphany-browser~10(c) OR xemacs21-mule-canna-wnn~2(c) OR epiphany-gecko~2(c) OR iceweasel~5(c) OR dillo~2(c) OR konqueror~13(c) OR midori~2(c) OR iceweasel~16(c) OR netrik~2(c) OR netsurf-linuxfb~1(c) OR netsurf-gtk~1(c))) AND 
 (NOT heroes-common~2(c)) AND 
 (NOT cduce~2(c)) AND 
 (NOT wmtz~1(c)) AND 
 (NOT cli-common-dev~3(c)) AND 
 (NOT xmlroff~2(c)) AND 
 (NOT zeroconf~1(c)) AND 
 (NOT php5-sqlrelay~2(c)) AND 
 (NOT apt-howto-es~1(c)) AND 
 (libmono-i18n2.0-cil~1(c) IMPLIES (libmono-corlib2.0-cil~6(c) OR libmono-corlib2.0-cil~10(c))) AND 
 (NOT logtools~1(c)) AND 
 (NOT libdb4.2-tcl~1(c)) AND 
 (NOT okumura-clsfiles~1(c)) AND 
 (NOT sysvinit~14(c)) AND 
 (NOT unixodbc-dev~2(c)) AND 
 (libaccess-bridge-java~2(c) IMPLIES openjdk-6-jre(c)) AND 
 (NOT libvirt-dev~1(c)) AND 
 (NOT apt-howto-en~1(c)) AND 
 (NOT libboost-dbg~3(c)) AND 
 (NOT libtao-orbsvcs-dev~2(c)) AND 
 (NOT webcamd~1(c)) AND 
 (NOT gnome-desktop-environment~3(c)) AND 
 (NOT libflac++5~1(c)) AND 
 (NOT apt-howto-el~1(c)) AND 
 (NOT postgresql-8.1-slony1~1(c)) AND 
 (NOT imms-common~1(c)) AND 
 (NOT libxslt1-dbg~1(c)) AND 
 (NOT libapache-mod-text2html~1(c)) AND 
 (NOT isdnvbox~3(c)) AND 
 (NOT defendguin~3(c)) AND 
 (NOT syrep~2(c)) AND 
 (NOT kterm~2(c)) AND 
 (NOT quickplay~1(c)) AND 
 (NOT libghc6-bzlib-dev~1(c)) AND 
 (NOT libetpan-dbg~1(c)) AND 
 (NOT kttsd~7(c)) AND 
 (NOT midori~2(c)) AND 
 (NOT xmms2-client-cli~3(c)) AND 
 (NOT libmecab-dev~1(c)) AND 
 (NOT ttf-alee~1(c)) AND 
 (NOT xstarfish~1(c)) AND 
 (NOT libfontconfig1~4(c)) AND 
 (NOT python-pyosd~1(c)) AND 
 (NOT libtulip-qt4-dev~1(c)) AND 
 (NOT libxcomposite1-dbg~1(c)) AND 
 (NOT libwww-mechanize-shell-perl~2(c)) AND 
 (NOT libxcb-xtest0~2(c)) AND 
 (NOT libboost-thread1.40.0~3(c)) AND 
 (NOT liblingoteach4~1(c)) AND 
 (NOT tilp2~1(c)) AND 
 (NOT glosstex~2(c)) AND 
 (NOT libmapiproxy0~1(c)) AND 
 (NOT mirage~1(c)) AND 
 (NOT python-smartpm~2(c)) AND 
 (NOT vlc-plugin-ggi~3(c)) AND 
 (NOT libopal-2.2-ptrace~2(c)) AND 
 (NOT apt-howto-de~1(c)) AND 
 (NOT libfilehandle-fmode-perl~1(c)) AND 
 (NOT otf2bdf~1(c)) AND 
 (NOT ikiwiki~3(c)) AND 
 (NOT libcwiimote3~1(c)) AND 
 (python-socksipy~1(c) IMPLIES python(c) AND python-central~22(c)) AND 
 (NOT libsepol1-dev~4(c)) AND 
 (NOT libgsasl7~3(c)) AND 
 (NOT xmess-sdl~1(c)) AND 
 (NOT libvorbis-dev~4(c)) AND 
 (NOT guile-1.8-doc~2(c)) AND 
 (NOT libghc6-diff-dev~2(c)) AND 
 (NOT luola-data~1(c)) AND 
 (NOT libslicer3-dev~1(c)) AND 
 (libpcap0.8-dbg~1(c) IMPLIES libpcap0.8~6(c)) AND 
 (NOT libgpgme11-dev~3(c)) AND 
 (NOT libtest-minimumversion-perl~1(c)) AND 
 (NOT opensync-plugin-gnokii~2(c)) AND 
 (NOT libcache-fastmmap-perl~1(c)) AND 
 (NOT python-qt4-sql~2(c)) AND 
 (NOT spfquery~6(c)) AND 
 (NOT apt-show-versions~2(c)) AND 
 (NOT mondo~2(c)) AND 
 (NOT r-cran-e1071~1(c)) AND 
 (NOT ftp.app~1(c)) AND 
 (NOT libebook1.2-9~3(c)) AND 
 (NOT logapp~1(c)) AND 
 (NOT hyperestraier~1(c)) AND 
 (NOT libzvt-dev~1(c)) AND 
 (NOT samba4-testsuite~1(c)) AND 
 (NOT libqt3-jni~2(c)) AND 
 (NOT librpm0~4(c)) AND 
 (NOT python-soya~6(c)) AND 
 (NOT apt-howto-ca~1(c)) AND 
 (NOT libebook1.2-5~3(c)) AND 
 (NOT libequeue-gtk2-ocaml-dev~3(c)) AND 
 (NOT postfix~16(c)) AND 
 (NOT z8530-utils2~3(c)) AND 
 (NOT openssh-server~3(c)) AND 
 (NOT ttf-khmeros~1(c)) AND 
 (NOT qt3-apps-dev~3(c)) AND 
 (NOT ttf-arphic-uming~2(c)) AND 
 (NOT dpkg-dev~24(c)) AND 
 (NOT librsskit0-dev~1(c)) AND 
 (perlsgml~1(c) IMPLIES perl~69(c)) AND 
 (libfile-which-perl~4(c) IMPLIES perl(c)) AND 
 (NOT remuco-audacious~1(c)) AND 
 (NOT r-cran-nlme~2(c)) AND 
 (NOT pidgin~9(c)) AND 
 (NOT harminv~1(c)) AND 
 (NOT hotkey-setup~2(c)) AND 
 (NOT root-plugin-gui-qt~1(c)) AND 
 (NOT iec16022~1(c)) AND 
 (NOT tttprobe~1(c)) AND 
 (libacme-bleach-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT libgnome-device-manager0~1(c)) AND 
 (NOT libgfshare-dev~2(c)) AND 
 (NOT uim-anthy~3(c)) AND 
 (NOT xfce4-appfinder~2(c)) AND 
 (NOT eclipse-sdk-nls~1(c)) AND 
 (NOT svn-workbench~2(c)) AND 
 (NOT gamera-gui~1(c)) AND 
 (NOT dovecot-antispam~1(c)) AND 
 (NOT mozilla-mailnews~2(c)) AND 
 (NOT xtermcontrol~2(c)) AND 
 (NOT libgnadepostgresql1.6.2~1(c)) AND 
 (NOT ttf-thai-tlwg~2(c)) AND 
 (NOT uim-common~2(c)) AND 
 (libalgorithm-c3-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT libavahi-compat-libdnssd1~4(c)) AND 
 (NOT python-numeric-tutorial~2(c)) AND 
 (NOT python-gnomeapplet~2(c)) AND 
 (NOT libmysqlcppconn4~1(c)) AND 
 (NOT gtrayicon~1(c)) AND 
 (NOT emesene~1(c)) AND 
 (NOT libroxen-trimpath~2(c)) AND 
 (NOT prelude-correlator~1(c)) AND 
 (NOT cl-geodesics~1(c)) AND 
 (libmono-system-runtime1.0-cil~5(c) IMPLIES libmono-corlib1.0-cil~3(c) AND libmono-system-web1.0-cil~8(c) AND libmono-system1.0-cil~6(c)) AND 
 (pyjamas-gchart~1(c) IMPLIES pyjamas-ui(c)) AND 
 (NOT git-daemon-run~4(c)) AND 
 (NOT libkleopatra1~4(c)) AND 
 (NOT mpb-mpi~2(c)) AND 
 (NOT libgsl-ruby-doc~2(c)) AND 
 (NOT librmagick-ruby1.8~2(c)) AND 
 (NOT libgnatvsn4.1-dbg~1(c)) AND 
 (NOT cmap-adobe-japan2~1(c)) AND 
 (NOT cmap-adobe-japan1~1(c)) AND 
 (NOT ipband~2(c)) AND 
 (libamrita-ruby1.8~3(c) IMPLIES libruby1.8(c) AND libruby1.8~5(c)) AND 
 (NOT binkd~2(c)) AND 
 (NOT tamil-gtk2im~2(c)) AND 
 (NOT libstatgrab-dev~2(c)) AND 
 (NOT texlive-generic-extra~2(c)) AND 
 (NOT freeloader~1(c)) AND 
 (NOT pulseaudio-utils-dbg~3(c)) AND 
 (NOT finch-dev~3(c)) AND 
 (NOT kdelirc~4(c)) AND 
 (NOT input-utils~2(c)) AND 
 (NOT libroot-gui-ged5.24~2(c)) AND 
 (NOT libapache2-mod-php5~5(c)) AND 
 (python-mpi~2(c) IMPLIES python(c) AND python-central~22(c) AND python-scientific~1(c)) AND 
 (NOT librspec-ruby~1(c)) AND 
 (NOT libactivesupport-ruby1.9~2(c)) AND 
 (inspircd-dbg~2(c) IMPLIES inspircd(c)) AND 
 (NOT libactivesupport-ruby1.8~2(c)) AND 
 (NOT python-mapscript~2(c)) AND 
 (NOT robodoc~2(c)) AND 
 (NOT postgresql-pltcl-7.4~1(c)) AND 
 (NOT python-mox~2(c)) AND 
 (liboggplay1-dev~1(c) IMPLIES liboggplay1~1(c)) AND 
 (NOT imp4~4(c)) AND 
 (NOT python-mpd~2(c)) AND 
 (NOT librvm-dev~1(c)) AND 
 (NOT libscm-dev~1(c)) AND 
 (NOT pike7.6-meta~1(c)) AND 
 (NOT upse-audacious~1(c)) AND 
 (NOT dkms~1(c)) AND 
 (NOT ncdu~1(c)) AND 
 (NOT ncdt~1(c)) AND 
 (openoffice.org-help-en-us~3(c) IMPLIES openoffice.org-writer(c)) AND 
 (tuareg-mode~1(c) IMPLIES (emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs~1(c))) AND 
 (NOT xbindkeys-config~1(c)) AND 
 (harden-nids~3(c) IMPLIES snort-pgsql~1(c)) AND 
 (NOT alleyoop~1(c)) AND 
 (NOT openoffice.org-report-builder~3(c)) AND 
 (NOT ussp-push~2(c)) AND 
 (NOT xprobe~2(c)) AND 
 (NOT cryptonit~1(c)) AND 
 (NOT python-django-filebrowser~1(c)) AND 
 (NOT diffutils~1(c)) AND 
 (NOT capi4hylafax~2(c)) AND 
 (NOT libccss-tools~1(c)) AND 
 (NOT holdingnuts~1(c)) AND 
 (NOT libwxgtk2.6-0~4(c)) AND 
 (NOT libmapnik-dev~1(c)) AND 
 (NOT libnss-ldapd~1(c)) AND 
 (NOT floatbg~2(c)) AND 
 (NOT libmojito-client1-dbg~1(c)) AND 
 (NOT wmnd~1(c)) AND 
 (NOT libotr2-bin~3(c)) AND 
 (NOT gaim-hotkeys~2(c)) AND 
 (NOT gforge~2(c)) AND 
 (openoffice.org-coooder~2(c) IMPLIES openoffice.org-core~34(c) AND openoffice.org-java-common~16(c)) AND 
 (NOT konqueror~13(c)) AND 
 (NOT minc-tools~1(c)) AND 
 (NOT gobjc-multilib~1(c)) AND 
 (NOT libtest-expect-perl~1(c)) AND 
 (NOT php5-xsl~2(c)) AND 
 (NOT userv~1(c)) AND 
 (NOT mtink~2(c)) AND 
 (NOT rlwrap~1(c)) AND 
 (NOT rssh~2(c)) AND 
 (NOT wings3d~1(c)) AND 
 (NOT galago-daemon~2(c)) AND 
 (NOT libeel2-dev~2(c)) AND 
 (NOT libtime-duration-parse-perl~2(c)) AND 
 (NOT libmopac7-0~1(c)) AND 
 (NOT r-cran-rmysql~3(c)) AND 
 (NOT octave-fpl~1(c)) AND 
 (NOT ttf-sawarabi-gothic~1(c)) AND 
 (libfile-next-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT gnokii-smsd-mysql~1(c)) AND 
 (NOT ktechlab~2(c)) AND 
 (NOT libtest-exception-perl~2(c)) AND 
 (NOT gobjc-4.4~1(c)) AND 
 (NOT libghc6-quickcheck-prof~1(c)) AND 
 (NOT xlogmaster~2(c)) AND 
 (NOT libgfshare-dbg~2(c)) AND 
 (NOT mysql-query-browser~2(c)) AND 
 (NOT libhtml-wikiconverter-pmwiki-perl~1(c)) AND 
 (NOT libhamlib-dev~1(c)) AND 
 (NOT libxcb-event0-dev~1(c)) AND 
 (NOT inspircd~1(c)) AND 
 (NOT libpam-unix2~2(c)) AND 
 (NOT x11-utils~1(c)) AND 
 (NOT kdesdk~3(c)) AND 
 (NOT gadmin-proftpd-dbg~1(c)) AND 
 (NOT icmptx~1(c)) AND 
 (NOT python-tunepimp~1(c)) AND 
 (NOT tigr-glimmer~1(c)) AND 
 (NOT libboost-filesystem1.35-dev~1(c)) AND 
 (NOT sugar-tools-0.86~1(c)) AND 
 (NOT libgsm1~6(c)) AND 
 (NOT axiom-hypertex~1(c)) AND 
 (NOT libmpeg2-4~2(c)) AND 
 (povray-examples~2(c) IMPLIES povray-includes(c)) AND 
 (python-genshi~1(c) IMPLIES python~22(c) AND python-support~7(c)) AND 
 (NOT socklog~2(c)) AND 
 (NOT kid3-qt~2(c)) AND 
 (survex-svxedit~2(c) IMPLIES (tk8.5~3(c) OR tk8.5~3(c) OR tk8.4~5(c) OR tk8.4(c)) AND bwidget(c)) AND 
 (NOT libcairo2-dev~3(c)) AND 
 (NOT gaim-xmms-remote~1(c)) AND 
 (NOT libmgl-fltk5~1(c)) AND 
 (markdown~1(c) IMPLIES perl~69(c)) AND 
 (NOT med-epi~1(c)) AND 
 (NOT irssi-plugin-icq~1(c)) AND 
 (NOT libroot-hist5.24~2(c)) AND 
 (NOT php4-lasso~1(c)) AND 
 (NOT libiptcdata-bin~1(c)) AND 
 (NOT libxml-sax-writer-perl~4(c)) AND 
 (NOT wp2x~1(c)) AND 
 (NOT safecat~1(c)) AND 
 (NOT texlive-lang-portuguese~4(c)) AND 
 (NOT playmp3list~2(c)) AND 
 (NOT udev~22(c)) AND 
 (NOT qnapi~1(c)) AND 
 (NOT libxml-filter-detectws-perl~2(c)) AND 
 (NOT libocc0-dev~1(c)) AND 
 (NOT biococoa.app~2(c)) AND 
 (NOT expect-dev~2(c)) AND 
 (liboggplay1-dbg~1(c) IMPLIES liboggplay1~1(c)) AND 
 (NOT libgpod4-nogtk~3(c)) AND 
 (democracyplayer~2(c) IMPLIES miro(c)) AND 
 (libflexmock-ruby~1(c) IMPLIES libflexmock-ruby1.8(c)) AND 
 (NOT python-fstab~2(c)) AND 
 (NOT scim-m17n~2(c)) AND 
 (NOT klineakconfig~3(c)) AND 
 (NOT libtest-class-perl~3(c)) AND 
 (NOT krename~2(c)) AND 
 (NOT lib32readline6~1(c)) AND 
 (NOT lib32readline5~1(c)) AND 
 (NOT units~1(c)) AND 
 (dia-common~2(c) IMPLIES python(c) AND python-support~7(c) AND python-gtk2(c)) AND 
 (NOT freeglut3-dev~2(c)) AND 
 (NOT clamav~9(c)) AND 
 (NOT libgdk-pixbuf2-ruby~1(c)) AND 
 (NOT python-gnome2-desktop~5(c)) AND 
 (NOT eximon4~1(c)) AND 
 (NOT libparted1.7-dev~1(c)) AND 
 (NOT libvcs-cvs-perl~1(c)) AND 
 (NOT ardour~2(c)) AND 
 (libxml-xpath-perl~2(c) IMPLIES perl~69(c) AND libxml-parser-perl(c)) AND 
 (NOT scalemail~1(c)) AND 
 (NOT liblingua-stem-snowball-perl~2(c)) AND 
 (NOT libggimisc2-dev~2(c)) AND 
 (NOT libpolkit-qt-dev~1(c)) AND 
 (NOT libgcroots0~1(c)) AND 
 (NOT mini-httpd~1(c)) AND 
 (NOT ucblogo~2(c)) AND 
 (NOT mathpiper~1(c)) AND 
 (NOT libepplet-dev~1(c)) AND 
 (NOT muse~1(c)) AND 
 (NOT libnarray-ruby~2(c)) AND 
 (NOT libglrr-gobject-dev~1(c)) AND 
 (NOT erlang-reltool~1(c)) AND 
 (NOT winpdb~1(c)) AND 
 (libhttp-proxy-perl~1(c) IMPLIES perl~69(c) AND libwww-perl(c)) AND 
 (NOT wmix~1(c)) AND 
 (NOT cheese~4(c)) AND 
 (NOT tilda~1(c)) AND 
 (NOT libgivaro0~1(c)) AND 
 (NOT guile-1.8-dev~2(c)) AND 
 (libmono-sharpzip0.6-cil~4(c) IMPLIES libmono-corlib1.0-cil~3(c)) AND 
 (sysvconfig~1(c) IMPLIES dialog(c)) AND 
 (libauthen-simple-perl~1(c) IMPLIES perl~69(c) AND libparams-validate-perl(c) AND (perl~69(c) OR perl~69(c)) AND (perl~69(c) OR perl~69(c)) AND (libdigest-sha-perl(c) OR perl~69(c) OR perl~69(c)) AND libclass-data-inheritable-perl(c) AND libcrypt-passwdmd5-perl(c) AND libclass-accessor-perl(c)) AND 
 (libnet-nbname-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT libtaoframework-sdl1.2-cil~1(c)) AND 
 (libcommandline-ruby~1(c) IMPLIES libcommandline-ruby1.8(c)) AND 
 (NOT perlmagick~3(c)) AND 
 (NOT libmapi-dev~2(c)) AND 
 (NOT qca-dev~1(c)) AND 
 (NOT gtamsanalyzer.app~1(c)) AND 
 (NOT saods9~1(c)) AND 
 (NOT wmii~1(c)) AND 
 (NOT joystick~3(c)) AND 
 (NOT libpngwriter0-dev~2(c)) AND 
 (libxmmsclient-dev~1(c) IMPLIES libxmmsclient0(c) AND xmms2-dev(c)) AND 
 (NOT postgresql-8.1-plruby~1(c)) AND 
 (NOT libnm-glib-dev~1(c)) AND 
 (NOT libboost-regex1.38.0~2(c)) AND 
 (abicheck~2(c) IMPLIES perl(c)) AND 
 (NOT tkmib~2(c)) AND 
 (NOT imwheel~2(c)) AND 
 (monodoc-http~1(c) IMPLIES monodoc-manual(c) AND (mono-apache-server(c) OR mono-xsp(c))) AND 
 (NOT libs3d-dev~1(c)) AND 
 (NOT libwxgtk2.8-dev~3(c)) AND 
 (NOT sun-java6-bin~1(c)) AND 
 (NOT libnet-jifty-perl~2(c)) AND 
 (NOT mono-mjs~5(c)) AND 
 (python-cxx-dev~3(c) IMPLIES python-cxx(c) AND python-dev(c)) AND 
 (NOT libghc6-src-exts-dev~3(c)) AND 
 (NOT doschk~1(c)) AND 
 (NOT kxterm~1(c)) AND 
 (type-handling~1(c) IMPLIES (dpkg-dev~24(c) OR dpkg-dev~23(c))) AND 
 (NOT vipec~1(c)) AND 
 (NOT antennavis~3(c)) AND 
 (ssake~1(c) IMPLIES perl(c) AND python(c)) AND 
 (NOT rxvt-beta~1(c)) AND 
 (NOT fonttools~1(c)) AND 
 (NOT libmodule-packaged-perl~1(c)) AND 
 (NOT thoggen~1(c)) AND 
 (NOT dhis-server~1(c)) AND 
 (tiger-otheros~1(c) IMPLIES tiger(c)) AND 
 (NOT librest-0.6-0~2(c)) AND 
 (NOT freedroidrpg~1(c)) AND 
 (NOT python-pyogg~1(c)) AND 
 (NOT libsha-ocaml~3(c)) AND 
 (education-desktop-kde~1(c) IMPLIES education-tasks(c)) AND 
 (NOT gearman-tools~1(c)) AND 
 (NOT chasen~1(c)) AND 
 (NOT xfonts-biznet-base~2(c)) AND 
 (NOT bash~22(c)) AND 
 (gcj-4.3-doc~2(c) IMPLIES (gcc-doc-base~1(c) OR gcc-doc-base~2(c))) AND 
 (NOT gnuradio~1(c)) AND 
 (NOT linux-modules-2.6.26-1-xen-amd64~1(c)) AND 
 (NOT wavpack~1(c)) AND 
 (NOT libanculus0.3-cil~1(c)) AND 
 (NOT cmigrep~1(c)) AND 
 (NOT libopts25~2(c)) AND 
 (NOT openexr~2(c)) AND 
 (NOT fuse-source~1(c)) AND 
 (addresses.framework~3(c) IMPLIES libaddresses-dev(c) AND libaddresses0(c)) AND 
 (NOT util-vserver~4(c)) AND 
 (NOT freeglut3-dbg~2(c)) AND 
 (NOT libidzebra-2.0-dev~1(c)) AND 
 (NOT igal~1(c)) AND 
 (NOT teatime~2(c)) AND 
 (NOT blt-demo~3(c)) AND 
 (NOT xineliboutput-fbfe~2(c)) AND 
 (NOT xmame-gl~1(c)) AND 
 (NOT kdewebdev~2(c)) AND 
 (NOT ktuberling~3(c)) AND 
 (NOT libgda2-dev~3(c)) AND 
 (NOT compiz-gnome~2(c)) AND 
 (NOT libparted1.7-dbg~1(c)) AND 
 (NOT gnomp3~1(c)) AND 
 (NOT xserver-xorg-input-digitaledge~1(c)) AND 
 (NOT intel-gpu-tools~1(c)) AND 
 (NOT junior-arcade~1(c)) AND 
 (NOT libsndfile1-dev~4(c)) AND 
 (NOT varnish~1(c)) AND 
 (libclass-mixinfactory-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT gconf-cleaner~1(c)) AND 
 (NOT libganglia1-dev~3(c)) AND 
 (NOT sdate~3(c)) AND 
 (NOT sslscan~1(c)) AND 
 (NOT compiz-gtk~1(c)) AND 
 (NOT libgoocanvasmm-doc~1(c)) AND 
 (NOT python-wxgtk2.8~3(c)) AND 
 (NOT litmus~1(c)) AND 
 (calamaris~1(c) IMPLIES (perl~69(c) OR perl~69(c)) AND bc(c) AND (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c))) AND 
 (NOT libjson-glib-1.0-0~1(c)) AND 
 (NOT python-ming~1(c)) AND 
 (NOT libclass-dbi-perl~8(c)) AND 
 (NOT setserial~1(c)) AND 
 (NOT libtao-tkresource-dev~2(c)) AND 
 (NOT libxdamage1-dbg~1(c)) AND 
 (NOT gmetad~1(c)) AND 
 (NOT linux-patch-tomoyo~1(c)) AND 
 (NOT backintime-common~1(c)) AND 
 (NOT balder2d~1(c)) AND 
 (NOT roundup~3(c)) AND 
 (update-inetd~1(c) IMPLIES debconf(c)) AND 
 (NOT idutch~4(c)) AND 
 (NOT dds2tar~2(c)) AND 
 (NOT charmap.app~1(c)) AND 
 (NOT libmono-profiler~1(c)) AND 
 (NOT liboobs-1-dev~3(c)) AND 
 (NOT util-linux~6(c)) AND 
 (NOT lib32ncurses5-dev~3(c)) AND 
 (NOT perl-tk~8(c)) AND 
 (NOT python-advas~2(c)) AND 
 (NOT xapian-examples~2(c)) AND 
 (zope-sqlrelayda~2(c) IMPLIES python-sqlrelay~2(c) AND (zope2.10~4(c) OR zope2.10~4(c))) AND 
 (NOT python-geoip~2(c)) AND 
 (NOT pike7.6-core~2(c)) AND 
 (NOT rubber~2(c)) AND 
 (NOT concalc~1(c)) AND 
 (NOT ascii~2(c)) AND 
 (NOT libpoker-eval~2(c)) AND 
 (NOT eclipse-jdt~3(c)) AND 
 (NOT gnome-accessibility~1(c)) AND 
 (NOT libexplain9-dbg~1(c)) AND 
 (NOT libwxgtk2.8-dbg~3(c)) AND 
 (NOT libstdc++5~2(c)) AND 
 (linux-image-2.6-amd64-etchnhalf~1(c) IMPLIES linux-image-2.6.24-etchnhalf.1-amd64(c)) AND 
 (NOT mbrowse~1(c)) AND 
 (NOT lib32stdc++6-4.4-dbg~3(c)) AND 
 (NOT openoffice.org-help-pt-br~3(c)) AND 
 (NOT r-cran-foptions~1(c)) AND 
 (NOT python-pyode~1(c)) AND 
 (NOT amap-align~1(c)) AND 
 (NOT zeroc-ice~1(c)) AND 
 (NOT newsx~2(c)) AND 
 (NOT mathomatic-primes~1(c)) AND 
 (NOT ndisc6~1(c)) AND 
 (cupsddk~3(c) IMPLIES cups-ppdc(c)) AND 
 (NOT samba-common~3(c)) AND 
 (NOT libcgi-perl~1(c)) AND 
 (NOT gcc-4.2-locales~1(c)) AND 
 (libtk-histentry-perl~1(c) IMPLIES perl~69(c) AND perl-tk(c)) AND 
 (NOT gtktalog~1(c)) AND 
 (NOT gspca-modules-2.6.18-6-vserver-amd64~1(c)) AND 
 (NOT mah-jong~1(c)) AND 
 (NOT ekiga~5(c)) AND 
 (egroupware-registration~2(c) IMPLIES egroupware-core~2(c)) AND 
 (drbdlinks~2(c) IMPLIES (drbd0.7-utils~1(c) OR drbd0.7-utils~1(c) OR drbd8-utils~3(c)) AND python(c)) AND 
 (NOT libtbb2~2(c)) AND 
 (NOT bbppp~1(c)) AND 
 (NOT elscreen~2(c)) AND 
 (NOT libreadline-ruby1.9~2(c)) AND 
 (NOT python-relatorio~1(c)) AND 
 (NOT libreadline-ruby1.8~2(c)) AND 
 (NOT mp3info-gtk~1(c)) AND 
 (NOT python-tofu~3(c)) AND 
 (NOT libjpeg62-dev~3(c)) AND 
 (mp3cd~1(c) IMPLIES perl(c) AND libconfig-simple-perl(c) AND cdrdao(c) AND sox(c) AND normalize-audio(c)) AND 
 (libcgi-session-perl~4(c) IMPLIES perl~69(c)) AND 
 (NOT freepops~3(c)) AND 
 (NOT debootstrap~5(c)) AND 
 (NOT libgdome2-xslt0c2a~1(c)) AND 
 (NOT dopewars~4(c)) AND 
 (NOT libconfig-model-openssh-perl~1(c)) AND 
 (NOT libgpewidget1~2(c)) AND 
 (NOT keyanalyze~3(c)) AND 
 (NOT openoffice.org-java-common~2(c)) AND 
 (NOT seetxt~1(c)) AND 
 (NOT sbackup~2(c)) AND 
 (NOT xserver-xorg-video-tdfx~1(c)) AND 
 (icedove-locale-zh-cn~1(c) IMPLIES (icedove~13(c) OR icedove~5(c)) AND icedove~5(c)) AND 
 (NOT ifmetric~1(c)) AND 
 (NOT ice33-translators~1(c)) AND 
 (NOT vdr-plugin-fritzbox~2(c)) AND 
 (NOT wesnoth-thot~1(c)) AND 
 (NOT libwine-twain~3(c)) AND 
 (NOT kdirstat~2(c)) AND 
 (NOT wmcb~1(c)) AND 
 (NOT kftpgrabber~3(c)) AND 
 (mysql-server~5(c) IMPLIES (mysql-server-5.0(c) OR mysql-server-5.1~2(c))) AND 
 (NOT fdclone~2(c)) AND 
 (libhugs-http~2(c) IMPLIES hugs~5(c) AND hugs~2(c) AND (hugs~2(c) OR libhugs-parsec-bundled~1(c))) AND 
 (NOT openoffice.org-gtk~4(c)) AND 
 (NOT gnome-media~7(c)) AND 
 (NOT libswfdec-0.6-90~1(c)) AND 
 (NOT backup-manager~1(c)) AND 
 (NOT courier-base~6(c)) AND 
 (NOT aptsh~1(c)) AND 
 (NOT musiclibrarian~2(c)) AND 
 (NOT xdmx-tools~2(c)) AND 
 (NOT ftp-ssl~1(c)) AND 
 (NOT xinetd~3(c)) AND 
 (NOT evolution-exchange~3(c)) AND 
 (NOT libjana0-dbg~1(c)) AND 
 (NOT nvidia-glx-legacy-96xx-ia32~1(c)) AND 
 (NOT iaxmodem~1(c)) AND 
 (NOT grub-ieee1275~5(c)) AND 
 (win32-loader~1(c) IMPLIES base-files~10(c)) AND 
 (NOT php5-clamavlib~1(c)) AND 
 (NOT libiw-dev~3(c)) AND 
 (NOT php5-sqlite3~1(c)) AND 
 (NOT kst-bin~1(c)) AND 
 (NOT tkman~2(c)) AND 
 (NOT doscan~1(c)) AND 
 (NOT tenace~2(c)) AND 
 (NOT mono-mcs~5(c)) AND 
 (NOT groff-base~5(c)) AND 
 (NOT alevt~1(c)) AND 
 (NOT libnarray-ruby1.9.1~1(c)) AND 
 (NOT baycomepp~2(c)) AND 
 (NOT aspell~8(c)) AND 
 (NOT kdenetwork~5(c)) AND 
 (NOT mono-apache-server~5(c)) AND 
 (NOT rcconf~1(c)) AND 
 (NOT gambas2-gb-compress~1(c)) AND 
 (libbind-confparser-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT acpi-support-base~3(c)) AND 
 (NOT yiff-server~1(c)) AND 
 (NOT kiten~4(c)) AND 
 (NOT python-soya-doc~1(c)) AND 
 (NOT unixodbc~6(c)) AND 
 (NOT libmgl-glut5~1(c)) AND 
 (NOT libguichan-0.8.1-1-dbg~1(c)) AND 
 (NOT python-egenix-mxtools~1(c)) AND 
 (libparse-debian-packages-perl~2(c) IMPLIES perl~69(c) AND libyaml-perl(c)) AND 
 (NOT alsa-base~5(c)) AND 
 (NOT libradius1-dev~1(c)) AND 
 (NOT courier-authlib-mysql~2(c)) AND 
 (NOT libhk-classes-dev~1(c)) AND 
 (NOT libxpm4~2(c)) AND 
 (NOT qemu-kvm~1(c)) AND 
 (NOT libgpiv2~1(c)) AND 
 (NOT libacexml-dev~2(c)) AND 
 (NOT libmldbm-sync-perl~3(c)) AND 
 (NOT spectemu-common~2(c)) AND 
 (NOT katomic~3(c)) AND 
 (NOT kdelibs~4(c)) AND 
 (NOT shogun-python-modular~1(c)) AND 
 (cl-png~1(c) IMPLIES common-lisp-controller~17(c)) AND 
 (NOT libelf-dev~2(c)) AND 
 (NOT monodevelop-nunit~1(c)) AND 
 (NOT python-reportlab~3(c)) AND 
 (NOT tuxmath~2(c)) AND 
 (NOT iozone3~1(c)) AND 
 (libjunitperf-java~1(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c) OR gcj-4.4-jre~2(c)) AND junit(c)) AND 
 (NOT gnuwash.app~2(c)) AND 
 (NOT libpixman-1-0-dbg~1(c)) AND 
 (NOT alex4~1(c)) AND 
 (NOT libgstreamer0.10-0-dbg~2(c)) AND 
 (NOT openoffice.org-help-en-gb~3(c)) AND 
 (NOT ascdc~2(c)) AND 
 (NOT libauthen-smb-perl~2(c)) AND 
 (NOT sauerbraten-dbg~1(c)) AND 
 (NOT kenolaba~2(c)) AND 
 (NOT libcore-ocaml-dev~1(c)) AND 
 (matwrap~1(c) IMPLIES perl(c)) AND 
 (NOT ogre-doc-nonfree~1(c)) AND 
 (NOT libaddressview0~2(c)) AND 
 (NOT hmake~1(c)) AND 
 (NOT libgnadesqlite3-dbg~1(c)) AND 
 (NOT texlive-lang-tibetan~2(c)) AND 
 (NOT xcolmix~2(c)) AND 
 (NOT tcpflow~1(c)) AND 
 (NOT libggigcp1-dev~1(c)) AND 
 (NOT slurm-llnl-slurmdbd~1(c)) AND 
 (NOT keytouch~3(c)) AND 
 (NOT xxgdb~1(c)) AND 
 (NOT evolution-plugins~3(c)) AND 
 (NOT libgnuradio~1(c)) AND 
 (NOT ffmpeg~2(c)) AND 
 (NOT libwine-nas-unstable~1(c)) AND 
 (NOT libcatalyst-perl~5(c)) AND 
 (NOT libgda-4.0-postgres~1(c)) AND 
 (gnunet-qt-dbg~1(c) IMPLIES gnunet-qt~1(c)) AND 
 (NOT libofa0~2(c)) AND 
 (NOT tao-naming~2(c)) AND 
 (NOT libfileutils-ocaml-dev~1(c)) AND 
 (libgps-dev~1(c) IMPLIES libgps17~1(c)) AND 
 (NOT libsyslog-ocaml~1(c)) AND 
 (NOT libjdic-java~1(c)) AND 
 (NOT filelight~1(c)) AND 
 (NOT g++-4.3-multilib~4(c)) AND 
 (NOT knutclient~1(c)) AND 
 (NOT paman~2(c)) AND 
 (NOT clive~1(c)) AND 
 (NOT glfer~3(c)) AND 
 (NOT aegis-virus-scanner~1(c)) AND 
 (NOT graphviz-dev~1(c)) AND 
 (NOT liboggflac++2~1(c)) AND 
 (NOT mypaint~1(c)) AND 
 (libomnithread3c2-dbg~1(c) IMPLIES libomnithread3c2~3(c)) AND 
 (NOT r-cran-abind~2(c)) AND 
 (NOT slice2cppe~1(c)) AND 
 (NOT libvncserver-dev~3(c)) AND 
 (NOT fig2ps~2(c)) AND 
 (NOT kio-monodoc~1(c)) AND 
 (NOT fwbuilder~3(c)) AND 
 (chatplus-server~1(c) IMPLIES python(c)) AND 
 (NOT libgoocanvasmm-dev~1(c)) AND 
 (NOT konqueror-nsplugins~1(c)) AND 
 (NOT libradiusclient-ng2~2(c)) AND 
 (NOT php5-sasl~1(c)) AND 
 (NOT libiml-dev~1(c)) AND 
 (NOT dosbox~1(c)) AND 
 (NOT python-liblicense~1(c)) AND 
 (NOT nateon~2(c)) AND 
 (gnocatan-meta-server~1(c) IMPLIES pioneers-meta-server(c)) AND 
 (NOT libclanlib2c2a~2(c)) AND 
 (NOT ggz-gnome-client~1(c)) AND 
 (NOT libfreebob0~1(c)) AND 
 (NOT r-cran-lmtest~4(c)) AND 
 (NOT simhash~1(c)) AND 
 (NOT python-qwt3d-qt4~1(c)) AND 
 (NOT gtk2-engines-qtcurve~1(c)) AND 
 (NOT python-qwt3d-qt3~1(c)) AND 
 (NOT pvm-dev~3(c)) AND 
 (NOT libghc6-hashed-storage-dev~1(c)) AND 
 (NOT cm-super-minimal~1(c)) AND 
 (NOT libapt-rpm-pkg-dev~2(c)) AND 
 (NOT gnumed-common~1(c)) AND 
 (NOT ifstat~2(c)) AND 
 (NOT libgnadeodbc2~1(c)) AND 
 (NOT sofia-sip-bin~2(c)) AND 
 (NOT ironpython~1(c)) AND 
 (NOT libbonoboui2-dev~6(c)) AND 
 (NOT supercat~1(c)) AND 
 (NOT mdadm~1(c)) AND 
 (libdatetime-format-http-perl~1(c) IMPLIES perl~69(c) AND libdatetime-perl~15(c) AND (libwww-perl~27(c) OR libwww-perl~20(c))) AND 
 (NOT dmx4linux-tools~1(c)) AND 
 (NOT libatfs1~3(c)) AND 
 (NOT libswscale-dev~2(c)) AND 
 (NOT epplets~1(c)) AND 
 (NOT libgavl0~1(c)) AND 
 (NOT plone-site~1(c)) AND 
 (NOT libhdf5-serial-1.8.3~1(c)) AND 
 (alamin-client~1(c) IMPLIES socklog-run~1(c) AND perl(c)) AND 
 (NOT ejabberd~4(c)) AND 
 (NOT matanza~2(c)) AND 
 (NOT frei0r-plugins~1(c)) AND 
 (NOT python-nodebox-web~1(c)) AND 
 (NOT libslice33~2(c)) AND 
 (NOT libapache2-mod-bt-dev~2(c)) AND 
 (cl-pipes~2(c) IMPLIES common-lisp-controller~17(c)) AND 
 (NOT rawstudio-dbg~1(c)) AND 
 (NOT xfce4-screenshooter-plugin~1(c)) AND 
 (NOT libatk1.0-dev~10(c)) AND 
 (NOT mpdscribble~2(c)) AND 
 (NOT vdr-plugin-osdteletext~2(c)) AND 
 (NOT rdoc1.9~3(c)) AND 
 (NOT lib32ffi-dev~2(c)) AND 
 (NOT openbox-dev~2(c)) AND 
 (NOT rdoc1.8~3(c)) AND 
 (NOT nawm~1(c)) AND 
 (NOT swish-e~2(c)) AND 
 (NOT libevent-dev~3(c)) AND 
 (NOT ifhp~1(c)) AND 
 (NOT rigel~1(c)) AND 
 (NOT spikeproxy~1(c)) AND 
 (jsmath-fonts-sprite~2(c) IMPLIES jsmath(c)) AND 
 (xfree86-driver-synaptics~2(c) IMPLIES xserver-xorg-input-synaptics~2(c)) AND 
 (NOT iestonian~2(c)) AND 
 (NOT python-qwt4~1(c)) AND 
 (NOT xmms-infopipe~1(c)) AND 
 (libzeroc-ice-java~2(c) IMPLIES (libdb4.4-java~1(c) OR libdb4.4-java~1(c) OR libdb4.6-java~1(c)) AND (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c))) AND 
 (NOT python-argvalidate~1(c)) AND 
 (NOT libgnet-dev~1(c)) AND 
 (NOT kwifimanager~1(c)) AND 
 (NOT python-tftpy~1(c)) AND 
 (NOT chemtool~1(c)) AND 
 (NOT nuauth-extra~1(c)) AND 
 (NOT isakmpd~1(c)) AND 
 (NOT mcabber~1(c)) AND 
 (NOT clirr~1(c)) AND 
 (NOT sdcc~4(c)) AND 
 (NOT libboost-filesystem1.33.1~1(c)) AND 
 (NOT cdcd-dbg~1(c)) AND 
 (NOT mlterm-tools~1(c)) AND 
 (NOT picax~1(c)) AND 
 (NOT bonsai~1(c)) AND 
 (NOT netmrg~2(c)) AND 
 (NOT wrapperfactory.app~2(c)) AND 
 (NOT gjdoc~2(c)) AND 
 (NOT kdeadmin~5(c)) AND 
 (NOT opensched~1(c)) AND 
 (NOT uim-qt3~2(c)) AND 
 (libxml-writer-perl~5(c) IMPLIES perl~69(c)) AND 
 (NOT unpaper~1(c)) AND 
 (libcap-dev~2(c) IMPLIES libcap2~3(c)) AND 
 (libognl-java~1(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c))) AND 
 (NOT libavahi-client3~5(c)) AND 
 (NOT ircd-ratbox-dbg~1(c)) AND 
 (NOT orpheus~1(c)) AND 
 (NOT parmetis-test~1(c)) AND 
 (NOT libmono0~11(c)) AND 
 (NOT zope-plonearticle~1(c)) AND 
 (NOT libgmime2.4-cil~1(c)) AND 
 (NOT libfile-changenotify-perl~1(c)) AND 
 (libcgi-formbuilder-perl~5(c) IMPLIES perl~69(c)) AND 
 (NOT libgef-java~1(c)) AND 
 (NOT libgdome2-0~2(c)) AND 
 (NOT courier-mta~3(c)) AND 
 (NOT tnftp~1(c)) AND 
 (NOT vzctl~2(c)) AND 
 (NOT deluge-web~1(c)) AND 
 (NOT fbxkb~1(c)) AND 
 (NOT libpoppler5~1(c)) AND 
 (NOT libccfits-dev~2(c)) AND 
 (NOT libgdome2-dev~2(c)) AND 
 (NOT libpoppler4~1(c)) AND 
 (NOT gnome-do-docklets~1(c)) AND 
 (NOT libpmount-dev~2(c)) AND 
 (NOT filter~1(c)) AND 
 (NOT ml-nlffigen~1(c)) AND 
 (NOT xl2tpd~1(c)) AND 
 (NOT clips~1(c)) AND 
 (cl-puri~3(c) IMPLIES common-lisp-controller~17(c)) AND 
 (NOT bootpc~2(c)) AND 
 (NOT python-davlib~1(c)) AND 
 (libfind-lib-perl~2(c) IMPLIES perl(c)) AND 
 (NOT kdemultimedia-dbg~1(c)) AND 
 (NOT xskat~1(c)) AND 
 (adzapper~1(c) IMPLIES perl(c) AND (apache2(c) OR apache2-mpm-prefork~6(c) OR apache2-mpm-prefork~6(c) OR polipo(c) OR squid(c))) AND 
 (NOT libpam-pwgen~1(c)) AND 
 (NOT evolution-data-server~7(c)) AND 
 (libvarconf-dev~1(c) IMPLIES libvarconf-1.0-6~1(c) AND libsigc++-2.0-dev(c)) AND 
 (NOT dbf2mysql~2(c)) AND 
 (NOT libmono-firebirdsql1.7-cil~3(c)) AND 
 (NOT octave3.0-info~1(c)) AND 
 (NOT dc-qt~2(c)) AND 
 (libclass-default-perl~4(c) IMPLIES perl~69(c)) AND 
 (NOT libxv1-dbg~1(c)) AND 
 (NOT sarg~3(c)) AND 
 (NOT libgii1~3(c)) AND 
 (clipf~1(c) IMPLIES python(c)) AND 
 (NOT strongswan~2(c)) AND 
 (translate-toolkit~2(c) IMPLIES python(c) AND python-central~22(c)) AND 
 (liblingua-romkan-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT modest~1(c)) AND 
 (NOT nast~1(c)) AND 
 (NOT libxen-dev~3(c)) AND 
 (NOT med-doc~1(c)) AND 
 (NOT knetwalk~1(c)) AND 
 (NOT hotwire~1(c)) AND 
 (NOT libaudacious4~1(c)) AND 
 (NOT dnsutils~3(c)) AND 
 (xserver-xorg-video-radeonhd-dbg~1(c) IMPLIES xserver-xorg-video-radeonhd~1(c)) AND 
 (NOT gtkdiskfree~2(c)) AND 
 (NOT lipsia~2(c)) AND 
 (NOT libfirstworks-sqlr-perl~1(c)) AND 
 (NOT libcrypt-hcesha-perl~2(c)) AND 
 (libtest-hasversion-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT libclamav6~6(c)) AND 
 (NOT libglobus-gsi-credential-dev~2(c)) AND 
 (NOT nasm~1(c)) AND 
 (openoffice.org-common~30(c) IMPLIES openoffice.org-style-oxygen~2(c) AND (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c))) AND 
 (NOT python-pynjb~1(c)) AND 
 (NOT httping~2(c)) AND 
 (NOT autolog~2(c)) AND 
 (NOT gpx2shp~2(c)) AND 
 (NOT libcurl3-gnutls~9(c)) AND 
 (NOT libclamav2~6(c)) AND 
 (NOT xscreensaver-gl-extra~1(c)) AND 
 (NOT videolink~3(c)) AND 
 (libhttp-response-encoding-perl~1(c) IMPLIES perl~69(c) AND libwww-perl~27(c)) AND 
 (gnocatan-server-data~1(c) IMPLIES pioneers-server-data(c)) AND 
 (NOT libggadget-1.0-0~2(c)) AND 
 (libfile-searchpath-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT kpager~2(c)) AND 
 (NOT lsb-rpm~2(c)) AND 
 (tuxpaint-stamps-default~2(c) IMPLIES tuxpaint-data~2(c)) AND 
 (NOT virtualbox-ose-dbg~2(c)) AND 
 (NOT dwm-tools~1(c)) AND 
 (NOT libbt-dev~1(c)) AND 
 (NOT linux-headers-2.6-xen-amd64~1(c)) AND 
 (NOT openoffice.org~16(c)) AND 
 (libgnuinet-java~2(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c) OR gcj-4.4-jre~2(c))) AND 
 (NOT gforge-plugin-scmcvs~4(c)) AND 
 (NOT courier-authlib-pipe~2(c)) AND 
 (NOT adjtimex~1(c)) AND 
 (NOT mdns-scan~1(c)) AND 
 (NOT tcl8.4~7(c)) AND 
 (NOT kde-i18n-csb~2(c)) AND 
 (NOT libgnome-vfs2.0-cil~2(c)) AND 
 (NOT openoffice.org-writer~5(c)) AND 
 (NOT tor-dbg~3(c)) AND 
 (NOT libow-util-ant-tasks-java~1(c)) AND 
 (NOT science-mathematics-dev~1(c)) AND 
 (libgeo-metar-perl~2(c) IMPLIES perl~69(c)) AND 
 (libthread-queue-any-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT swish++~2(c)) AND 
 (NOT libcamel1.2-dev~2(c)) AND 
 (NOT euler~3(c)) AND 
 (NOT xpilot-client-nosound~1(c)) AND 
 (NOT libgdu-gtk-dev~1(c)) AND 
 (NOT libwebkit1.1-cil~1(c)) AND 
 (NOT nullmailer~1(c)) AND 
 (NOT texlive-lang-all~2(c)) AND 
 (NOT libsoqt4-20~1(c)) AND 
 (NOT azureus~3(c)) AND 
 (NOT libmultisync-plugin-irmc~2(c)) AND 
 (NOT ickle~1(c)) AND 
 (NOT cl-pdf~1(c)) AND 
 (NOT krb5-ftpd~3(c)) AND 
 (NOT guile-pg~2(c)) AND 
 (NOT rsync~4(c)) AND 
 (NOT dbi-link~1(c)) AND 
 (NOT libgdal1-dev~2(c)) AND 
 (NOT bzflag~1(c)) AND 
 (NOT kdemultimedia-kio-plugins~2(c)) AND 
 (NOT libhnj0~1(c)) AND 
 (NOT mrxvt-cjk~1(c)) AND 
 (NOT pike7.6-mysql~1(c)) AND 
 (NOT sip-tester~2(c)) AND 
 (NOT libtheora-dev~4(c)) AND 
 (NOT twitux~1(c)) AND 
 (NOT aptfs~1(c)) AND 
 (NOT libtagc0-dev~3(c)) AND 
 (NOT libeventdb-dev~2(c)) AND 
 (NOT gsoap~2(c)) AND 
 (NOT x11proto-record-dev~2(c)) AND 
 (NOT python-gtk2~27(c)) AND 
 (NOT python-ptrace~2(c)) AND 
 (NOT dbview~1(c)) AND 
 (libvia-dev~1(c) IMPLIES libvia0~1(c)) AND 
 (NOT gresolver~1(c)) AND 
 (liblingua-en-words2nums-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT gstreamer0.8-artsd~2(c)) AND 
 (NOT libsdl-perl~3(c)) AND 
 (NOT amarok-dbg~2(c)) AND 
 (NOT pdftk~1(c)) AND 
 (NOT tclmagick~1(c)) AND 
 (libtasn1-3-dev~3(c) IMPLIES libtasn1-3~4(c)) AND 
 (NOT cl-umlisp~1(c)) AND 
 (NOT icedove~13(c)) AND 
 (NOT libmath-random-tt800-perl~1(c)) AND 
 (NOT diffstat~2(c)) AND 
 (NOT libgtk-vnc-1.0-0-dbg~1(c)) AND 
 (NOT crossfire-client~2(c)) AND 
 (NOT hal-cups-utils~1(c)) AND 
 (libsnmp-ruby1.8~1(c) IMPLIES ruby~8(c)) AND 
 (NOT libdspam7-dev~1(c)) AND 
 (NOT libboost-wave1.38-dev~1(c)) AND 
 (NOT x11proto-render-dev~1(c)) AND 
 (NOT fastdnaml~1(c)) AND 
 (NOT libncurses-ruby1.9~1(c)) AND 
 (wgalician-minimos~2(c) IMPLIES dictionaries-common~20(c) AND (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c))) AND 
 (NOT libgnomemm-2.6-1c2~1(c)) AND 
 (NOT xtermset~1(c)) AND 
 (NOT lam-mpidoc~1(c)) AND 
 (NOT etrace~2(c)) AND 
 (NOT xtrace~1(c)) AND 
 (libdatetime-event-sunrise-perl~1(c) IMPLIES libdatetime-perl~15(c) AND libdatetime-set-perl~3(c) AND perl~69(c)) AND 
 (NOT libecore-svn-03~2(c)) AND 
 (NOT liblastfm-ocaml-dev~2(c)) AND 
 (NOT rpld~1(c)) AND 
 (NOT kommando~1(c)) AND 
 (libgpds-dev~1(c) IMPLIES libgpds0~2(c)) AND 
 (NOT clamav-daemon~8(c)) AND 
 (NOT libxfce4mcs-manager3~2(c)) AND 
 (NOT libroxen-safequote~1(c)) AND 
 (NOT joy2key~1(c)) AND 
 (NOT texlive-lang-spanish~2(c)) AND 
 (NOT gstreamer0.10-tools~1(c)) AND 
 (NOT liblablgtk2-ocaml-dev~5(c)) AND 
 (NOT libdeprecated-ruby~1(c)) AND 
 (NOT debfoster~2(c)) AND 
 (NOT apertium-eo-es~1(c)) AND 
 (libglu1-xorg-dev~1(c) IMPLIES libglu1-mesa-dev(c)) AND 
 (NOT libxdelta2~3(c)) AND 
 (NOT perdition-ldap~2(c)) AND 
 (NOT info~5(c)) AND 
 (NOT libgsf-1-114~4(c)) AND 
 (NOT ttf-farsiweb~1(c)) AND 
 (NOT apt-cross~3(c)) AND 
 (NOT sane~3(c)) AND 
 (NOT ladcca-dev~1(c)) AND 
 (qcad-doc~2(c) IMPLIES qt3-assistant(c)) AND 
 (NOT xmms2-et~1(c)) AND 
 (NOT libopensm2-dev~1(c)) AND 
 (NOT mtop~1(c)) AND 
 (NOT poster~1(c)) AND 
 (NOT libclanlib-dev~2(c)) AND 
 (NOT proftpd-dev~1(c)) AND 
 (NOT firefox-dom-inspector~1(c)) AND 
 (NOT libxp6-dbg~2(c)) AND 
 (ooo2dbk~1(c) IMPLIES python~22(c) AND python~22(c) AND xsltproc(c)) AND 
 (NOT liborlite-perl~3(c)) AND 
 (NOT libjna-java~1(c)) AND 
 (mpdscribble-dbg~1(c) IMPLIES mpdscribble~2(c)) AND 
 (NOT snappea-dev~1(c)) AND 
 (NOT libciao0.4.7c2a~2(c)) AND 
 (NOT python-wxgtk2.6-dbg~1(c)) AND 
 (NOT webissues-server~1(c)) AND 
 (NOT latex-svninfo~1(c)) AND 
 (NOT edos-debcheck~1(c)) AND 
 (NOT cppcheck~1(c)) AND 
 (NOT libstlport5.1ldbl~2(c)) AND 
 (libtest-simple-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT ax25-xtools~2(c)) AND 
 (NOT nant~1(c)) AND 
 (NOT libglobus-libtool-dev~2(c)) AND 
 (NOT libpam-runtime~7(c)) AND 
 (NOT fityk~2(c)) AND 
 (vm-bonus-el~3(c) IMPLIES vm~3(c)) AND 
 (libstringtemplate-java~1(c) IMPLIES libantlr-java(c)) AND 
 (NOT libcherokee-base0~1(c)) AND 
 (libfile-sharedir-par-perl~1(c) IMPLIES perl~69(c) AND libparams-util-perl~5(c) AND libfile-sharedir-perl~5(c) AND libclass-inspector-perl~5(c)) AND 
 (NOT linuxdoc-tools~2(c)) AND 
 (NOT flite1-dev~2(c)) AND 
 (NOT libsndfile1~1(c)) AND 
 (NOT libxmpi4-dev~1(c)) AND 
 (NOT libhtml-template-ruby~2(c)) AND 
 (libspring-test-2.5-java~1(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c) OR openjdk-6-jre(c)) AND libspring-core-2.5-java(c)) AND 
 (NOT nano~1(c)) AND 
 (NOT python-pypdf~2(c)) AND 
 (NOT libetpan-dev~2(c)) AND 
 (NOT libexpat-ocaml~2(c)) AND 
 (NOT python-zodb~4(c)) AND 
 (NOT sigscheme~2(c)) AND 
 (NOT xfce4-mcs-plugins~6(c)) AND 
 (NOT gstreamer0.8-speex~2(c)) AND 
 (NOT postgresql-plpython-8.3~2(c)) AND 
 (NOT sqldeveloper-package~1(c)) AND 
 (NOT unixodbc-bin~2(c)) AND 
 (NOT osiris~2(c)) AND 
 (NOT texlive-lang-indic~2(c)) AND 
 (NOT libqofexpensesobjects1~3(c)) AND 
 (NOT modemu~1(c)) AND 
 (NOT libtwolame0~1(c)) AND 
 (NOT dpsyco~2(c)) AND 
 (NOT nana~1(c)) AND 
 (NOT courier-mlm~3(c)) AND 
 (NOT vinagre-dev~1(c)) AND 
 (NOT ledcontrol-gtk~1(c)) AND 
 (NOT powermgmt-base~1(c)) AND 
 (NOT webfs~1(c)) AND 
 (NOT xmms2-plugin-curl~3(c)) AND 
 (NOT libnfnetlink0-dbg~1(c)) AND 
 (NOT kdoomsday~1(c)) AND 
 (NOT printtool~1(c)) AND 
 (libpicocontainer-java~1(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c))) AND 
 (NOT libvtk5~1(c)) AND 
 (NOT openoffice.org-gcj~4(c)) AND 
 (cl-cclan~2(c) IMPLIES common-lisp-controller~17(c)) AND 
 (NOT caudium-dev~1(c)) AND 
 (NOT radiusclient1~2(c)) AND 
 (NOT apertium-eo-ca~1(c)) AND 
 (NOT libgwenhywfar47-dev~2(c)) AND 
 (NOT mozilla-firefox-locale-cs-cz~2(c)) AND 
 (NOT root-plugin-net-netx~1(c)) AND 
 (NOT xclips~2(c)) AND 
 (NOT knode~4(c)) AND 
 (mnogosearch-common~1(c) IMPLIES (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf(c)) AND (mnogosearch-pgsql~2(c) OR mnogosearch-pgsql~2(c) OR mnogosearch-sqlite~2(c))) AND 
 (NOT libcairo2~25(c)) AND 
 (libextutils-cbuilder-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT libgambc4-dev~2(c)) AND 
 (NOT jlatex209-bin~2(c)) AND 
 (NOT libgpds-dbg~1(c)) AND 
 (NOT libavahi-core-dev~3(c)) AND 
 (NOT python-pyrad~3(c)) AND 
 (NOT libroxen-errormessage~2(c)) AND 
 (ditz~1(c) IMPLIES ruby1.8(c) AND libtrollop-ruby(c)) AND 
 (NOT libalsaplayer0~2(c)) AND 
 (NOT bugsquish~1(c)) AND 
 (NOT bacula-sd-sqlite3~2(c)) AND 
 (NOT libhfsp0~1(c)) AND 
 (NOT mlmmj-php-web-admin~2(c)) AND 
 (NOT libbibutils1~3(c)) AND 
 (NOT fsl-doc~2(c)) AND 
 (NOT plasma-widgets-addons~1(c)) AND 
 (NOT gvidm~1(c)) AND 
 (NOT libtse3-0.3.1c2a~2(c)) AND 
 (NOT glade-gnome~3(c)) AND 
 (NOT apt-dater-dbg~1(c)) AND 
 (NOT libsoprano-ruby1.8~1(c)) AND 
 (NOT mecab-ipadic-utf8~1(c)) AND 
 (NOT rhyme~1(c)) AND 
 (NOT avifile-mjpeg-plugin~1(c)) AND 
 (NOT zope-cmfplone~8(c)) AND 
 (libjavascript-rpc-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT libdb4.2-tcl~2(c)) AND 
 (NOT liburiparser-dev~1(c)) AND 
 (NOT libsvn-perl~3(c)) AND 
 (NOT unixodbc-dev~3(c)) AND 
 (libfile-copy-recursive-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT libroxen-graphicalcounter~1(c)) AND 
 (NOT python-symeig~1(c)) AND 
 (NOT pilot-qof~4(c)) AND 
 (NOT libhttp-cache-transparent-perl~1(c)) AND 
 (NOT libxslt1-dbg~2(c)) AND 
 (NOT postal~1(c)) AND 
 (NOT libghc6-mmap-prof~1(c)) AND 
 (NOT python-pymtp~1(c)) AND 
 (NOT geany-plugin-latex~2(c)) AND 
 (dist~1(c) IMPLIES perl(c) AND (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c))) AND 
 (NOT libgnokii5~1(c)) AND 
 (NOT wmaker~6(c)) AND 
 (NOT libgnokii4~1(c)) AND 
 (NOT libgnokii3~1(c)) AND 
 (NOT caudium-perl~1(c)) AND 
 (NOT libxine1-misc-plugins~1(c)) AND 
 (libalgorithm-diff-perl~4(c) IMPLIES perl~69(c)) AND 
 (NOT tkmixer~2(c)) AND 
 (NOT texlive-lang-latin~4(c)) AND 
 (NOT libmecab-dev~2(c)) AND 
 (NOT c3270~2(c)) AND 
 (NOT xwhois~1(c)) AND 
 (liblogfile-rotate-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT libkdegames-dev~2(c)) AND 
 (dish~1(c) IMPLIES expect(c)) AND 
 (NOT firebird2.0-common~2(c)) AND 
 (NOT libdfb++-0.9-25~1(c)) AND 
 (NOT libppi-html-perl~1(c)) AND 
 (libset-scalar-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT uml-utilities~2(c)) AND 
 (NOT apticron~2(c)) AND 
 (NOT libgfshare-bin~2(c)) AND 
 (NOT davfs2~1(c)) AND 
 (NOT python-elementtree~6(c)) AND 
 (NOT xul-ext-traybiff~1(c)) AND 
 (NOT libwine-jack-unstable~1(c)) AND 
 (NOT grass-dev~2(c)) AND 
 (NOT libgmerlin0~3(c)) AND 
 (NOT xnetcardconfig~1(c)) AND 
 (NOT libavutil49~5(c)) AND 
 (NOT scim~4(c)) AND 
 (libtinymail-camel-dev~1(c) IMPLIES libtinymail-camel-1.0-0~2(c)) AND 
 (NOT oregano~1(c)) AND 
 (NOT rcs-blame~1(c)) AND 
 (NOT libg3d-plugins~2(c)) AND 
 (dict-stardic~1(c) IMPLIES (serpento~1(c) OR dictd~4(c) OR dictd(c))) AND 
 (NOT liblo0~2(c)) AND 
 (NOT libmoosex-emulate-class-accessor-fast-perl~2(c)) AND 
 (NOT liquidwar-server~2(c)) AND 
 (libfusefs-ruby~1(c) IMPLIES libfusefs-ruby1.8(c)) AND 
 (NOT libmail-spf-query-perl~2(c)) AND 
 (libjavassist-java~1(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c) OR gcj-4.4-jre~2(c) OR openjdk-6-jre(c))) AND 
 (NOT wmtz~2(c)) AND 
 (NOT policyd-weight~2(c)) AND 
 (NOT tijmp~1(c)) AND 
 (NOT twpsk~1(c)) AND 
 (NOT libqdbm++-dev~1(c)) AND 
 (NOT gtkeyboard~1(c)) AND 
 (NOT dnstop~2(c)) AND 
 (NOT naim~1(c)) AND 
 (NOT systemconfigurator~3(c)) AND 
 (NOT wmtv~2(c)) AND 
 (NOT xmms~11(c)) AND 
 (NOT nail~1(c)) AND 
 (NOT libdb4.3-tcl~1(c)) AND 
 (libopts25-dev~1(c) IMPLIES libopts25~2(c)) AND 
 (NOT xserver-xorg-video-r128~1(c)) AND 
 (NOT libstreamanalyzer-dev~1(c)) AND 
 (NOT kcachegrind~4(c)) AND 
 (NOT libqt4-xmlpatterns~4(c)) AND 
 (NOT libthunar-vfs-1-dev~2(c)) AND 
 (NOT fsprotect~1(c)) AND 
 (NOT php4-ldap~1(c)) AND 
 (NOT libnet-ldap-perl~6(c)) AND 
 (NOT neko~3(c)) AND 
 (NOT openoffice.org-l10n-as-in~1(c)) AND 
 (NOT drawtiming~2(c)) AND 
 (NOT ksysguard~1(c)) AND 
 (scim-tables-zh~2(c) IMPLIES scim-modules-table~1(c)) AND 
 (NOT bld-postfix~1(c)) AND 
 (NOT libhttrack-dev~2(c)) AND 
 (libalberta2-dev~1(c) IMPLIES libalberta2~1(c) AND (libatlas-base-dev(c) OR libblas-dev(c)) AND libx11-dev(c) AND libgl1-mesa-dev(c)) AND 
 (NOT mpich2~1(c)) AND 
 (NOT osirismd~2(c)) AND 
 (NOT libopal-dev~3(c)) AND 
 (NOT libobby-0.4-1-dbg~2(c)) AND 
 (NOT libmedimport0~3(c)) AND 
 (NOT libmono-dev~4(c)) AND 
 (NOT libjifty-dbi-perl~2(c)) AND 
 (libmpeg3-dev~1(c) IMPLIES libmpeg3-1~2(c)) AND 
 (NOT libjifty-perl~2(c)) AND 
 (NOT spell~2(c)) AND 
 (NOT avahi-autoipd~3(c)) AND 
 (NOT barcode~2(c)) AND 
 (NOT kismet~2(c)) AND 
 (NOT pioneers-client~1(c)) AND 
 (NOT libcgal-dev~1(c)) AND 
 (wukrainian~1(c) IMPLIES dictionaries-common(c) AND (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c))) AND 
 (satutils~1(c) IMPLIES perl~69(c) AND libwww-perl(c)) AND 
 (NOT changetrack~2(c)) AND 
 (NOT galago-eds-feed~2(c)) AND 
 (NOT libsefs-dev~2(c)) AND 
 (NOT jmdlx~1(c)) AND 
 (NOT libfontconfig1-dev~4(c)) AND 
 (NOT grandr~1(c)) AND 
 (NOT bootcd~2(c)) AND 
 (NOT libbeagle-dev~1(c)) AND 
 (NOT libnetpbm10~2(c)) AND 
 (NOT rawstudio~1(c)) AND 
 (NOT libalure1-dbg~1(c)) AND 
 (libequeue-ocaml-dev~4(c) IMPLIES libocamlnet-ocaml-dev~8(c)) AND 
 (NOT guile-g-wrap~1(c)) AND 
 (NOT bootcd-mkinitramfs~2(c)) AND 
 (NOT libswfdec-0.8-0~1(c)) AND 
 (NOT xbill~2(c)) AND 
 (NOT holotz-castle-editor~1(c)) AND 
 (NOT nagi~1(c)) AND 
 (NOT pinentry-qt~1(c)) AND 
 (NOT btyacc~1(c)) AND 
 (NOT gcc-4.1-source~1(c)) AND 
 (NOT python-sendfile-dbg~1(c)) AND 
 (NOT libplexus-build-api-java~1(c)) AND 
 (NOT grande~1(c)) AND 
 (NOT libopenrawgnome-dev~1(c)) AND 
 (NOT elmer~1(c)) AND 
 (NOT python-coherence~1(c)) AND 
 (NOT python-cracklib~2(c)) AND 
 (NOT libgenrunner0.3.1~1(c)) AND 
 (cdd-dev~3(c) IMPLIES blends-dev(c)) AND 
 (NOT libgdchart-gd1-noxpm~1(c)) AND 
 (NOT xlaby~2(c)) AND 
 (egroupware-filemanager~2(c) IMPLIES egroupware-core~2(c)) AND 
 (openoffice.org-filter-mobiledev~4(c) IMPLIES openoffice.org-java-common~16(c)) AND 
 (NOT xfonts-cronyx-isocyr-100dpi~1(c)) AND 
 (NOT libcommons-fileupload-java~2(c)) AND 
 (magpierss~3(c) IMPLIES libphp-magpierss(c)) AND 
 (NOT wesnoth-low~1(c)) AND 
 (NOT libtaglib-ocaml-dev~1(c)) AND 
 (NOT gtkrsync~2(c)) AND 
 (NOT tamil-gtk2im~3(c)) AND 
 (NOT translate-docformat~1(c)) AND 
 (NOT pmount~2(c)) AND 
 (NOT achilles~2(c)) AND 
 (NOT libaqbanking29-plugins-qt~2(c)) AND 
 (NOT libmodplug0c2~2(c)) AND 
 (NOT libevas-svn-03-engines-x~1(c)) AND 
 (NOT libxml-stream-perl~2(c)) AND 
 (NOT ivman~1(c)) AND 
 (NOT rott~1(c)) AND 
 (NOT zipcmp~1(c)) AND 
 (NOT gtkparasite~1(c)) AND 
 (NOT intel-microcode~2(c)) AND 
 (NOT noffle~1(c)) AND 
 (NOT amule-utils~3(c)) AND 
 (NOT libtorrent9~2(c)) AND 
 (NOT libiconv-hook1~2(c)) AND 
 (mozilla-thunderbird-dev~2(c) IMPLIES icedove-dev(c)) AND 
 (NOT phaseshift~3(c)) AND 
 (NOT dvi2ps~2(c)) AND 
 (NOT libhildonthumbnail0~2(c)) AND 
 (NOT libadplug0c2a~2(c)) AND 
 (NOT libsablevm1~1(c)) AND 
 (NOT compiz-dev~3(c)) AND 
 (NOT pike7.6-meta~2(c)) AND 
 (svnmailer~1(c) IMPLIES python~22(c) AND python-support~7(c) AND python-subversion(c)) AND 
 (NOT guile-db~2(c)) AND 
 (NOT libtest-valgrind-perl~1(c)) AND 
 (NOT fuseext2~1(c)) AND 
 (NOT libmagickwand2~3(c)) AND 
 (NOT rebuildd~2(c)) AND 
 (NOT akregator~4(c)) AND 
 (NOT ktouch~2(c)) AND 
 (NOT tuxcmd~1(c)) AND 
 (NOT ksimus~5(c)) AND 
 (NOT libicestorm33~2(c)) AND 
 (NOT procps~5(c)) AND 
 (ding~1(c) IMPLIES (tk8.5~3(c) OR tk8.5~3(c) OR tk8.4~5(c) OR tk8.4(c))) AND 
 (NOT libsdl-ocaml~1(c)) AND 
 (NOT libxmltok1-dev~2(c)) AND 
 (NOT ufraw~2(c)) AND 
 (NOT capi4hylafax~3(c)) AND 
 (NOT libgv-lua~3(c)) AND 
 (NOT mesa-utils~2(c)) AND 
 (NOT libapache2-mod-speedycgi~2(c)) AND 
 (NOT latex-hangul-ucs~1(c)) AND 
 (NOT freeciv-server~4(c)) AND 
 (onlisp-code~1(c) IMPLIES common-lisp-controller~17(c) AND (sbcl~9(c) OR sbcl~7(c) OR sbcl~6(c) OR sbcl~9(c) OR sbcl~7(c) OR sbcl~6(c))) AND 
 (NOT r-cran-kernsmooth~2(c)) AND 
 (NOT strigi-dbg~1(c)) AND 
 (NOT bandwidthd-pgsql~1(c)) AND 
 (libalberta2-dbg~1(c) IMPLIES libalberta2~1(c)) AND 
 (cl-regex~1(c) IMPLIES common-lisp-controller~17(c)) AND 
 (NOT libdc1394-13-dev~2(c)) AND 
 (NOT ipvsadm~2(c)) AND 
 (NOT ibus-table-cangjie~1(c)) AND 
 (NOT checkpw~2(c)) AND 
 (NOT libdbd-freetds~1(c)) AND 
 (NOT nag2~1(c)) AND 
 (NOT tdiary~2(c)) AND 
 (NOT epiphany~2(c)) AND 
 (libcmd-ruby1.8~1(c) IMPLIES ruby1.8(c)) AND 
 (nadoka~1(c) IMPLIES ruby1.8(c)) AND 
 (NOT python-psycopg2da~1(c)) AND 
 (NOT scalapack1-mpich~1(c)) AND 
 (NOT dime~1(c)) AND 
 (NOT rfs-server~1(c)) AND 
 (NOT gstreamer0.8-oss~2(c)) AND 
 (NOT gnuradio-utils~1(c)) AND 
 (NOT saydate~2(c)) AND 
 (NOT zivot~1(c)) AND 
 (NOT moblin-panel-people~1(c)) AND 
 (scorched3d-dbg~1(c) IMPLIES scorched3d~1(c)) AND 
 (NOT syncmaildir-applet~2(c)) AND 
 (NOT libkhtml2.0-cil~1(c)) AND 
 (NOT libextutils-xsbuilder-perl~2(c)) AND 
 (NOT mlocate~1(c)) AND 
 (NOT libbeagle-dbg~1(c)) AND 
 (libmodem-vgetty-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT libgtk2-gladexml-simple-perl~1(c)) AND 
 (gadmin-bind-dbg~1(c) IMPLIES gadmin-bind~1(c)) AND 
 (NOT libgconf2-ruby1.8-dbg~1(c)) AND 
 (NOT pdl~4(c)) AND 
 (NOT kdebase-workspace-kgreet-plugins~2(c)) AND 
 (NOT libclthreads-dev~1(c)) AND 
 (NOT ocsinventory-agent~2(c)) AND 
 (NOT libselinux1-dev~2(c)) AND 
 (NOT tigr-glimmer~2(c)) AND 
 (NOT libplist0-dbg~1(c)) AND 
 (NOT libclucene-dev~2(c)) AND 
 (NOT libdb3-ruby1.9~1(c)) AND 
 (NOT libwagon-java-doc~1(c)) AND 
 (NOT linphone~1(c)) AND 
 (NOT mozilla-bonobo~1(c)) AND 
 (NOT libdb3-ruby1.8~1(c)) AND 
 (NOT libzzip-0-12~2(c)) AND 
 (NOT libloki0.1.7-dbg~1(c)) AND 
 (libnmap-parser-perl~2(c) IMPLIES perl~69(c) AND libxml-twig-perl(c)) AND 
 (NOT catdvi~1(c)) AND 
 (NOT libaudio-mpd-common-perl~2(c)) AND 
 (NOT libxres1~1(c)) AND 
 (NOT banshee~3(c)) AND 
 (NOT libhtml-fromtext-perl~2(c)) AND 
 (NOT printconf~2(c)) AND 
 (NOT libsgutils1-dev~1(c)) AND 
 (NOT libgdict-1.0-6~3(c)) AND 
 (NOT libengine-pkcs11-openssl~2(c)) AND 
 (ssh-krb5~4(c) IMPLIES openssh-client(c) AND openssh-server(c)) AND 
 (NOT libghc6-gio-dev~1(c)) AND 
 (svgalibg1~2(c) IMPLIES libsvga1(c)) AND 
 (NOT wmnd~2(c)) AND 
 (NOT gir1.0-champlain-0.4~1(c)) AND 
 (NOT nabi~1(c)) AND 
 (NOT xmms2-plugin-jack~1(c)) AND 
 (libquantum-entanglement-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT scim-gtk2-immodule~2(c)) AND 
 (NOT globus-gram-job-manager-setup-pbs-doc~1(c)) AND 
 (NOT g15composer~1(c)) AND 
 (NOT speech-dispatcher~5(c)) AND 
 (NOT libggzmod-dev~1(c)) AND 
 (NOT ocaml-ulex~3(c)) AND 
 (NOT pcb~4(c)) AND 
 (NOT libscrollkeeper-dev~1(c)) AND 
 (NOT logrotate~7(c)) AND 
 (NOT libphp-pclzip~2(c)) AND 
 (NOT liblablgtk2-gl-ocaml~2(c)) AND 
 (libromkan-ruby1.8~1(c) IMPLIES libruby1.8(c)) AND 
 (NOT libgdal1-1.3.2-grass~1(c)) AND 
 (libiptables-parse-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT speex~2(c)) AND 
 (NOT libhighgui0.9.7-0~1(c)) AND 
 (taglog~1(c) IMPLIES (tk8.5~3(c) OR tk8.5~3(c) OR tk8.4~5(c) OR tk8.4(c))) AND 
 (NOT gir1.0-babl-0.0~1(c)) AND 
 (NOT libpam-ck-connector~1(c)) AND 
 (NOT libmpc-dev~1(c)) AND 
 (pulseaudio-dbg~3(c) IMPLIES pulseaudio~8(c)) AND 
 (NOT wmspaceweather~2(c)) AND 
 (NOT libxdmcp6-dbg~1(c)) AND 
 (NOT libcdg123-dev~1(c)) AND 
 (libpdf-writer-ruby1.8~1(c) IMPLIES ruby1.8(c) AND libtransaction-simple-ruby1.8(c) AND libcolor-tools-ruby1.8(c)) AND 
 (NOT libghc6-x11-prof~2(c)) AND 
 (NOT libroot-graf3d-g3d5.24~2(c)) AND 
 (NOT libxcb-event1-dev~1(c)) AND 
 (NOT gpaint~1(c)) AND 
 (NOT conntrack~1(c)) AND 
 (NOT newpki-client~2(c)) AND 
 (pitrtools~1(c) IMPLIES python(c)) AND 
 (bash-static~3(c) IMPLIES passwd~7(c)) AND 
 (NOT grandfatherclock~1(c)) AND 
 (epiphany-browser-dbg~2(c) IMPLIES epiphany-browser~10(c)) AND 
 (NOT sdic-edict~1(c)) AND 
 (NOT xmms-jackasyn~1(c)) AND 
 (NOT libapache-mod-dav~1(c)) AND 
 (NOT libgtksourceview2-2.0-cil~3(c)) AND 
 (NOT libgail18~3(c)) AND 
 (NOT quick-lounge-applet~1(c)) AND 
 (NOT libxiterm-dev~1(c)) AND 
 (NOT lsb-qt4~2(c)) AND 
 (NOT pencam~1(c)) AND 
 (NOT mp3wrap~1(c)) AND 
 (NOT titanion~1(c)) AND 
 (NOT vim-latexsuite~2(c)) AND 
 (NOT xmms2-plugin-vocoder~1(c)) AND 
 (gnu-smalltalk-common~2(c) IMPLIES perl(c)) AND 
 (NOT libnfnetlink1~2(c)) AND 
 (NOT pentanet-utils~1(c)) AND 
 (NOT libglrr-gtk0~1(c)) AND 
 (NOT liblablgtksourceview-ocaml-dev~1(c)) AND 
 (NOT gramps~1(c)) AND 
 (NOT libmaypole-perl~2(c)) AND 
 (k3b-i18n~1(c) IMPLIES k3b(c)) AND 
 (NOT mutt~2(c)) AND 
 (NOT libtcd-dev~1(c)) AND 
 (python-cerealizer~2(c) IMPLIES (python2.4(c) OR python~22(c)) AND python-support~7(c)) AND 
 (NOT libhyphen-dev~1(c)) AND 
 (NOT libselinux1~15(c)) AND 
 (NOT nvidia-kernel-legacy-173xx-source~1(c)) AND 
 (NOT user-mode-linux~1(c)) AND 
 (NOT zope-rdfgrabber~1(c)) AND 
 (NOT libphidgets-dev~2(c)) AND 
 (NOT mgdiff~2(c)) AND 
 (NOT mssh~1(c)) AND 
 (NOT libgtkspell-dev~1(c)) AND 
 (NOT rpm2cpio~1(c)) AND 
 (NOT zinnia-utils~1(c)) AND 
 (NOT libdrm-dev~3(c)) AND 
 (latex-ucs-doc~1(c) IMPLIES texlive-base-bin(c)) AND 
 (NOT courier-pop-ssl~1(c)) AND 
 (NOT libroot-math-foam5.24~2(c)) AND 
 (NOT oneliner-el~1(c)) AND 
 (tetex-frogg~1(c) IMPLIES tetex-base(c)) AND 
 (NOT libpdf-reuse-barcode-perl~1(c)) AND 
 (NOT med-cms~1(c)) AND 
 (NOT monodoc-http~2(c)) AND 
 (NOT msrp~1(c)) AND 
 (NOT libzeroc-ice33~1(c)) AND 
 (fossology-web~1(c) IMPLIES fossology-agents(c) AND (apache2(c) OR apache2-mpm-prefork~6(c) OR apache2-mpm-prefork~6(c)) AND libapache2-mod-php5(c)) AND 
 (NOT libtinymailui-gtk-dev~1(c)) AND 
 (NOT dirvish~2(c)) AND 
 (NOT libattr1-dev~2(c)) AND 
 (amrita~2(c) IMPLIES libamrita-ruby1.8(c)) AND 
 (NOT libzeroc-ice31~1(c)) AND 
 (NOT proftpd-mod-ldap~2(c)) AND 
 (NOT licq-plugin-osd~2(c)) AND 
 (NOT libparted1.8-dev~1(c)) AND 
 (NOT gauche~3(c)) AND 
 (NOT apertium-dbus~2(c)) AND 
 (NOT libgnome2-vfs-perl~2(c)) AND 
 (NOT workrave~4(c)) AND 
 (NOT bootchart~2(c)) AND 
 (NOT moonlight-plugin-mozilla~1(c)) AND 
 (NOT libapache-db-perl~1(c)) AND 
 (NOT muscletools~3(c)) AND 
 (NOT libfreecell-solver0~3(c)) AND 
 (NOT pulseaudio-module-bluetooth-dbg~2(c)) AND 
 (NOT nagios3-common~1(c)) AND 
 (libhtml-scrubber-perl~1(c) IMPLIES perl~69(c) AND libhtml-parser-perl(c)) AND 
 (NOT stress~2(c)) AND 
 (NOT r-cran-class~1(c)) AND 
 (NOT muse~2(c)) AND 
 (NOT libsafe-hole-perl~3(c)) AND 
 (NOT claws-mail-bogofilter~1(c)) AND 
 (NOT opensync-plugin-evolution~2(c)) AND 
 (NOT libclass-csv-perl~1(c)) AND 
 (NOT libvcdinfo-dev~1(c)) AND 
 (NOT gfortran-4.3-multilib~3(c)) AND 
 (NOT libjson-xs-perl~5(c)) AND 
 (NOT libsp-gxmlcpp-dev~1(c)) AND 
 (NOT poedit-dbg~1(c)) AND 
 (NOT tepache~1(c)) AND 
 (NOT aewm++~3(c)) AND 
 (NOT cbmlink-cbmutils~1(c)) AND 
 (NOT isdnvbox~2(c)) AND 
 (NOT python-zope.i18nmessageid~1(c)) AND 
 (NOT revtex~1(c)) AND 
 (libjson-ruby1.8~1(c) IMPLIES ruby1.8(c)) AND 
 (NOT libapache2-mod-wsgi~3(c)) AND 
 (NOT util-vserver~5(c)) AND 
 (cl-statistics~1(c) IMPLIES common-lisp-controller~17(c)) AND 
 (NOT lineak-defaultplugin~3(c)) AND 
 (NOT wmii~2(c)) AND 
 (NOT libsilc-1.1-2-dbg~2(c)) AND 
 (NOT libaqnone0~1(c)) AND 
 (NOT muine-plugin-trayicon~1(c)) AND 
 (NOT compiz-gnome~3(c)) AND 
 (NOT libshib-target5~1(c)) AND 
 (NOT libsmbiosxml1~1(c)) AND 
 (NOT asis-programs~1(c)) AND 
 (virtualbox-ose-guest-source~3(c) IMPLIES dpkg-dev(c)) AND 
 (NOT leafpad~2(c)) AND 
 (libnetclient-ocaml-dev~3(c) IMPLIES libocamlnet-ocaml-dev~8(c)) AND 
 (NOT ant-optional-gcj~1(c)) AND 
 (NOT libqtscript4-opengl~1(c)) AND 
 (libcomplearn-ruby~1(c) IMPLIES libcomplearn-ruby1.8(c)) AND 
 (NOT libecal1.2-dev~2(c)) AND 
 (NOT kuickshow~2(c)) AND 
 (NOT rt2570-source~2(c)) AND 
 (icegrid-gui~1(c) IMPLIES libzeroc-ice-java(c)) AND 
 (NOT linux-headers-2.6.26-bpo.1-openvz-amd64~1(c)) AND 
 (tcllib~1(c) IMPLIES (tcl8.5~3(c) OR tcl8.5~3(c) OR tcl8.4~7(c) OR tcl8.4(c))) AND 
 (NOT systemsettings~3(c)) AND 
 (tomcat6-common~2(c) IMPLIES libtomcat6-java~3(c)) AND 
 (NOT glosstex~1(c)) AND 
 (vim-full~3(c) IMPLIES vim-gnome~5(c)) AND 
 (NOT kvpnc~1(c)) AND 
 (dosage~1(c) IMPLIES python-central~22(c) AND python~22(c)) AND 
 (NOT python-paramiko~4(c)) AND 
 (NOT keylaunch~2(c)) AND 
 (libparsetree-ruby1.8~1(c) IMPLIES ruby1.8(c) AND libinline-ruby1.8(c)) AND 
 (NOT python-webhelpers~4(c)) AND 
 (NOT libexosip2-dev~2(c)) AND 
 (NOT prayer~2(c)) AND 
 (NOT liblocale-gettext-perl~5(c)) AND 
 (NOT libapache2-mod-removeip~2(c)) AND 
 (NOT metar~2(c)) AND 
 (gnuchess-book~2(c) IMPLIES (gnuchess~3(c) OR gnuchess~2(c))) AND 
 (NOT kdepim-strigi-plugins~1(c)) AND 
 (NOT gxine~2(c)) AND 
 (NOT libusb++-dev~1(c)) AND 
 (NOT libcore-ocaml~2(c)) AND 
 (NOT python-testresources~1(c)) AND 
 (NOT libatlas-base-dev~1(c)) AND 
 (NOT gstreamer-editor~1(c)) AND 
 (NOT fortunes-bofh-excuses~1(c)) AND 
 (vim-dbg~1(c) IMPLIES (vim-gtk~4(c) OR vim~4(c))) AND 
 (NOT libtemplate-provider-encoding-perl~1(c)) AND 
 (NOT spfquery~5(c)) AND 
 (NOT bash~23(c)) AND 
 (NOT gpsim~3(c)) AND 
 (NOT libgtkhex0-dev~1(c)) AND 
 (NOT libpassword-ruby~1(c)) AND 
 (NOT ipw2100-modules-2.6-xen-vserver-amd64~1(c)) AND 
 (NOT denemo~2(c)) AND 
 (NOT canorus-data~1(c)) AND 
 (NOT libapache2-mod-apreq2~2(c)) AND 
 (NOT python-numpy~11(c)) AND 
 (NOT catdoc~1(c)) AND 
 (NOT libgd-text-perl~3(c)) AND 
 (NOT uncrustify~1(c)) AND 
 (latex-xcolor~2(c) IMPLIES texlive-latex-recommended(c)) AND 
 (NOT dictd~4(c)) AND 
 (NOT libroxen-explaindir~1(c)) AND 
 (NOT hoz-gui~2(c)) AND 
 (NOT libmaven-docck-plugin-java~1(c)) AND 
 (NOT iroffer~1(c)) AND 
 (libparted1.8-dbg~1(c) IMPLIES libparted1.8-12~2(c) AND libparted1.8-dev~1(c)) AND 
 (NOT python-pyode~2(c)) AND 
 (python-cairo-dev~2(c) IMPLIES python-cairo~12(c) AND libjs-jquery(c)) AND 
 (python-genetic~1(c) IMPLIES python(c) AND python-support~7(c)) AND 
 (NOT sndfile-programs~3(c)) AND 
 (NOT dpkg-dev~23(c)) AND 
 (NOT thunderbird-locale-es-es~2(c)) AND 
 (NOT lxde-common~3(c)) AND 
 (NOT libcore++-demo~2(c)) AND 
 (NOT pycaml~2(c)) AND 
 (NOT python-sqlrelay~2(c)) AND 
 (NOT rdist~1(c)) AND 
 (libdbus-java-doc~1(c) IMPLIES (classpath-doc(c) OR libgcj-doc~3(c) OR libgcj-doc~3(c))) AND 
 (libnet-sieve-script-perl~1(c) IMPLIES perl~69(c) AND libclass-accessor-perl~5(c)) AND 
 (NOT python-cairo~12(c)) AND 
 (NOT iiimf-le-sun-traditional-chinese~1(c)) AND 
 (NOT libglade2-ruby~2(c)) AND 
 (NOT mscompress~2(c)) AND 
 (NOT rhythmbox~8(c)) AND 
 (NOT dico~1(c)) AND 
 (NOT razzle~1(c)) AND 
 (jclic~1(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c))) AND 
 (NOT ghostscript-cups~1(c)) AND 
 (NOT python-pysnmp-se~1(c)) AND 
 (NOT libggi-target-terminfo~4(c)) AND 
 (NOT stepulator.app~1(c)) AND 
 (NOT libzipios++-dev~2(c)) AND 
 (NOT libxcb-shape0~1(c)) AND 
 (NOT rosegarden~2(c)) AND 
 (NOT libmagic-ocaml-dev~1(c)) AND 
 (NOT kmess~1(c)) AND 
 (NOT libboost-system1.40.0~2(c)) AND 
 (scim-tables-ko~2(c) IMPLIES scim-modules-table~1(c)) AND 
 (NOT gnustep-core-devel~2(c)) AND 
 (NOT perlindex~2(c)) AND 
 (NOT libsmokeakonadi2~2(c)) AND 
 (NOT libpg-perl~2(c)) AND 
 (NOT deluged~1(c)) AND 
 (NOT ebug-http~1(c)) AND 
 (NOT pyscrabble~1(c)) AND 
 (NOT nmap~7(c)) AND 
 (NOT python-sendfile~1(c)) AND 
 (NOT wesnoth-thot~2(c)) AND 
 (NOT libxiterm1~1(c)) AND 
 (NOT bash-minimal~1(c)) AND 
 (NOT libapache-mod-encoding~1(c)) AND 
 (NOT r-cran-survival~6(c)) AND 
 (NOT xfonts-marumoji~1(c)) AND 
 (monodoc-gtk-manual~1(c) IMPLIES monodoc-manual(c)) AND 
 (NOT junior-toys~1(c)) AND 
 (NOT antennavis~1(c)) AND 
 (NOT r-cran-rgl~4(c)) AND 
 (mysql-server~6(c) IMPLIES (mysql-server-5.0(c) OR mysql-server-5.1~2(c))) AND 
 (NOT rezound~2(c)) AND 
 (NOT libspatialindex-dev~1(c)) AND 
 (libgnujaf-java~2(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c) OR gcj-4.4-jre~2(c))) AND 
 (NOT flexloader~2(c)) AND 
 (libhugs-http~3(c) IMPLIES hugs~5(c) AND hugs~2(c) AND (hugs~2(c) OR libhugs-parsec-bundled~1(c))) AND 
 (NOT libmath-random-oo-perl~1(c)) AND 
 (NOT yokadi~2(c)) AND 
 (NOT batmon.app~1(c)) AND 
 (NOT education-desktop-gnome~3(c)) AND 
 (NOT krank~1(c)) AND 
 (NOT libaudit0~1(c)) AND 
 (NOT courier-base~7(c)) AND 
 (NOT libxml-ruby1.8~1(c)) AND 
 (libsystemu-ruby1.9~1(c) IMPLIES ruby1.9(c)) AND 
 (NOT python-twisted-conch~6(c)) AND 
 (libsystemu-ruby1.8~1(c) IMPLIES ruby1.8(c)) AND 
 (NOT librrd2-dev~1(c)) AND 
 (NOT latex-cjk-chinese-arphic-gkai00mp~1(c)) AND 
 (NOT libroot-proof-clarens5.24~2(c)) AND 
 (NOT nitrogen~1(c)) AND 
 (fnorb~2(c) IMPLIES python~22(c) AND python-central~22(c) AND cpp(c)) AND 
 (NOT ceferino~2(c)) AND 
 (NOT libpqxx-2.6.9ldbl~1(c)) AND 
 (NOT sylpheed-claws-gtk2-html2-viewer~1(c)) AND 
 (NOT libexpat1-dev~3(c)) AND 
 (win32-loader~2(c) IMPLIES base-files~10(c)) AND 
 (NOT libmagick++10~1(c)) AND 
 (NOT libroxen-meta~1(c)) AND 
 (NOT libmail-milter-perl~2(c)) AND 
 (NOT libnl-dev~1(c)) AND 
 (NOT mtd-tools~2(c)) AND 
 (NOT python-poppler~2(c)) AND 
 (NOT libgnome2-canvas-perl~2(c)) AND 
 (scim-tables-ja~2(c) IMPLIES scim-modules-table~1(c)) AND 
 (NOT libpreludedb-perl~1(c)) AND 
 (cl-getopt~1(c) IMPLIES common-lisp-controller(c) AND cl-ptester(c)) AND 
 (NOT rofs~1(c)) AND 
 (NOT festival-te~2(c)) AND 
 (firefox-webdeveloper~1(c) IMPLIES iceweasel-webdeveloper~1(c)) AND 
 (zope-debhelper~2(c) IMPLIES perl(c) AND debhelper~31(c)) AND 
 (NOT ktuberling~1(c)) AND 
 (NOT libghc6-pcre-light-prof~2(c)) AND 
 (substance~2(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c))) AND 
 (NOT libecore-imf-svn-03~2(c)) AND 
 (NOT imanx~1(c)) AND 
 (NOT lurkftp~1(c)) AND 
 (NOT plplot9-driver-cairo~1(c)) AND 
 (NOT aprsd~1(c)) AND 
 (NOT python-gtkmvc~1(c)) AND 
 (NOT git-svn~5(c)) AND 
 (NOT hplip-cups~3(c)) AND 
 (NOT ibwebadmin~1(c)) AND 
 (NOT libcurses-ruby~3(c)) AND 
 (NOT cdrbq~2(c)) AND 
 (NOT ksnapshot~5(c)) AND 
 (NOT python-pymad~1(c)) AND 
 (NOT x11proto-dri2-dev~2(c)) AND 
 (NOT i8kutils~1(c)) AND 
 (NOT realpath~2(c)) AND 
 (NOT gpe-question~1(c)) AND 
 (NOT bluez~6(c)) AND 
 (NOT wmcb~2(c)) AND 
 (NOT autokey~2(c)) AND 
 (NOT circuslinux~3(c)) AND 
 (NOT php5-xsl~1(c)) AND 
 (NOT thunderbird-locale-es-ar~2(c)) AND 
 (NOT libpq-dev~10(c)) AND 
 (NOT libpqxx3-dev~1(c)) AND 
 (NOT latex-ucs-dev~1(c)) AND 
 (NOT gpe-mininet~1(c)) AND 
 (NOT libktoblzcheck1-dev~1(c)) AND 
 (NOT qelectrotech~1(c)) AND 
 (NOT sp~5(c)) AND 
 (NOT ktechlab~1(c)) AND 
 (NOT python-django-dmigrations~1(c)) AND 
 (NOT rssreader.app~2(c)) AND 
 (NOT libsys-cpu-perl~2(c)) AND 
 (NOT js2-mode~1(c)) AND 
 (NOT thin1.8~1(c)) AND 
 (NOT libpisync1~1(c)) AND 
 (NOT monodevelop-boo~1(c)) AND 
 (NOT webissues-dbg~1(c)) AND 
 (NOT libpisync0~1(c)) AND 
 (gnu-smalltalk-el~1(c) IMPLIES (emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs~1(c) OR emacs(c))) AND 
 (NOT enigmail-locale-pt-br~1(c)) AND 
 (NOT chasen-dictutils~3(c)) AND 
 (NOT libxrender1~3(c)) AND 
 (NOT bin86~2(c)) AND 
 (NOT libghc6-hsql-mysql-dev~3(c)) AND 
 (NOT libpgsql-ruby~3(c)) AND 
 (dictem~1(c) IMPLIES (dict~2(c) OR dict~3(c)) AND (emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs~1(c))) AND 
 (NOT xfce4-goodies~2(c)) AND 
 (iceweasel-itsalltext~1(c) IMPLIES (iceweasel~16(c) OR iceweasel~5(c))) AND 
 (NOT libglib2.0-data~2(c)) AND 
 (openoffice.org-style-hicontrast~1(c) IMPLIES openoffice.org-common~21(c)) AND 
 (openoffice.org-writer2latex~3(c) IMPLIES openoffice.org-common~30(c) AND (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c)) AND procps(c) AND openoffice.org-core~34(c) AND openoffice.org-java-common~16(c)) AND 
 (NOT libcommons-digester-java~5(c)) AND 
 (NOT libmono-posix2.0-cil~4(c)) AND 
 (NOT ktorrent-dbg~1(c)) AND 
 (libinline-ruby1.8~2(c) IMPLIES ruby1.8(c) AND ruby1.8-dev(c)) AND 
 (NOT libgpmg1-dev~3(c)) AND 
 (NOT libspring-webmvc-2.5-java~1(c)) AND 
 (NOT python-gnomedesktop~1(c)) AND 
 (NOT ttf-tamil-fonts~3(c)) AND 
 (libmodule-find-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT bibtex2html~1(c)) AND 
 (gearman~1(c) IMPLIES gearman-tools(c) AND gearman-job-server(c)) AND 
 (NOT python-wxtools~1(c)) AND 
 (NOT rfdump~2(c)) AND 
 (num-utils~1(c) IMPLIES perl(c)) AND 
 (NOT systemtap-runtime~1(c)) AND 
 (NOT libsvga1~2(c)) AND 
 (NOT kdemultimedia-kio-plugins~5(c)) AND 
 (libfile-path-expand-perl~2(c) IMPLIES perl~69(c)) AND 
 (surfraw~5(c) IMPLIES (epiphany-browser~10(c) OR xemacs21-mule-canna-wnn~2(c) OR epiphany-gecko~2(c) OR iceweasel~5(c) OR dillo~2(c) OR epiphany-browser~10(c) OR xemacs21-mule-canna-wnn~2(c) OR epiphany-gecko~2(c) OR iceweasel~5(c) OR dillo~2(c) OR konqueror~13(c) OR midori~2(c) OR iceweasel~16(c) OR netrik~2(c) OR netsurf-linuxfb~1(c) OR netsurf-gtk~1(c))) AND 
 (NOT kdm~9(c)) AND 
 (NOT libnuma1~3(c)) AND 
 (NOT libp11-1~2(c)) AND 
 (NOT urlscan~1(c)) AND 
 (NOT libp11-0~2(c)) AND 
 (NOT libghc6-hsh-dev~2(c)) AND 
 (NOT libfontenc1-dbg~2(c)) AND 
 (NOT libgts-0.7-5~2(c)) AND 
 (NOT kdepim~3(c)) AND 
 (NOT idle~1(c)) AND 
 (NOT vim-lesstif~5(c)) AND 
 (NOT r-cran-abind~3(c)) AND 
 (NOT slashem~2(c)) AND 
 (NOT keyanalyze~1(c)) AND 
 (NOT libgomp1~6(c)) AND 
 (NOT bacula-sd-pgsql~3(c)) AND 
 (NOT gambas2-gb-form-dialog~1(c)) AND 
 (NOT libaudio2~1(c)) AND 
 (NOT sigit~1(c)) AND 
 (NOT libghc6-xhtml-prof~1(c)) AND 
 (NOT xml-rpc-api2txt~2(c)) AND 
 (python-symeig-dbg~1(c) IMPLIES python-symeig(c)) AND 
 (pflogsumm~2(c) IMPLIES perl(c) AND libdate-calc-perl(c)) AND 
 (NOT pidgin-awayonlock~2(c)) AND 
 (libtest-tester-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT python-vatnumber~2(c)) AND 
 (NOT libunistring0~1(c)) AND 
 (NOT blocks-of-the-undead-data~1(c)) AND 
 (python-setuptools~11(c) IMPLIES python~22(c) AND python~22(c) AND python-central~22(c) AND python-pkg-resources~8(c)) AND 
 (NOT x11-xkb-utils~1(c)) AND 
 (NOT hostname~3(c)) AND 
 (NOT svgalib-bin~2(c)) AND 
 (NOT ttf-gfs-didot~1(c)) AND 
 (jbossas4~1(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c) OR gcj-4.4-jre~2(c))) AND 
 (NOT libpfm3-3.2~1(c)) AND 
 (NOT dhcp3-dev~4(c)) AND 
 (NOT dia-gnome~1(c)) AND 
 (NOT libtre-dev~2(c)) AND 
 (libjlayer-java~1(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c) OR gcj-4.4-jre~2(c))) AND 
 (NOT python-comedilib~1(c)) AND 
 (mercurial-common~1(c) IMPLIES python~22(c) AND python-support~7(c)) AND 
 (NOT libpoe-api-peek-perl~2(c)) AND 
 (NOT libace-foxreactor-5.6.3~2(c)) AND 
 (NOT bless~1(c)) AND 
 (NOT libeditline0~1(c)) AND 
 (abicheck~1(c) IMPLIES perl(c)) AND 
 (NOT pulseaudio-module-raop~2(c)) AND 
 (NOT libossp-sa-dev~2(c)) AND 
 (NOT idjc~1(c)) AND 
 (NOT libgsf-bin~1(c)) AND 
 (NOT groff-base~3(c)) AND 
 (NOT libbenchmark-progressbar-perl~1(c)) AND 
 (NOT barrage~2(c)) AND 
 (libmusic-dev~1(c) IMPLIES libmusic1~1(c)) AND 
 (NOT ipw2200-modules-2.6.18-6-vserver-amd64~1(c)) AND 
 (libgetopt-declare-perl~2(c) IMPLIES perl(c)) AND 
 (NOT mbrola-us2~1(c)) AND 
 (NOT mirrordir~1(c)) AND 
 (NOT texworks~1(c)) AND 
 (NOT kdenetwork~3(c)) AND 
 (NOT mbrola-us1~1(c)) AND 
 (NOT fluidsynth-dssi~1(c)) AND 
 (NOT rsibreak~2(c)) AND 
 (NOT freeradius-iodbc~2(c)) AND 
 (NOT mono-mjs~4(c)) AND 
 (NOT kboincspy-dev~1(c)) AND 
 (NOT liblualib40~1(c)) AND 
 (NOT aufs-tools~1(c)) AND 
 (NOT cracklib-runtime~2(c)) AND 
 (NOT php5-curl~3(c)) AND 
 (NOT kwifimanager~2(c)) AND 
 (NOT python-zc.buildout~1(c)) AND 
 (NOT texlive-lang-ukenglish~2(c)) AND 
 (NOT docbook-mathml~1(c)) AND 
 (NOT geoclue-localnet~1(c)) AND 
 (NOT nuauth-extra~2(c)) AND 
 (NOT libedataserverui1.2-8~8(c)) AND 
 (NOT geany-plugin-lua~2(c)) AND 
 (NOT ttysnoop~2(c)) AND 
 (NOT libcupsimage2-dev~2(c)) AND 
 (NOT linux-image-2.6.24-etchnhalf.1-amd64~1(c)) AND 
 (NOT libplib1~2(c)) AND 
 (NOT libdirectfb-extra-dbg~1(c)) AND 
 (NOT mlterm-tools~2(c)) AND 
 (NOT londonlaw~1(c)) AND 
 (NOT libspread1~3(c)) AND 
 (cdda2wav~4(c) IMPLIES icedax(c)) AND 
 (NOT libxxf86dga1~1(c)) AND 
 (sgml-spell-checker~1(c) IMPLIES (sp(c) OR opensp(c)) AND aspell(c) AND sgmlspl(c) AND perl(c)) AND 
 (NOT libxml-parser-ruby1.8~1(c)) AND 
 (NOT mumps-test~1(c)) AND 
 (poppler-dbg~1(c) IMPLIES libpoppler4~1(c)) AND 
 (NOT libtemplates-parser11~1(c)) AND 
 (NOT libtemplates-parser10~1(c)) AND 
 (NOT libavcodec51~2(c)) AND 
 (NOT libuim-dev~3(c)) AND 
 (NOT blt-demo~2(c)) AND 
 (NOT tshark~4(c)) AND 
 (NOT texlive-omega~6(c)) AND 
 (NOT pngquant~2(c)) AND 
 (NOT scribus-ng~4(c)) AND 
 (NOT gaffitter~2(c)) AND 
 (libpt2.6.4-dbg~1(c) IMPLIES libpt2.6.4~2(c)) AND 
 (NOT libapreq2-dev~1(c)) AND 
 (NOT gnome-do~2(c)) AND 
 (NOT vuurmuur-conf~1(c)) AND 
 (libghc6-glut-prof~2(c) IMPLIES libghc6-glut-dev~3(c) AND ghc6-prof~12(c) AND ghc6-prof~12(c) AND libghc6-opengl-prof~2(c) AND libghc6-opengl-prof~2(c)) AND 
 (libnet-rblclient-perl~1(c) IMPLIES perl~69(c) AND libnet-dns-perl(c)) AND 
 (NOT libmono-oracle2.0-cil~1(c)) AND 
 (NOT libnet-google-perl~2(c)) AND 
 (NOT ifhp~2(c)) AND 
 (NOT libgd-noxpm-dev~2(c)) AND 
 (NOT snort-pgsql~1(c)) AND 
 (NOT inetutils-ftp~1(c)) AND 
 (python-clientcookie~2(c) IMPLIES python(c) AND python-central~22(c)) AND 
 (libglib2-ruby~4(c) IMPLIES libglib2-ruby1.8(c)) AND 
 (NOT avifile-utils~1(c)) AND 
 (NOT x11proto-core-dev~2(c)) AND 
 (NOT libblkid1~6(c)) AND 
 (NOT libtmail-ruby1.8~1(c)) AND 
 (NOT libelfsh0~1(c)) AND 
 (NOT ng-cjk~2(c)) AND 
 (NOT qrencode~1(c)) AND 
 (NOT apt-mirror~1(c)) AND 
 (NOT libclxclient3~1(c)) AND 
 (NOT libcinepaint0~2(c)) AND 
 (NOT edict-el~2(c)) AND 
 (NOT xfce4-netload-plugin~2(c)) AND 
 (NOT jablicator~1(c)) AND 
 (libmono-getoptions1.0-cil~2(c) IMPLIES libmono-corlib1.0-cil~3(c) AND libmono-system1.0-cil~6(c)) AND 
 (NOT python-zope.component~2(c)) AND 
 (NOT scorched3d~1(c)) AND 
 (NOT sdcc~5(c)) AND 
 (NOT om-patches~1(c)) AND 
 (NOT r-cran-rsprng~3(c)) AND 
 (NOT libdbix-class-timestamp-perl~2(c)) AND 
 (NOT libxfcegui4-4-dbg~1(c)) AND 
 (libnet-netmask-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT nuauth~1(c)) AND 
 (NOT ptex-jtex~2(c)) AND 
 (NOT libogginfo-ruby~1(c)) AND 
 (libjaxp1.3-java~3(c) IMPLIES (gcj-4.4-jre-headless~3(c) OR gcj-4.4-jre-headless~3(c) OR gcj-4.4-jre-headless~3(c) OR gcj-4.4-jre-headless~3(c))) AND 
 (NOT mailutils-pop3d~2(c)) AND 
 (NOT swi-prolog~1(c)) AND 
 (NOT libiksemel-utils~1(c)) AND 
 (NOT openser-perl-modules~1(c)) AND 
 (riece~1(c) IMPLIES (emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs~1(c))) AND 
 (NOT odccm~1(c)) AND 
 (NOT omake~3(c)) AND 
 (NOT libavcodec0d~2(c)) AND 
 (education-networked~1(c) IMPLIES education-tasks(c)) AND 
 (NOT mirror~2(c)) AND 
 (NOT r-cran-polspline~2(c)) AND 
 (NOT arptables~1(c)) AND 
 (NOT gcc-4.1-locales~1(c)) AND 
 (NOT phonon-backend-xine~2(c)) AND 
 (libhtmlentities-ruby1.8~1(c) IMPLIES ruby1.8(c)) AND 
 (libtest-mockmodule-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT liblwt-ocaml~1(c)) AND 
 (phpgroupware-sitemgr~1(c) IMPLIES (phpgroupware~2(c) OR phpgroupware~5(c))) AND 
 (NOT pwgen~1(c)) AND 
 (wbritish-small~1(c) IMPLIES debconf(c) AND (dictionaries-common~20(c) OR dictionaries-common~15(c)) AND (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c))) AND 
 (NOT batctl-dbg~1(c)) AND 
 (NOT libchasen2~2(c)) AND 
 (NOT dancer-services~1(c)) AND 
 (NOT libdbi-ocaml~1(c)) AND 
 (libwoodstox-java~1(c) IMPLIES openjdk-6-jre(c)) AND 
 (rplay-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT libgraphicsmagick1-dev~2(c)) AND 
 (NOT libxv-dev~2(c)) AND 
 (NOT elscreen~1(c)) AND 
 (NOT m4~5(c)) AND 
 (NOT ntp~4(c)) AND 
 (libclass-inspector-perl~5(c) IMPLIES perl~69(c)) AND 
 (NOT openafs-dbg~3(c)) AND 
 (NOT zlib1g-dbg~1(c)) AND 
 (NOT gnash-common-opengl~1(c)) AND 
 (NOT libggadget-gtk-1.0-0~3(c)) AND 
 (NOT python-kjbuckets~3(c)) AND 
 (NOT ladcca-bin~1(c)) AND 
 (NOT cramfsswap~2(c)) AND 
 (NOT awesome~3(c)) AND 
 (flashgot~1(c) IMPLIES xul-ext-flashgot(c)) AND 
 (NOT rdiff~1(c)) AND 
 (NOT libc6-dbg~1(c)) AND 
 (NOT dopewars~3(c)) AND 
 (NOT libpurple0~7(c)) AND 
 (NOT analog~4(c)) AND 
 (libgconf2-ruby~4(c) IMPLIES libgconf2-ruby1.8(c)) AND 
 (NOT libopencdk8-dev~1(c)) AND 
 (NOT libtest-fixme-perl~1(c)) AND 
 (python-dnspython~3(c) IMPLIES python(c) AND python-central~22(c)) AND 
 (realtime-lsm-source~1(c) IMPLIES kernel-package(c) AND debhelper(c) AND bzip2(c)) AND 
 (NOT sarg~4(c)) AND 
 (NOT kdirstat~1(c)) AND 
 (NOT nast~2(c)) AND 
 (NOT ri1.9.1~1(c)) AND 
 (NOT libgpds0~2(c)) AND 
 (NOT keymapper~1(c)) AND 
 (mktemp~3(c) IMPLIES (coreutils~20(c) OR coreutils~18(c))) AND 
 (NOT zope-atseng~1(c)) AND 
 (NOT liboggz1~3(c)) AND 
 (NOT openoffice.org-l10n-as-in~4(c)) AND 
 (vuurmuur-conf-dbg~1(c) IMPLIES vuurmuur-conf~1(c)) AND 
 (NOT nasm~2(c)) AND 
 (NOT python-evince~2(c)) AND 
 (NOT 9wm~2(c)) AND 
 (NOT libbit-vector-perl~1(c)) AND 
 (NOT ddskk~2(c)) AND 
 (NOT gpppon~2(c)) AND 
 (NOT murrine-themes~1(c)) AND 
 (NOT libdb4.8++-dev~1(c)) AND 
 (NOT libxcb-shape0-dev~2(c)) AND 
 (NOT libnss-db~3(c)) AND 
 (NOT libpam-cgroup~1(c)) AND 
 (NOT twoftpd-run~1(c)) AND 
 (NOT education-desktop-other~3(c)) AND 
 (NOT dwarves~1(c)) AND 
 (NOT libgnomedesktop2.20-cil~3(c)) AND 
 (NOT libxmu6~2(c)) AND 
 (NOT libopenusb0~1(c)) AND 
 (NOT libfnlib-dev~1(c)) AND 
 (NOT libavcodec-dev~3(c)) AND 
 (NOT sbox-dtc~2(c)) AND 
 (NOT kmflcomp~2(c)) AND 
 (NOT libnss-mdns~2(c)) AND 
 (NOT muscle~1(c)) AND 
 (NOT php4-sqlite3~1(c)) AND 
 (dlint~1(c) IMPLIES perl(c) AND dnsutils(c)) AND 
 (NOT libtemplate-multilingual-perl~1(c)) AND 
 (NOT lsb-printing~1(c)) AND 
 (NOT virtualbox-ose-guest-utils~4(c)) AND 
 (NOT sisu-complete~2(c)) AND 
 (NOT yarssr~2(c)) AND 
 (NOT libsasl2-modules-sql~2(c)) AND 
 (NOT ttf-farsiweb~2(c)) AND 
 (NOT libossp-uuid-dev~2(c)) AND 
 (NOT linux-igd~1(c)) AND 
 (NOT bindfs~1(c)) AND 
 (liblingua-en-inflect-number-perl~3(c) IMPLIES perl~69(c) AND liblingua-en-inflect-perl(c)) AND 
 (NOT libxml-atom-perl~5(c)) AND 
 (NOT qhull-bin~1(c)) AND 
 (NOT r-cran-mcmcpack~3(c)) AND 
 (NOT intltool~2(c)) AND 
 (NOT zephyr-clients~1(c)) AND 
 (NOT scribus~3(c)) AND 
 (NOT tmpreaper~1(c)) AND 
 (NOT libdatetime-perl~15(c)) AND 
 (NOT libgmerlin-dev~2(c)) AND 
 (NOT zope-cmftopic1.6~2(c)) AND 
 (NOT grdesktop~1(c)) AND 
 (NOT bzr-cvsps-import~1(c)) AND 
 (NOT squashfs-modules-2.6-xen-vserver-amd64~1(c)) AND 
 (NOT xmms-mpg123-ja~1(c)) AND 
 (NOT claws-mail~2(c)) AND 
 (NOT log2mail~2(c)) AND 
 (NOT stroq~2(c)) AND 
 (NOT coolkey~1(c)) AND 
 (NOT bitscope~2(c)) AND 
 (liblscp-dev~1(c) IMPLIES liblscp~1(c)) AND 
 (NOT typo3~2(c)) AND 
 (NOT telnet-ssl~3(c)) AND 
 (NOT xmms2-plugin-daap~3(c)) AND 
 (NOT libboost-wave1.39-dev~1(c)) AND 
 (NOT libxmpi4-dev~2(c)) AND 
 (NOT unfs3~1(c)) AND 
 (NOT ttf-larabie-straight~1(c)) AND 
 (NOT kenolaba~1(c)) AND 
 (NOT torcs-data~4(c)) AND 
 (NOT libchipcard-dev~1(c)) AND 
 (NOT libxml-tidy-perl~1(c)) AND 
 (NOT rpld~2(c)) AND 
 (NOT unixodbc-bin~3(c)) AND 
 (NOT libglib1.2~2(c)) AND 
 (NOT libxen-dev~1(c)) AND 
 (NOT libopencdk8-dbg~1(c)) AND 
 (NOT gs-common~9(c)) AND 
 (latexdiff~1(c) IMPLIES perl(c)) AND 
 (NOT libmysqlclient15off~4(c)) AND 
 (NOT libconvert-tnef-perl~2(c)) AND 
 (NOT konsolekalendar~1(c)) AND 
 (NOT keytouch~2(c)) AND 
 (dict-foldoc~1(c) IMPLIES (serpento~1(c) OR dictd~4(c) OR dictd(c))) AND 
 (NOT libclamav6~4(c)) AND 
 (NOT boxbackup-client~2(c)) AND 
 (python-dictdlib~2(c) IMPLIES python~22(c) AND python-central~22(c)) AND 
 (libqt3-java~1(c) IMPLIES libqt3-jni~2(c) AND libqt3-jni~2(c) AND (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c) OR gcj-4.4-jre~2(c) OR gij(c))) AND 
 (NOT libclamav5~4(c)) AND 
 (NOT r-base-dev~1(c)) AND 
 (NOT xfce4-session~6(c)) AND 
 (NOT libjackasyn0~1(c)) AND 
 (NOT info~6(c)) AND 
 (NOT libedata-cal1.2-6~2(c)) AND 
 (NOT libarts1-audiofile~2(c)) AND 
 (NOT libedata-cal1.2-5~2(c)) AND 
 (NOT libclamav2~4(c)) AND 
 (NOT squirrelmail-spam-buttons~1(c)) AND 
 (NOT wmsysmon~2(c)) AND 
 (NOT libstdc++6-4.3-pic~2(c)) AND 
 (NOT pulseaudio~8(c)) AND 
 (NOT python-webkit-dev~1(c)) AND 
 (NOT med-bio~1(c)) AND 
 (NOT thunderbird-gnome-support~2(c)) AND 
 (NOT mtop~2(c)) AND 
 (NOT t1-xfree86-nonfree~1(c)) AND 
 (NOT libglew1.5~3(c)) AND 
 (NOT nilfs2-tools~2(c)) AND 
 (NOT libxcb-shape0-dbg~2(c)) AND 
 (NOT libboo2.0-cil~2(c)) AND 
 (NOT libxfontcache1~2(c)) AND 
 (NOT libtest-base-perl~2(c)) AND 
 (NOT kscreensaver-xsavers-webcollage~3(c)) AND 
 (NOT libskstream-0.3-dev~3(c)) AND 
 (NOT mgltools-dejavu~1(c)) AND 
 (NOT pommed~4(c)) AND 
 (NOT source-highlight~1(c)) AND 
 (NOT dhcp~1(c)) AND 
 (NOT sawfish~9(c)) AND 
 (NOT education-desktop-sugar~2(c)) AND 
 (liblogback-java~1(c) IMPLIES libslf4j-java(c)) AND 
 (NOT r-cran-haplo.stats~1(c)) AND 
 (cupsys-driver-gimpprint~2(c) IMPLIES cupsys-driver-gutenprint~1(c)) AND 
 (NOT libpoldiff-dev~1(c)) AND 
 (NOT libkst1c2~2(c)) AND 
 (NOT nant~2(c)) AND 
 (python-zope.copy~1(c) IMPLIES python-pkg-resources(c) AND (python-zope.interface~2(c) OR python-zope.interface~2(c)) AND python-zope.interface(c) AND python(c) AND python-central~22(c)) AND 
 (rsnapshot~1(c) IMPLIES perl(c) AND rsync(c) AND logrotate(c)) AND 
 (NOT planet-venus~1(c)) AND 
 (libgruel-dev~1(c) IMPLIES libgruel0~1(c)) AND 
 (NOT libdesktop-notify-perl~1(c)) AND 
 (NOT moblin-panel-applications~1(c)) AND 
 (cl-kmrcl~2(c) IMPLIES common-lisp-controller~17(c) AND cl-rt(c)) AND 
 (NOT libmedimport-dev~2(c)) AND 
 (NOT htcheck-php~1(c)) AND 
 (NOT ktimetrace~1(c)) AND 
 (NOT gfortran-4.2-multilib~2(c)) AND 
 (NOT kpoker~2(c)) AND 
 (NOT conkeror-spawn-process-helper~2(c)) AND 
 (libcatalyst-manual-perl~1(c) IMPLIES perl(c)) AND 
 (NOT nano~2(c)) AND 
 (NOT libconfig-std-perl~1(c)) AND 
 (NOT libxml2-dev~18(c)) AND 
 (NOT usbip~1(c)) AND 
 (NOT libavahi-ui0.0-cil~1(c)) AND 
 (NOT maildrop~3(c)) AND 
 (NOT python-pycurl~2(c)) AND 
 (NOT python-gtkglext1~1(c)) AND 
 (NOT ttf-oriya-fonts~2(c)) AND 
 (libcoy-perl~2(c) IMPLIES perl~69(c) AND liblingua-en-inflect-perl(c)) AND 
 (libjaudiotagger-java~2(c) IMPLIES (gcj-4.4-jre-headless~3(c) OR gcj-4.4-jre-headless~3(c))) AND 
 (NOT libtemplate-declare-perl~3(c)) AND 
 (NOT libtinymailui-gtkhtml-1.0-0~2(c)) AND 
 (NOT parrot-minimal~1(c)) AND 
 (p10cfgd~2(c) IMPLIES netbase~24(c) AND (perl~69(c) OR perl~69(c)) AND update-inetd(c)) AND 
 (NOT plt-scheme~2(c)) AND 
 (NOT aubio-tools~2(c)) AND 
 (NOT glade-xfce~2(c)) AND 
 (NOT roundcube-mysql~2(c)) AND 
 (NOT clive-utils~1(c)) AND 
 (libmina-java~1(c) IMPLIES (gcj-4.4-jre-headless~3(c) OR gcj-4.4-jre-headless~3(c)) AND libslf4j-java(c)) AND 
 (NOT nana~2(c)) AND 
 (NOT blinkd~1(c)) AND 
 (NOT ara-byte~1(c)) AND 
 (NOT libapache2-mod-scgi~3(c)) AND 
 (NOT primer3~1(c)) AND 
 (NOT serpento~1(c)) AND 
 (NOT unixodbc-dev~4(c)) AND 
 (NOT libxmp2~2(c)) AND 
 (NOT liby2-14~3(c)) AND 
 (NOT medcon~2(c)) AND 
 (gnocatan-ai~1(c) IMPLIES pioneers-ai(c)) AND 
 (NOT libgtkdatabox-0.9.1-1~1(c)) AND 
 (NOT clojure~1(c)) AND 
 (NOT libmaloc1~1(c)) AND 
 (NOT libcroco3~2(c)) AND 
 (NOT libcommoncpp2-dev~5(c)) AND 
 (NOT libvibrant6-dev~2(c)) AND 
 (libnfnetlink1-dbg~1(c) IMPLIES libnfnetlink1~2(c)) AND 
 (NOT privoxy~1(c)) AND 
 (NOT samba-tools~3(c)) AND 
 (NOT libexpat-ocaml-dev~3(c)) AND 
 (NOT singularity~2(c)) AND 
 (NOT libatfs1~2(c)) AND 
 (NOT vdr-plugin-mplayer~1(c)) AND 
 (NOT caudium-perl~2(c)) AND 
 (NOT gretl-common~2(c)) AND 
 (x-dev~4(c) IMPLIES x11proto-core-dev(c)) AND 
 (NOT ejabberd~3(c)) AND 
 (NOT libtest-www-declare-perl~1(c)) AND 
 (NOT libglibmm-2.4-1c2a~7(c)) AND 
 (NOT ksysguardd~4(c)) AND 
 (libexporter-tidy-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT inkscape~1(c)) AND 
 (NOT ttf-umeplus~1(c)) AND 
 (NOT libchicken-dev~3(c)) AND 
 (NOT libwebkit-1.0-2~8(c)) AND 
 (NOT thunar-media-tags-plugin~3(c)) AND 
 (vcheck~2(c) IMPLIES perl(c) AND (libwww-perl~27(c) OR libwww-perl~20(c))) AND 
 (cl-pipes~1(c) IMPLIES common-lisp-controller~17(c)) AND 
 (NOT cairo-dock-dev~1(c)) AND 
 (NOT libgnetwork1.0-0~1(c)) AND 
 (NOT libxine1-plugins~2(c)) AND 
 (NOT libpoppler-qt4-dev~1(c)) AND 
 (NOT icom~1(c)) AND 
 (NOT lacheck~2(c)) AND 
 (NOT libboost-python1.39.0~2(c)) AND 
 (NOT amsynth~1(c)) AND 
 (NOT sendxmpp~2(c)) AND 
 (NOT libtcltk-ruby1.9.1~1(c)) AND 
 (NOT quinn-diff~1(c)) AND 
 (rnc-mode~1(c) IMPLIES (emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs~1(c))) AND 
 (NOT kiriki~1(c)) AND 
 (NOT libopensync0-dev~1(c)) AND 
 (NOT libavahi-glib1~4(c)) AND 
 (NOT bfilter~2(c)) AND 
 (NOT tk~4(c)) AND 
 (NOT libsetools-jni~1(c)) AND 
 (NOT libdballef4~1(c)) AND 
 (NOT libapache2-mod-lisp~1(c)) AND 
 (NOT libantlr-java-gcj~1(c)) AND 
 (NOT libopenhpi-dev~1(c)) AND 
 (NOT emboss~2(c)) AND 
 (NOT taggrepper~1(c)) AND 
 (NOT xineliboutput-sxfe~2(c)) AND 
 (NOT compiz-fusion-plugins-unsupported~1(c)) AND 
 (NOT tex-guy~1(c)) AND 
 (NOT imagemagick~12(c)) AND 
 (NOT lib32gomp1-dbg~2(c)) AND 
 (NOT libwine-ldap~1(c)) AND 
 (NOT pxlib1~2(c)) AND 
 (NOT gausssum~3(c)) AND 
 (NOT xmms-scrobbler~1(c)) AND 
 (NOT libhesiod-dev~1(c)) AND 
 (NOT kdepasswd~4(c)) AND 
 (NOT kanatest~2(c)) AND 
 (dist~2(c) IMPLIES perl(c) AND (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c))) AND 
 (NOT libwebservice-validator-css-w3c-perl~1(c)) AND 
 (NOT xfce4-cpugraph-plugin~1(c)) AND 
 (NOT libodbcinstq1c2~3(c)) AND 
 (NOT wmpuzzle~2(c)) AND 
 (libcommons-collections3-java~3(c) IMPLIES (gcj-4.4-jre-headless~3(c) OR gcj-4.4-jre-headless~3(c) OR gcj-4.4-jre-headless~3(c) OR gcj-4.4-jre-headless~3(c))) AND 
 (NOT libpangomm-1.4-doc~1(c)) AND 
 (NOT bochs-sdl~3(c)) AND 
 (NOT kdesdk-kio-plugins~2(c)) AND 
 (NOT libkinosearch-perl~1(c)) AND 
 (NOT nbtscan~2(c)) AND 
 (NOT science-imageanalysis~1(c)) AND 
 (NOT libnucleus6-dev~2(c)) AND 
 (NOT libmono0~10(c)) AND 
 (libextlib-ruby1.9~2(c) IMPLIES ruby1.9(c)) AND 
 (libextlib-ruby1.8~2(c) IMPLIES ruby1.8(c)) AND 
 (libphp-phplayersmenu~2(c) IMPLIES (libapache-mod-php5(c) OR libapache2-mod-php5(c))) AND 
 (NOT liblua5.1-socket2~2(c)) AND 
 (NOT libaudiere-1.9.4~1(c)) AND 
 (NOT libjinglexmpp0.3-dev~1(c)) AND 
 (NOT python-libxml2~4(c)) AND 
 (NOT gnurobbo~3(c)) AND 
 (album~1(c) IMPLIES perl(c) AND (imagemagick(c) OR graphicsmagick-imagemagick-compat~2(c))) AND 
 (NOT wise~1(c)) AND 
 (NOT gchangepass~1(c)) AND 
 (NOT gtk-sharp2-gapi~3(c)) AND 
 (NOT rhythmbox-dbg~1(c)) AND 
 (NOT liblink-grammar4-dev~2(c)) AND 
 (NOT scim~5(c)) AND 
 (NOT libgtkmm-2.4-dbg~1(c)) AND 
 (NOT xserver-xorg-video-chips~2(c)) AND 
 (NOT monopd~2(c)) AND 
 (NOT elvis-tools~1(c)) AND 
 (NOT libwvstreams4.4-qt~1(c)) AND 
 (NOT nail~2(c)) AND 
 (libgd-graph-perl~3(c) IMPLIES libgd-text-perl~3(c)) AND 
 (NOT libphp-phplot~1(c)) AND 
 (NOT libdb4.4-tcl~1(c)) AND 
 (NOT libsundials-kinsol0~1(c)) AND 
 (libpoe-test-loops-perl~1(c) IMPLIES perl(c)) AND 
 (NOT libghc6-haskelldb-hdbc-sqlite3-dev~1(c)) AND 
 (NOT libsane-extras-dev~5(c)) AND 
 (NOT libitl-dev~1(c)) AND 
 (python-pyepl-common~2(c) IMPLIES python(c)) AND 
 (NOT libcpufreq-dev~3(c)) AND 
 (NOT ftplib3~4(c)) AND 
 (NOT kiconedit~1(c)) AND 
 (libspiffy-perl~5(c) IMPLIES perl~69(c) AND libfilter-perl(c) AND libscalar-list-utils-perl(c)) AND 
 (NOT rancid-cgi~1(c)) AND 
 (NOT gpsim-lcd-graphic~2(c)) AND 
 (NOT libgtkxmhtml-perl~1(c)) AND 
 (NOT libxml-light-ocaml-dev~1(c)) AND 
 (NOT libebook1.2-9~8(c)) AND 
 (NOT simgear1.9.1~2(c)) AND 
 (NOT liblua5.1-rex-onig0~1(c)) AND 
 (etktab~1(c) IMPLIES tk8.4(c)) AND 
 (NOT vdr-plugin-bitstreamout~3(c)) AND 
 (NOT libvirt-ruby~1(c)) AND 
 (NOT libxcb-aux0~6(c)) AND 
 (NOT vrweb~1(c)) AND 
 (NOT libguichan-allegro-0.8.1-1~1(c)) AND 
 (NOT libopensync0-dbg~1(c)) AND 
 (NOT mpeglib~5(c)) AND 
 (NOT pbuilder~1(c)) AND 
 (NOT libdap10~1(c)) AND 
 (NOT scim-anthy~1(c)) AND 
 (NOT liblog4cpp5~1(c)) AND 
 (NOT liblog4cpp4~1(c)) AND 
 (NOT librest-dev~1(c)) AND 
 (NOT skksearch~2(c)) AND 
 (NOT fuseiso9660~1(c)) AND 
 (NOT libglobus-ftp-client1~1(c)) AND 
 (libcatalyst-plugin-session-fastmmap-perl~1(c) IMPLIES perl~69(c) AND libcache-fastmmap-perl(c) AND liburi-find-perl(c) AND libclass-data-inheritable-perl(c) AND libclass-accessor-perl(c)) AND 
 (NOT inetutils-inetd~3(c)) AND 
 (NOT linux-patch-debianlogo~1(c)) AND 
 (NOT resample~2(c)) AND 
 (NOT xprint-utils~1(c)) AND 
 (NOT php5-pgsql~3(c)) AND 
 (NOT libplexus-velocity-java~1(c)) AND 
 (cl-rsm-mod~1(c) IMPLIES common-lisp-controller~17(c)) AND 
 (NOT aumix~1(c)) AND 
 (NOT python-gpgme-dbg~1(c)) AND 
 (NOT coreutils~20(c)) AND 
 (NOT phpgroupware-0.9.16-news-admin~1(c)) AND 
 (NOT systeminstaller~1(c)) AND 
 (NOT python-ipy~2(c)) AND 
 (NOT libsdl-ocaml~2(c)) AND 
 (NOT libmercator-0.2-6-dbg~1(c)) AND 
 (NOT dynare-matlab~2(c)) AND 
 (NOT libnss-ldapd~3(c)) AND 
 (NOT torus-trooper-pure~1(c)) AND 
 (NOT libevent-extra-1.4-2~1(c)) AND 
 (NOT tex-common~15(c)) AND 
 (NOT wipe~1(c)) AND 
 (NOT guile-pg~1(c)) AND 
 (NOT root-plugin-net-xrootd~1(c)) AND 
 (NOT consolekit~4(c)) AND 
 (NOT libksgrd4~2(c)) AND 
 (NOT libspreadsheet-writeexcel-perl~3(c)) AND 
 (NOT knotes~7(c)) AND 
 (NOT libpam-krb5~1(c)) AND 
 (NOT pike7.6-pexts-geoip~1(c)) AND 
 (NOT ruby-gnome2~2(c)) AND 
 (NOT libdvdplay0-dev~1(c)) AND 
 (NOT avifile-player~1(c)) AND 
 (NOT sork-forwards-h3~2(c)) AND 
 (NOT php-kolab-filter~1(c)) AND 
 (NOT libmgl5~1(c)) AND 
 (libdkim0d-dbg~1(c) IMPLIES libdkim0d~1(c)) AND 
 (NOT spong-common~2(c)) AND 
 (NOT blacs-pvm-test~2(c)) AND 
 (NOT libapiextractor-dbg~1(c)) AND 
 (NOT mono-xbuild~3(c)) AND 
 (NOT erlang-crypto~2(c)) AND 
 (NOT tardy~2(c)) AND 
 (NOT xsupplicant~1(c)) AND 
 (NOT libgmythupnp-dev~1(c)) AND 
 (NOT libgsmsd7~2(c)) AND 
 (kwalify~1(c) IMPLIES ruby~8(c)) AND 
 (NOT libloudmouth1-dev~1(c)) AND 
 (NOT sqlite3~1(c)) AND 
 (NOT libphysfs1~3(c)) AND 
 (NOT libstfl-dev~1(c)) AND 
 (libmail-sender-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT glusterfs-client~1(c)) AND 
 (NOT viruskiller~2(c)) AND 
 (NOT libartsc0-dev~4(c)) AND 
 (NOT liblazy1~2(c)) AND 
 (NOT libnet-openid-server-perl~2(c)) AND 
 (python-myghty~2(c) IMPLIES python-support~7(c) AND python(c)) AND 
 (NOT libexception-class-perl~7(c)) AND 
 (NOT libxau6-dbg~2(c)) AND 
 (NOT libibverbs1-dbg~3(c)) AND 
 (NOT convertall~1(c)) AND 
 (NOT debtags-edit~1(c)) AND 
 (NOT logcheck~6(c)) AND 
 (NOT bind9utils~2(c)) AND 
 (NOT libpam-radius-auth~2(c)) AND 
 (NOT libgnome-vfsmm-2.6-1c2a~3(c)) AND 
 (NOT krossruby~1(c)) AND 
 (NOT libgiigic1~2(c)) AND 
 (libslf4j-java~2(c) IMPLIES (gcj-4.4-jre-headless~3(c) OR gcj-4.4-jre-headless~3(c))) AND 
 (NOT libsane-extras-dbg~5(c)) AND 
 (NOT libzzip-0-13~3(c)) AND 
 (NOT biblatex-dw~1(c)) AND 
 (ding~2(c) IMPLIES (tk8.5~3(c) OR tk8.5~3(c) OR tk8.4~5(c) OR tk8.4(c))) AND 
 (NOT libvrb0~1(c)) AND 
 (wbritish-huge~1(c) IMPLIES debconf(c) AND (dictionaries-common~20(c) OR dictionaries-common~15(c)) AND (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c))) AND 
 (NOT mime-construct~2(c)) AND 
 (NOT slang-sqlite~1(c)) AND 
 (NOT libepc-1.0-2~2(c)) AND 
 (NOT ncftp~3(c)) AND 
 (NOT pygmy~2(c)) AND 
 (NOT wims~1(c)) AND 
 (NOT bitcollider-plugins~1(c)) AND 
 (qcad-doc~1(c) IMPLIES qt3-assistant(c)) AND 
 (NOT gambas2~1(c)) AND 
 (NOT libglibmm-2.4-1c2a-dbg~1(c)) AND 
 (NOT python2.5-examples~3(c)) AND 
 (NOT libg15render-dev~1(c)) AND 
 (NOT libprelude-perl~1(c)) AND 
 (NOT libpcapnav0-dev~1(c)) AND 
 (NOT libcoveb1~1(c)) AND 
 (NOT lib32gcc1~10(c)) AND 
 (NOT libbusiness-isbn-perl~1(c)) AND 
 (NOT wmdrawer~2(c)) AND 
 (NOT libgnatvsn4.3-dbg~1(c)) AND 
 (liblogger-syslog-perl~1(c) IMPLIES (perl~69(c) OR perl~69(c)) AND perl~69(c)) AND 
 (NOT texlive-lang-french~2(c)) AND 
 (NOT nag2~2(c)) AND 
 (NOT pulseaudio-module-gconf~3(c)) AND 
 (NOT libadasockets-dev~2(c)) AND 
 (NOT jftpgw~1(c)) AND 
 (NOT widelands-data~1(c)) AND 
 (NOT lxpanel-netstat-plugin~2(c)) AND 
 (NOT xpilot-ng-common~1(c)) AND 
 (libmime-charset-perl~2(c) IMPLIES perl(c)) AND 
 (NOT libsubtitleeditor0~1(c)) AND 
 (NOT xserver-xorg-input-aiptek~1(c)) AND 
 (libstonith0~4(c) IMPLIES heartbeat~3(c)) AND 
 (NOT libhal-dev~4(c)) AND 
 (NOT libxcb-reply0-dev~1(c)) AND 
 (libbcmail-java~2(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c)) AND libgnumail-java(c) AND libgnujaf-java(c)) AND 
 (NOT tvtime~2(c)) AND 
 (NOT libopencascade-ocaf-lite-6.3.0~1(c)) AND 
 (NOT vdr-plugin-dvd~2(c)) AND 
 (NOT kmailcvt~2(c)) AND 
 (NOT libworldwind-java~1(c)) AND 
 (NOT tetrinet-server~1(c)) AND 
 (NOT sms-pl~1(c)) AND 
 (NOT multi-gnome-terminal~1(c)) AND 
 (NOT php-net-sieve~2(c)) AND 
 (NOT tessa-mpi~1(c)) AND 
 (NOT xfburn~2(c)) AND 
 (NOT worker~4(c)) AND 
 (libipc-shareable-perl~1(c) IMPLIES perl~69(c) AND perl~69(c)) AND 
 (NOT gxineplugin~1(c)) AND 
 (NOT omnievents~2(c)) AND 
 (NOT libhugs-testpack~1(c)) AND 
 (NOT libmpich-shmem1.0-dev~1(c)) AND 
 (NOT planets~1(c)) AND 
 (NOT tkinfo~2(c)) AND 
 (NOT libcloog-ppl0~2(c)) AND 
 (NOT librcd0~1(c)) AND 
 (NOT mrd6~1(c)) AND 
 (NOT python-reportlab-accel-dbg~1(c)) AND 
 (NOT libsgutils2-dev~1(c)) AND 
 (NOT libmagic1~3(c)) AND 
 (NOT libosso-dev~1(c)) AND 
 (NOT ivritex~1(c)) AND 
 (NOT kxsldbg~4(c)) AND 
 (libstring-random-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT sympa~2(c)) AND 
 (python-zope.cachedescriptors~1(c) IMPLIES python-pkg-resources(c) AND (python-zope.interface~2(c) OR python-zope.interface~2(c)) AND python(c) AND python-central~22(c)) AND 
 (NOT jmpost~1(c)) AND 
 (NOT phaseshift~1(c)) AND 
 (NOT virt-what~1(c)) AND 
 (NOT compiz-dev~1(c)) AND 
 (NOT shutter~1(c)) AND 
 (NOT asterisk-oh323~2(c)) AND 
 (NOT nabi~2(c)) AND 
 (cl-cclan~1(c) IMPLIES common-lisp-controller(c)) AND 
 (NOT libghc6-edison-core-dev~2(c)) AND 
 (NOT libcache-apt-perl~4(c)) AND 
 (NOT libparmetis3.1~1(c)) AND 
 (NOT freepops-updater-gnome~1(c)) AND 
 (NOT snarf~1(c)) AND 
 (NOT boinc-manager~1(c)) AND 
 (NOT mono-gac~6(c)) AND 
 (NOT openoffice.org-emailmerge~2(c)) AND 
 (NOT octave-linear-algebra~2(c)) AND 
 (libsvm2-java~1(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c) OR gcj-4.4-jre~2(c) OR gij(c))) AND 
 (NOT monodoc-http~3(c)) AND 
 (NOT python-gnome2-extras~14(c)) AND 
 (libbreakpoint-ruby~2(c) IMPLIES libbreakpoint-ruby1.8(c)) AND 
 (NOT gradm2~5(c)) AND 
 (NOT i3-wm-dbg~1(c)) AND 
 (libui-dialog-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT netcdfg-dev~1(c)) AND 
 (openoffice.org-hyphenation-en-us~1(c) IMPLIES (dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c))) AND 
 (NOT python-magic~1(c)) AND 
 (NOT libattr1-dev~3(c)) AND 
 (NOT attal~3(c)) AND 
 (NOT amora-server~1(c)) AND 
 (NOT python-pyvorbis-dbg~1(c)) AND 
 (NOT python-debianbts~2(c)) AND 
 (NOT bnetd~2(c)) AND 
 (NOT liblua5.1-expat-dev~2(c)) AND 
 (NOT libapache2-mod-perl2~11(c)) AND 
 (NOT libcsiro0~4(c)) AND 
 (NOT ktalkd~2(c)) AND 
 (sml-mode~2(c) IMPLIES (emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs~1(c))) AND 
 (NOT kinfocenter~1(c)) AND 
 (NOT licq-plugin-msn~2(c)) AND 
 (NOT rephrase~1(c)) AND 
 (NOT gcc-4.4~3(c)) AND 
 (NOT libwww-indexparser-perl~1(c)) AND 
 (NOT gtk-im-libthai~1(c)) AND 
 (NOT atlas3-base-dev~1(c)) AND 
 (NOT chm2pdf~1(c)) AND 
 (NOT liblv2dynparam1-dev~1(c)) AND 
 (NOT libs3dw2~3(c)) AND 
 (NOT libalias-perl~2(c)) AND 
 (NOT blacs-lam-dev~2(c)) AND 
 (NOT heartbeat~5(c)) AND 
 (NOT libargtable2-0~3(c)) AND 
 (NOT ltrace~2(c)) AND 
 (NOT libtaskmanager4~2(c)) AND 
 (NOT darcs-monitor~2(c)) AND 
 (NOT gnome-brave-icon-theme~1(c)) AND 
 (NOT mutt~3(c)) AND 
 (NOT libakonadi2.2-cil~1(c)) AND 
 (NOT libxcb-icccm0-dev~1(c)) AND 
 (NOT udev~24(c)) AND 
 (NOT libmpdclient2~1(c)) AND 
 (NOT libghc6-zlib-prof~1(c)) AND 
 (NOT libdkim0d~1(c)) AND 
 (NOT libpth-dev~2(c)) AND 
 (balsa-dbg~2(c) IMPLIES balsa~3(c)) AND 
 (NOT kruler~3(c)) AND 
 (NOT kwirelessmonitor~1(c)) AND 
 (NOT liblua5.1-expat0~1(c)) AND 
 (NOT libxml-atom-service-perl~1(c)) AND 
 (NOT smtpd~1(c)) AND 
 (xchat-common~2(c) IMPLIES gconf2~7(c)) AND 
 (NOT spong-www~1(c)) AND 
 (NOT euro-support~1(c)) AND 
 (NOT cyrus-sasl2-heimdal-dbg~2(c)) AND 
 (NOT libdockapp2~1(c)) AND 
 (NOT nuauth-log-mysql~2(c)) AND 
 (NOT libicq2000c2~1(c)) AND 
 (NOT libvtkgdcm-cil~1(c)) AND 
 (NOT gimp-resynthesizer~1(c)) AND 
 (NOT cpuid~1(c)) AND 
 (NOT mercurial~3(c)) AND 
 (NOT netdiag~1(c)) AND 
 (NOT winff~1(c)) AND 
 (NOT haskell-platform-doc~1(c)) AND 
 (NOT gstreamer0.8-mms~2(c)) AND 
 (NOT genius~1(c)) AND 
 (cecilia~1(c) IMPLIES csound~4(c) AND tk8.4(c)) AND 
 (NOT apticron~1(c)) AND 
 (NOT libcaca0~4(c)) AND 
 (NOT mayavi2~2(c)) AND 
 (NOT libiv1~2(c)) AND 
 (NOT tao-ft~1(c)) AND 
 (NOT bacula-director-pgsql~1(c)) AND 
 (libwirble-ruby1.8~1(c) IMPLIES ruby1.8(c) AND rubygems1.8(c)) AND 
 (NOT libopal-2.2-develop~2(c)) AND 
 (NOT libmono1.0-cil~6(c)) AND 
 (libjexcelapi-java~2(c) IMPLIES (gcj-4.4-jre-headless~3(c) OR gcj-4.4-jre-headless~3(c))) AND 
 (NOT sgt-puzzles~1(c)) AND 
 (NOT update-inetd~3(c)) AND 
 (NOT libdlmcontrol3~1(c)) AND 
 (NOT unrar-free~2(c)) AND 
 (NOT kpilot~1(c)) AND 
 (NOT libusb++-dev~2(c)) AND 
 (NOT dhcp-relay~1(c)) AND 
 (NOT libdbus-glib-1-2~6(c)) AND 
 (NOT libroot-graf2d-graf5.24~2(c)) AND 
 (NOT iceowl-extension~1(c)) AND 
 (ocamlwc~1(c) IMPLIES (ocaml-base-nox~4(c) OR ocaml-base-nox~4(c))) AND 
 (NOT openoffice.org-dev~4(c)) AND 
 (NOT libstatistics-test-randomwalk-perl~1(c)) AND 
 (NOT libpangomm-1.4-dbg~1(c)) AND 
 (NOT tdb-tools~1(c)) AND 
 (NOT trashapplet~1(c)) AND 
 (NOT mlock~3(c)) AND 
 (NOT libtidy-ruby~1(c)) AND 
 (cl-md5~1(c) IMPLIES common-lisp-controller~17(c)) AND 
 (latex-xcolor~3(c) IMPLIES texlive-latex-recommended(c)) AND 
 (NOT icedax~2(c)) AND 
 (education-laptop~2(c) IMPLIES education-tasks~2(c)) AND 
 (NOT osirismd~1(c)) AND 
 (NOT xulrunner~2(c)) AND 
 (NOT libwine-gl-unstable~2(c)) AND 
 (NOT libmultisync-plugin-irmc~1(c)) AND 
 (NOT samba-common~5(c)) AND 
 (NOT drscheme~4(c)) AND 
 (libmono-system-ldap2.0-cil~5(c) IMPLIES (libmono-corlib2.0-cil~6(c) OR libmono-corlib2.0-cil~10(c)) AND libmono-ldap2.0-cil~7(c) AND libmono-system2.0-cil~13(c)) AND 
 (NOT mpd~4(c)) AND 
 (NOT octave-bim~1(c)) AND 
 (NOT phpunit2~1(c)) AND 
 (NOT glabels-dev~1(c)) AND 
 (NOT libboost-math1.39.0~1(c)) AND 
 (NOT vamp-examples~1(c)) AND 
 (NOT libx11-dev~7(c)) AND 
 (NOT wiipdf~1(c)) AND 
 (libcolor-tools-ruby1.8~1(c) IMPLIES ruby1.8(c)) AND 
 (NOT grub-common~2(c)) AND 
 (NOT libcvs-perl~2(c)) AND 
 (NOT abiword-plugin-goffice~2(c)) AND 
 (NOT libgdcm-java~1(c)) AND 
 (NOT beidgui~1(c)) AND 
 (NOT login~2(c)) AND 
 (NOT scalapack-pvm-test~3(c)) AND 
 (NOT libgruel0~1(c)) AND 
 (NOT libcucul-dev~1(c)) AND 
 (NOT gnome-utils~11(c)) AND 
 (NOT libdrm-dev~1(c)) AND 
 (NOT libghc6-configfile-dev~1(c)) AND 
 (libcaca-dev~4(c) IMPLIES libcaca0~7(c) AND libncurses5-dev(c) AND libslang2-dev(c)) AND 
 (NOT kism3d~2(c)) AND 
 (reseed~2(c) IMPLIES libwww-perl(c)) AND 
 (NOT wv~3(c)) AND 
 (NOT freeradius~4(c)) AND 
 (python-nipy-doc~2(c) IMPLIES libjs-jquery(c)) AND 
 (NOT bochs-x~3(c)) AND 
 (NOT ttf-bengali-fonts~2(c)) AND 
 (NOT debconf~38(c)) AND 
 (NOT sipsak~2(c)) AND 
 (haml-elisp~1(c) IMPLIES (emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs~1(c) OR emacs(c))) AND 
 (libmp3spi-java~1(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c) OR gcj-4.4-jre~2(c))) AND 
 (musixtex-slurps~3(c) IMPLIES texlive-base-bin(c)) AND 
 (NOT fwlogwatch~2(c)) AND 
 (NOT libglu1-xorg~1(c)) AND 
 (NOT libnzb-dev~2(c)) AND 
 (NOT wesnoth-thot~3(c)) AND 
 (NOT libgtkglarea0.0-cil~1(c)) AND 
 (NOT libgalago-gtk-dev~3(c)) AND 
 (NOT harvestman~1(c)) AND 
 (NOT bash-minimal~2(c)) AND 
 (NOT libsigc++-1.2-dev~2(c)) AND 
 (NOT rrdtool-dbg~1(c)) AND 
 (NOT gnome-color-chooser~1(c)) AND 
 (NOT gtkrsync~1(c)) AND 
 (libnet-domain-tld-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT heartbeat-2~1(c)) AND 
 (NOT libpaper1~2(c)) AND 
 (NOT flickcurl-utils~1(c)) AND 
 (mysql-server~7(c) IMPLIES (mysql-server-5.0(c) OR mysql-server-5.1~2(c))) AND 
 (NOT dglog~1(c)) AND 
 (NOT achilles~1(c)) AND 
 (NOT ydpdict~1(c)) AND 
 (NOT linux-patch-xenomai~1(c)) AND 
 (NOT libppl7~3(c)) AND 
 (NOT bbappconf~1(c)) AND 
 (NOT webgen0.4~1(c)) AND 
 (NOT libwine-oss-unstable~1(c)) AND 
 (NOT libgv-tcl~1(c)) AND 
 (debconf-utils~2(c) IMPLIES (debconf~35(c) OR debconf~38(c))) AND 
 (NOT lp-solve~3(c)) AND 
 (NOT gsynaptics~1(c)) AND 
 (NOT gpomme~1(c)) AND 
 (firefox-sage~1(c) IMPLIES (iceweasel~16(c) OR iceweasel~5(c))) AND 
 (NOT dict~2(c)) AND 
 (NOT libts-0.0-0~3(c)) AND 
 (NOT fte-console~3(c)) AND 
 (NOT vm~3(c)) AND 
 (NOT libmumps-dev~1(c)) AND 
 (NOT orbital-eunuchs-sniper~2(c)) AND 
 (NOT guile-db~1(c)) AND 
 (NOT gnote~2(c)) AND 
 (NOT scanssh~2(c)) AND 
 (NOT triangle-bin~1(c)) AND 
 (NOT libtonezone-dev~2(c)) AND 
 (NOT libgearman-server-dev~2(c)) AND 
 (NOT rebuildd~1(c)) AND 
 (NOT kile-i18n~1(c)) AND 
 (NOT libgtkdatabox-0.9.0-1~1(c)) AND 
 (NOT liblua5.1-rex-pcre-dev~1(c)) AND 
 (openoffice.org-dbg~4(c) IMPLIES (cli-uno-bridge~3(c) OR openoffice.org-calc~12(c))) AND 
 (NOT shfs-source~1(c)) AND 
 (NOT libacl1-dev~2(c)) AND 
 (NOT libsqlite-tcl~1(c)) AND 
 (NOT libsynce0-dev~2(c)) AND 
 (NOT wicd~1(c)) AND 
 (NOT toolame~1(c)) AND 
 (NOT easyspice~1(c)) AND 
 (libggadget-gtk-1.0-dev~2(c) IMPLIES libggadget-gtk-1.0-0~3(c)) AND 
 (NOT libopenhpi2~2(c)) AND 
 (libterm-readline-perl-perl~2(c) IMPLIES libterm-readkey-perl(c) AND perl(c)) AND 
 (NOT python-pymad~2(c)) AND 
 (libtempura-ruby1.8~1(c) IMPLIES libruby1.8~5(c) AND libruby1.8~5(c)) AND 
 (NOT libhugs-hslogger~2(c)) AND 
 (NOT tryton-modules-product~1(c)) AND 
 (latex-cjk-common~1(c) IMPLIES tetex-base~16(c) AND texlive-base-bin(c)) AND 
 (libcapture-tiny-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT libgloox7~1(c)) AND 
 (NOT libtracker-gtk-dev~1(c)) AND 
 (NOT libgloox4~1(c)) AND 
 (NOT libboost-python1.38.0~2(c)) AND 
 (NOT fp-units-rtl~1(c)) AND 
 (NOT libbrlapi-jni~1(c)) AND 
 (NOT pcmanfm~1(c)) AND 
 (NOT foomatic-gui~2(c)) AND 
 (NOT python-svn-dbg~1(c)) AND 
 (NOT liblrdf0-dev~1(c)) AND 
 (NOT kolourpaint~1(c)) AND 
 (NOT libgstfarsight0.10-0~5(c)) AND 
 (mozilla-venkman~5(c) IMPLIES (icedove(c) OR iceweasel(c))) AND 
 (NOT qelectrotech~2(c)) AND 
 (NOT libpanel-applet2-ruby1.8-dbg~1(c)) AND 
 (NOT apcupsd-cgi~1(c)) AND 
 (NOT renpy-demo~1(c)) AND 
 (NOT tk-tile~1(c)) AND 
 (NOT nslint~2(c)) AND 
 (NOT scim-kmfl-imengine~1(c)) AND 
 (NOT ibod~1(c)) AND 
 (NOT libactiveldap-ruby1.8~2(c)) AND 
 (NOT nwall~1(c)) AND 
 (NOT libmecab-ruby~1(c)) AND 
 (NOT claws-mail-plugins~1(c)) AND 
 (education-workstation~2(c) IMPLIES education-tasks~2(c)) AND 
 (NOT iptraf~2(c)) AND 
 (dbconfig-common~13(c) IMPLIES ucf(c) AND (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c))) AND 
 (NOT hal-device-manager~1(c)) AND 
 (NOT hunt~1(c)) AND 
 (NOT libgtk1.2-doc~1(c)) AND 
 (NOT ipw3945-modules-2.6-vserver-amd64~1(c)) AND 
 (NOT libsvn-java~2(c)) AND 
 (NOT libcgicc5~2(c)) AND 
 (NOT ekeyd-uds~1(c)) AND 
 (NOT pipsecd~1(c)) AND 
 (NOT python-yaml-dbg~1(c)) AND 
 (NOT chrootuid~1(c)) AND 
 (NOT webauth-utils~2(c)) AND 
 (NOT tao-log~1(c)) AND 
 (NOT libbickley-dev~1(c)) AND 
 (NOT libcurl-ocaml~1(c)) AND 
 (NOT happydigger~1(c)) AND 
 (NOT mozilla-thunderbird-enigmail~2(c)) AND 
 (NOT libcompfaceg1~2(c)) AND 
 (NOT ktorrent-dbg~2(c)) AND 
 (NOT libpfqueue0~2(c)) AND 
 (ssh-krb5~3(c) IMPLIES openssh-client(c) AND openssh-server(c)) AND 
 (NOT minbif~2(c)) AND 
 (NOT librep9~12(c)) AND 
 (NOT libghc6-harp-dev~2(c)) AND 
 (NOT mbrola-sw2~1(c)) AND 
 (NOT libkrb5-25-heimdal~1(c)) AND 
 (NOT lsmbox~2(c)) AND 
 (NOT mbrola-sw1~1(c)) AND 
 (NOT libnetfilter-conntrack-dev~2(c)) AND 
 (libvcs-lite-perl~3(c) IMPLIES perl~69(c) AND libalgorithm-diff-perl~4(c)) AND 
 (NOT libtrace-tools~1(c)) AND 
 (NOT libhtml-wikiconverter-perl~1(c)) AND 
 (NOT libfile-find-rule-perl~8(c)) AND 
 (NOT libssl-ocaml-dev~1(c)) AND 
 (NOT libsnmp-dev~2(c)) AND 
 (NOT libsane~7(c)) AND 
 (NOT strongswan-nm~1(c)) AND 
 (NOT avifile-divx-plugin~3(c)) AND 
 (NOT pcmanx-gtk2~1(c)) AND 
 (NOT sfftw2~2(c)) AND 
 (NOT libnet-jabber-loudmouth-perl~1(c)) AND 
 (libdifflcs-ruby~1(c) IMPLIES libdifflcs-ruby1.8(c)) AND 
 (NOT libxml-parser-lite-tree-perl~3(c)) AND 
 (NOT libuim6-dbg~1(c)) AND 
 (NOT libmtp-dev~1(c)) AND 
 (NOT fujiplay~1(c)) AND 
 (NOT libcanna1g-dev~2(c)) AND 
 (NOT libmagickcore2~1(c)) AND 
 (NOT vim-gnome~5(c)) AND 
 (NOT libgts-0.7-5~3(c)) AND 
 (NOT graphviz-dev~3(c)) AND 
 (NOT libhttp-ocaml-dev~1(c)) AND 
 (NOT libjack-dev~1(c)) AND 
 (NOT libemail-date-perl~1(c)) AND 
 (libnagios-object-perl~2(c) IMPLIES perl(c)) AND 
 (NOT skkfep~1(c)) AND 
 (cl-lml~1(c) IMPLIES common-lisp-controller~17(c)) AND 
 (NOT libaspell15c2~1(c)) AND 
 (NOT libextractor-plugins~1(c)) AND 
 (NOT libima-dbi-perl~3(c)) AND 
 (NOT open.app~2(c)) AND 
 (NOT libapache-mod-geoip~1(c)) AND 
 (NOT liblineak-dev~1(c)) AND 
 (NOT libwebkdc-perl~1(c)) AND 
 (NOT libmeep-dev~1(c)) AND 
 (NOT libg15daemon-client-dev~1(c)) AND 
 (libperl6-say-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT hat-ghc6~2(c)) AND 
 (NOT prips~1(c)) AND 
 (NOT ia32-libs~4(c)) AND 
 (NOT evolution-jescs~3(c)) AND 
 (libicq2000-dev~1(c) IMPLIES libicq2000c2~1(c) AND libsigc++-dev(c)) AND 
 (NOT libgstreamer-perl~3(c)) AND 
 (NOT libemail-messageid-perl~2(c)) AND 
 (NOT r-cran-rgl~2(c)) AND 
 (NOT asciijump~1(c)) AND 
 (NOT libglfw-dev~1(c)) AND 
 (NOT libwine-print~1(c)) AND 
 (NOT libgcrypt11-dev~4(c)) AND 
 (NOT libclucene0ldbl~2(c)) AND 
 (libnetpbm10-dev~2(c) IMPLIES libnetpbm10(c)) AND 
 (kvirc-data~2(c) IMPLIES kvirc~3(c)) AND 
 (NOT sooperlooper~1(c)) AND 
 (NOT xfonts-base~7(c)) AND 
 (NOT gimp-cbmplugs~1(c)) AND 
 (NOT opensp~3(c)) AND 
 (NOT php-imlib~1(c)) AND 
 (NOT xdigger~1(c)) AND 
 (NOT zope-cmfplacefulworkflow~2(c)) AND 
 (NOT libopenbabel3~1(c)) AND 
 (NOT libsynfig0~2(c)) AND 
 (NOT man2html~2(c)) AND 
 (NOT libgd2-xpm~5(c)) AND 
 (NOT libopenbabel1~1(c)) AND 
 (NOT libcsoundac5.2~1(c)) AND 
 (NOT scsitools~2(c)) AND 
 (NOT caudium-pixsl~2(c)) AND 
 (NOT libdca-utils~1(c)) AND 
 (NOT libnet-sident-perl~1(c)) AND 
 (NOT tfdocgen~1(c)) AND 
 (NOT libmysqlclient15-dev~3(c)) AND 
 (NOT libhk-classes-paradox~2(c)) AND 
 (NOT libprintsys~2(c)) AND 
 (libmono-accessibility1.0-cil~6(c) IMPLIES libmono-corlib1.0-cil~3(c)) AND 
 (NOT opensc~3(c)) AND 
 (NOT pytris~1(c)) AND 
 (NOT libruby1.8-dbg~3(c)) AND 
 (NOT r-cran-qvalue~1(c)) AND 
 (libhttp-request-ascgi-perl~2(c) IMPLIES perl~69(c) AND (libwww-perl~27(c) OR libwww-perl~20(c)) AND libclass-accessor-perl(c)) AND 
 (libwavpack-dev~2(c) IMPLIES libwavpack1~4(c)) AND 
 (NOT idle~2(c)) AND 
 (NOT python-gastables~1(c)) AND 
 (NOT libhdf4-dev~1(c)) AND 
 (NOT k3dsurf~1(c)) AND 
 (NOT synaptic~6(c)) AND 
 (NOT kdesvn-dbg~1(c)) AND 
 (NOT libcarp-assert-more-perl~2(c)) AND 
 (NOT libcherokee-server0-dev~2(c)) AND 
 (flashybrid~1(c) IMPLIES (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c)) AND rsync(c)) AND 
 (NOT libaqbanking29-dev~1(c)) AND 
 (NOT gnudatalanguage~2(c)) AND 
 (NOT xserver-xorg-video-imstt~1(c)) AND 
 (NOT libportaudio2~3(c)) AND 
 (NOT webauth-tests~2(c)) AND 
 (NOT hplip-cups~1(c)) AND 
 (NOT workrave~3(c)) AND 
 (dh-kpatches~1(c) IMPLIES perl(c) AND debhelper~31(c)) AND 
 (NOT recoll~1(c)) AND 
 (NOT libucil2~1(c)) AND 
 (NOT lokkit~1(c)) AND 
 (NOT php5-pspell~3(c)) AND 
 (NOT openssl~8(c)) AND 
 (NOT gnome~2(c)) AND 
 (NOT libdbaudiolib0~1(c)) AND 
 (libclass-trigger-perl~2(c) IMPLIES perl~69(c) AND libio-stringy-perl(c) AND libclass-data-inheritable-perl~3(c)) AND 
 (NOT konwert-filters~2(c)) AND 
 (NOT liboaf-dev~1(c)) AND 
 (NOT globus-gass-copy-progs~1(c)) AND 
 (NOT libhangul0-dbg~1(c)) AND 
 (NOT culmus~1(c)) AND 
 (NOT libcob1~1(c)) AND 
 (daemontools-run~1(c) IMPLIES daemontools~2(c)) AND 
 (NOT pylint~2(c)) AND 
 (NOT tomatoes~1(c)) AND 
 (NOT sysvinit~12(c)) AND 
 (NOT libpod-readme-perl~1(c)) AND 
 (NOT shermans-aquarium~2(c)) AND 
 (NOT libclass-mop-perl~2(c)) AND 
 (NOT libxxf86dga1~2(c)) AND 
 (NOT xplot~2(c)) AND 
 (NOT cpp-4.2~3(c)) AND 
 (NOT libdaemon0-dbg~1(c)) AND 
 (NOT blootbot~2(c)) AND 
 (NOT libpolkit-gtk-1-dev~2(c)) AND 
 (NOT sawfish-data~3(c)) AND 
 (NOT libppd0~3(c)) AND 
 (NOT fltk1.1-games~2(c)) AND 
 (NOT snacc~1(c)) AND 
 (NOT system-config-printer~2(c)) AND 
 (NOT libmono-winforms2.0-cil~2(c)) AND 
 (NOT php5-xcache~2(c)) AND 
 (NOT python-dev~6(c)) AND 
 (NOT liblablgtk2-ocaml~5(c)) AND 
 (NOT libgnome-pilot2-dev~2(c)) AND 
 (NOT acl2-emacs~1(c)) AND 
 (NOT rlinetd~2(c)) AND 
 (NOT httperf~2(c)) AND 
 (NOT siege~1(c)) AND 
 (NOT libghc6-openal-dev~2(c)) AND 
 (kdesdk-scripts~2(c) IMPLIES perl(c) AND python(c)) AND 
 (NOT gstreamer0.8-mad~2(c)) AND 
 (NOT ne~3(c)) AND 
 (libnmz7-dev~1(c) IMPLIES libnmz7(c)) AND 
 (libhtmlentities-ruby~1(c) IMPLIES libhtmlentities-ruby1.8(c)) AND 
 (NOT sensible-mda~1(c)) AND 
 (NOT rabbitsign~1(c)) AND 
 (NOT liblua5.1-wsapi-fcgi-dev~1(c)) AND 
 (NOT libgstfarsight0.10-dev~1(c)) AND 
 (NOT libroxen-webmail~1(c)) AND 
 (NOT vim-full~2(c)) AND 
 (NOT x11proto-gl-dev~1(c)) AND 
 (libswfdec-0.8-0-dbg~1(c) IMPLIES libswfdec-0.8-0~1(c)) AND 
 (NOT polipo~3(c)) AND 
 (NOT povray-includes~2(c)) AND 
 (NOT libjana-test~1(c)) AND 
 (NOT libfoundation-tools~1(c)) AND 
 (NOT powertweak-gtk~1(c)) AND 
 (NOT bcrypt~2(c)) AND 
 (NOT texlive-base-bin~7(c)) AND 
 (NOT gir1.0-gupnp-1.0~1(c)) AND 
 (libdbd-odbc-ruby~2(c) IMPLIES libdbd-odbc-ruby1.8(c)) AND 
 (NOT libsyntax-highlight-engine-simple-perl~1(c)) AND 
 (maildirsync~1(c) IMPLIES perl~69(c)) AND 
 (NOT libgd1-xpm~3(c)) AND 
 (NOT linux-source-2.6.26~24(c)) AND 
 (NOT preload~1(c)) AND 
 (NOT python-turbogears2~2(c)) AND 
 (NOT libfiredns-dev~2(c)) AND 
 (pango-graphite-dbg~1(c) IMPLIES pango-graphite~1(c)) AND 
 (NOT tk8.5~3(c)) AND 
 (kodos~2(c) IMPLIES python(c) AND python-central~22(c) AND python-qt3(c) AND python-dev(c)) AND 
 (NOT libxkbui1~1(c)) AND 
 (NOT gir1.0-gudev-1.0~2(c)) AND 
 (NOT mlterm~3(c)) AND 
 (NOT python-gnome2-desktop-dev~1(c)) AND 
 (NOT libgraphics-magick-perl~3(c)) AND 
 (NOT libmime-explode-perl~2(c)) AND 
 (NOT libdbd-mysql~2(c)) AND 
 (NOT spfquery~4(c)) AND 
 (NOT libpoconet8-dbg~1(c)) AND 
 (php-file~2(c) IMPLIES (php-pear~5(c) OR php-pear~4(c))) AND 
 (NOT asterisk-bristuff~1(c)) AND 
 (NOT libjasper-dev~2(c)) AND 
 (NOT libgtk-cil~2(c)) AND 
 (NOT oggfwd~1(c)) AND 
 (NOT libempathy23~3(c)) AND 
 (NOT libaqbanking29-dbg~1(c)) AND 
 (NOT libtpm-unseal0~1(c)) AND 
 (NOT firehol~2(c)) AND 
 (NOT libdancer-xml0-dev~1(c)) AND 
 (NOT libvtk5-dev~1(c)) AND 
 (NOT libpcap0.8~6(c)) AND 
 (NOT rlpr~1(c)) AND 
 (NOT libsqlite3-ruby1.9~2(c)) AND 
 (NOT liblensfun-dev~1(c)) AND 
 (NOT med-imaging~1(c)) AND 
 (NOT cpulimit~2(c)) AND 
 (libpt2.6.5-dbg~1(c) IMPLIES libpt2.6.5~2(c)) AND 
 (NOT mmpong-caca~2(c)) AND 
 (NOT nagios-text~2(c)) AND 
 (NOT eprover-doc-html~1(c)) AND 
 (NOT libcoveb-dev~1(c)) AND 
 (NOT kq~3(c)) AND 
 (NOT gimp-svg~1(c)) AND 
 (NOT libhz0~2(c)) AND 
 (NOT python-tksnack~1(c)) AND 
 (NOT xen-shell~2(c)) AND 
 (NOT libpixman-1-0~6(c)) AND 
 (NOT tiger~1(c)) AND 
 (NOT hamradiomenus~2(c)) AND 
 (NOT r-cran-qtl~2(c)) AND 
 (libsmbclient-dev~2(c) IMPLIES libsmbclient~5(c)) AND 
 (NOT cairo-5c~1(c)) AND 
 (libglut3-dev~2(c) IMPLIES freeglut3-dev(c)) AND 
 (NOT libaprutil1-dbd-freetds~1(c)) AND 
 (NOT libgtkimreg-dev~1(c)) AND 
 (NOT mysql-admin~1(c)) AND 
 (NOT libccss-dev~1(c)) AND 
 (NOT xfonts-terminus-dos~1(c)) AND 
 (NOT acpidump~2(c)) AND 
 (NOT libidzebra-2.0-mod-grs-xml~1(c)) AND 
 (monodoc-webkit-manual~2(c) IMPLIES monodoc-manual(c)) AND 
 (ruby1.8-elisp~1(c) IMPLIES (emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs~1(c))) AND 
 (NOT libslurm20~2(c)) AND 
 (NOT octave-ann~1(c)) AND 
 (NOT xen-tools~1(c)) AND 
 (NOT gs-cjk-resource~3(c)) AND 
 (NOT pciutils-dev~1(c)) AND 
 (NOT libxmlsec1-gnutls~1(c)) AND 
 (NOT xlassie~2(c)) AND 
 (NOT libsmart-comments-perl~1(c)) AND 
 (NOT texlive-lang-african~2(c)) AND 
 (NOT m4~3(c)) AND 
 (NOT cryptkeeper~1(c)) AND 
 (docdiff~2(c) IMPLIES libruby1.8~5(c) AND ruby1.8(c)) AND 
 (NOT yorick-ml4~1(c)) AND 
 (NOT libfilter-perl~2(c)) AND 
 (NOT libghc6-stm-prof~1(c)) AND 
 (NOT postfix-mysql~2(c)) AND 
 (NOT freeguide~1(c)) AND 
 (NOT libcfitsio3-dev~4(c)) AND 
 (NOT mono-gmcs~4(c)) AND 
 (libcolor-scheme-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT mimetex~1(c)) AND 
 (NOT quantlib-python~2(c)) AND 
 (NOT librecode0~4(c)) AND 
 (NOT doodle~2(c)) AND 
 (NOT culmus-fancy~1(c)) AND 
 (NOT libgstfarsight0.10-dbg~1(c)) AND 
 (NOT libduppy-ocaml-dev~1(c)) AND 
 (NOT x11-apps~1(c)) AND 
 (NOT tuxpaint-config~1(c)) AND 
 (NOT libengine-pkcs11-openssl~1(c)) AND 
 (NOT varkon~3(c)) AND 
 (NOT fontconfig-config~3(c)) AND 
 (NOT libcryptokit-ocaml~1(c)) AND 
 (NOT libunicap2-dev~1(c)) AND 
 (python-telepathy~4(c) IMPLIES python~22(c) AND python-central~22(c) AND python-dbus(c)) AND 
 (NOT ceferino~1(c)) AND 
 (NOT dradio~2(c)) AND 
 (NOT zephyr-server-krb~1(c)) AND 
 (NOT gambas2-gb-qt-kde-html~1(c)) AND 
 (epiphany-browser~6(c) IMPLIES epiphany-gecko(c)) AND 
 (NOT octave3.2-headers~1(c)) AND 
 (NOT python-nipy~2(c)) AND 
 (NOT libboost-graph-parallel1.40.0~2(c)) AND 
 (NOT amanda-common~3(c)) AND 
 (NOT tinycdb~2(c)) AND 
 (NOT libghc6-json-dev~1(c)) AND 
 (NOT liblip-dev~1(c)) AND 
 (NOT droidbattles~1(c)) AND 
 (NOT libmxml-dev~2(c)) AND 
 (NOT sapgui-package~1(c)) AND 
 (NOT libwildmidi-dev~1(c)) AND 
 (NOT libuim-dev~1(c)) AND 
 (NOT libesd0~5(c)) AND 
 (NOT libplayerjpeg2~1(c)) AND 
 (NOT lsb~4(c)) AND 
 (NOT libmyspell-dev~1(c)) AND 
 (NOT heimdal-dev~1(c)) AND 
 (NOT libcairo-ocaml~2(c)) AND 
 (fonty-dev~1(c) IMPLIES perl(c)) AND 
 (NOT cgiwrap~1(c)) AND 
 (NOT gap-small-groups-extra~2(c)) AND 
 (NOT paxctl~2(c)) AND 
 (NOT steghide~2(c)) AND 
 (NOT libossp-uuid15~1(c)) AND 
 (NOT libboost-iostreams1.40.0~3(c)) AND 
 (surfraw-extra~1(c) IMPLIES surfraw(c) AND (epiphany-browser~10(c) OR xemacs21-mule-canna-wnn~2(c) OR epiphany-gecko~2(c) OR iceweasel~5(c) OR dillo~2(c) OR epiphany-browser~10(c) OR xemacs21-mule-canna-wnn~2(c) OR epiphany-gecko~2(c) OR iceweasel~5(c) OR dillo~2(c) OR konqueror~13(c) OR midori~2(c) OR iceweasel~16(c) OR netrik~2(c) OR netsurf-linuxfb~1(c) OR netsurf-gtk~1(c)) AND libwww-opensearch-perl(c) AND libwww-perl(c) AND libhtml-parser-perl(c)) AND 
 (darcsum~1(c) IMPLIES (emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs~1(c) OR emacs(c))) AND 
 (NOT gpivtools~1(c)) AND 
 (NOT avarice~1(c)) AND 
 (NOT libmini18n-dev~1(c)) AND 
 (NOT texlive-lang-german~5(c)) AND 
 (libsnmp1.4-java~1(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c) OR gcj-4.4-jre~2(c))) AND 
 (diffmon~2(c) IMPLIES (nullmailer~1(c) OR courier-mta~3(c) OR postfix~16(c) OR esmtp-run~1(c)) AND (bash~19(c) OR bash~22(c) OR bash~23(c))) AND 
 (NOT mozilla-firefox-locale-he-il~2(c)) AND 
 (NOT libfribidi-dev~1(c)) AND 
 (NOT realpath~1(c)) AND 
 (NOT iceowl-l10n-all~1(c)) AND 
 (NOT babiloo~1(c)) AND 
 (NOT ggz-kde-games~2(c)) AND 
 (NOT fdupes~1(c)) AND 
 (NOT distmp3~1(c)) AND 
 (NOT gv~3(c)) AND 
 (NOT cryptsetup~1(c)) AND 
 (NOT python-hid~2(c)) AND 
 (durep~1(c) IMPLIES perl(c) AND (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf(c))) AND 
 (NOT libtm-perl~1(c)) AND 
 (NOT fixincludes~1(c)) AND 
 (NOT mpqc~1(c)) AND 
 (NOT op-panel~1(c)) AND 
 (NOT libspf0~2(c)) AND 
 (libmodule-scandeps-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT libgtk1.2-dbg~1(c)) AND 
 (NOT xulrunner-dev~2(c)) AND 
 (NOT dhcp3-relay~4(c)) AND 
 (NOT recode~1(c)) AND 
 (libtext-csv-perl~8(c) IMPLIES perl(c)) AND 
 (NOT libxmltv-perl~2(c)) AND 
 (NOT cl-sql-sqlite3~1(c)) AND 
 (NOT libdballe4~2(c)) AND 
 (NOT nethack-x11~2(c)) AND 
 (NOT pingus~1(c)) AND 
 (NOT libtowitoko2~2(c)) AND 
 (NOT infon-devel~1(c)) AND 
 (rt3.8-apache2~1(c) IMPLIES (apache2(c) OR apache2-mpm-prefork~6(c) OR apache2-mpm-prefork~6(c)) AND (libapache2-mod-fastcgi(c) OR libapache2-mod-fcgid(c) OR libapache2-mod-perl2~11(c)) AND libapache2-mod-perl2~11(c) AND (libapache2-mod-fastcgi(c) OR libapache2-mod-fcgid(c) OR libapache-dbi-perl~4(c))) AND 
 (NOT unixodbc-bin~4(c)) AND 
 (NOT liblablgl-ocaml-dev~4(c)) AND 
 (NOT xserver-xorg-video-trident~2(c)) AND 
 (freetable~2(c) IMPLIES perl(c)) AND 
 (NOT migemo-perl~1(c)) AND 
 (NOT r-cran-epibasix~1(c)) AND 
 (NOT rhino~3(c)) AND 
 (debsums~1(c) IMPLIES perl~69(c) AND (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c))) AND 
 (NOT libgucharmap2-dev~1(c)) AND 
 (NOT libestraier8~2(c)) AND 
 (NOT phatch-cli~2(c)) AND 
 (NOT education-mathematics~3(c)) AND 
 (NOT mpop~1(c)) AND 
 (NOT libglobus-xio-dev~2(c)) AND 
 (NOT adun.app~3(c)) AND 
 (NOT libjackasyn0~2(c)) AND 
 (NOT dwarfdump~1(c)) AND 
 (python-adodb~1(c) IMPLIES python~22(c) AND python-support~7(c)) AND 
 (NOT spass~2(c)) AND 
 (NOT lists-archives~1(c)) AND 
 (NOT pgadmin3~4(c)) AND 
 (NOT gdb-m68hc1x~2(c)) AND 
 (NOT ticker~1(c)) AND 
 (NOT hgsvn~1(c)) AND 
 (NOT blktool~2(c)) AND 
 (NOT libatk1-ruby~1(c)) AND 
 (NOT libglobus-gram-protocol-dev~3(c)) AND 
 (NOT libcf-ocaml~1(c)) AND 
 (NOT kdebluetooth-irmcsync~1(c)) AND 
 (NOT libxml-generator-perl~3(c)) AND 
 (NOT r-cran-quadprog~1(c)) AND 
 (NOT libxcb-record0~2(c)) AND 
 (NOT metacity-common~3(c)) AND 
 (NOT mopac7-bin~1(c)) AND 
 (NOT iasl~1(c)) AND 
 (NOT libboost-math1.38.0~1(c)) AND 
 (NOT vncserver~3(c)) AND 
 (NOT libsvga1~1(c)) AND 
 (NOT tuxeyes~1(c)) AND 
 (NOT libept-dev~2(c)) AND 
 (NOT libkpathsea-dev~5(c)) AND 
 (NOT libapache2-mod-chroot~1(c)) AND 
 (NOT libpoppler-qt-dev~1(c)) AND 
 (NOT wmscope~2(c)) AND 
 (NOT advi-examples~2(c)) AND 
 (NOT libxcb-record0-dev~1(c)) AND 
 (NOT scalapack1-pvm~3(c)) AND 
 (NOT fossology-agents-single~1(c)) AND 
 (NOT libsasl2-modules-ldap~3(c)) AND 
 (NOT libgeos-c1~5(c)) AND 
 (NOT bogofilter-sqlite~1(c)) AND 
 (NOT cipe-common~1(c)) AND 
 (NOT python-pybabel~3(c)) AND 
 (NOT ucspi-tcp-ipv6~1(c)) AND 
 (NOT dssi-host-jack~1(c)) AND 
 (libposixlock-ruby~1(c) IMPLIES libposixlock-ruby1.8(c)) AND 
 (NOT dx~3(c)) AND 
 (NOT hellanzb~4(c)) AND 
 (NOT libgomp1~5(c)) AND 
 (NOT wv~2(c)) AND 
 (NOT python-django-mumble~3(c)) AND 
 (NOT cmake~6(c)) AND 
 (NOT acovea~1(c)) AND 
 (NOT pennmush-mysql~2(c)) AND 
 (NOT libdb4.6-java-gcj~1(c)) AND 
 (NOT binstats~1(c)) AND 
 (NOT scalapack-lam-test~2(c)) AND 
 (NOT xml-resume-library~1(c)) AND 
 (python-uncertainities~2(c) IMPLIES python(c) AND python-central~22(c)) AND 
 (NOT r-cran-mass~1(c)) AND 
 (NOT elilo~1(c)) AND 
 (NOT libc-client2007b~2(c)) AND 
 (NOT libilmbase-dev~2(c)) AND 
 (NOT pcsc-omnikey~1(c)) AND 
 (NOT wl~2(c)) AND 
 (NOT libhugs-x11-bundled~1(c)) AND 
 (libtie-cphash-perl~3(c) IMPLIES perl~69(c)) AND 
 (NOT classpath~9(c)) AND 
 (NOT libwmf-doc~3(c)) AND 
 (NOT openoffice.org-l10n-te-in~3(c)) AND 
 (NOT libroot-bindings-python5.24~1(c)) AND 
 (NOT libclucene0~2(c)) AND 
 (NOT taskjuggler~2(c)) AND 
 (NOT libseaudit4~1(c)) AND 
 (NOT openafs-kpasswd~1(c)) AND 
 (NOT cw~3(c)) AND 
 (NOT libg2banking2~1(c)) AND 
 (NOT klinkstatus~3(c)) AND 
 (NOT atlas3-test~1(c)) AND 
 (NOT libstdc++6-4.4-pic~2(c)) AND 
 (NOT libseaudit1~1(c)) AND 
 (NOT libdvdplay0~1(c)) AND 
 (NOT libecore-input-svn-03~2(c)) AND 
 (NOT php5-memcache~2(c)) AND 
 (NOT libcoat-persistent-perl~1(c)) AND 
 (NOT libgdu0~3(c)) AND 
 (NOT libseaudit-dev~1(c)) AND 
 (NOT libuuid-perl~1(c)) AND 
 (gri-el~1(c) IMPLIES gri~4(c) AND (emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs~1(c))) AND 
 (NOT joystick~1(c)) AND 
 (NOT python-wxgtk2.8-dbg~1(c)) AND 
 (NOT xcalib~1(c)) AND 
 (NOT gedit~2(c)) AND 
 (NOT libaprutil1~5(c)) AND 
 (NOT amule~2(c)) AND 
 (libempathy30-dbg~1(c) IMPLIES libempathy30~4(c)) AND 
 (ethstats~2(c) IMPLIES perl(c)) AND 
 (NOT gimp-dcraw~1(c)) AND 
 (NOT libannodex0~1(c)) AND 
 (libqrencode-dev~1(c) IMPLIES libqrencode3~1(c)) AND 
 (php-net-ftp~2(c) IMPLIES php-pear(c)) AND 
 (wogerman~2(c) IMPLIES (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c)) AND (dictionaries-common~20(c) OR dictionaries-common~15(c))) AND 
 (cl-utilities~1(c) IMPLIES common-lisp-controller~17(c)) AND 
 (NOT libroxen-flash2~2(c)) AND 
 (NOT git-gui~2(c)) AND 
 (NOT quicktime-x11utils~2(c)) AND 
 (NOT tryton-modules-party~1(c)) AND 
 (NOT cl-htmlgen~1(c)) AND 
 (NOT libnss-mysql-bg~1(c)) AND 
 (mozilla-firefox-locale-es-es~2(c) IMPLIES iceweasel-l10n-es-es(c)) AND 
 (NOT nano~3(c)) AND 
 (NOT apache2-suexec~1(c)) AND 
 (NOT mono-mjs~3(c)) AND 
 (NOT openjdk-6-jre~8(c)) AND 
 (NOT rsibreak~1(c)) AND 
 (NOT ttf-indic-fonts~2(c)) AND 
 (NOT xmms-xf86audio~1(c)) AND 
 (liberis-1.3-15-dbg~1(c) IMPLIES liberis-1.3-15~1(c)) AND 
 (NOT libnetcdf3~2(c)) AND 
 (NOT switzerland~2(c)) AND 
 (NOT librrd-dev~1(c)) AND 
 (libitpp-dev~2(c) IMPLIES libitpp6gf~2(c)) AND 
 (NOT jpilot-backup~3(c)) AND 
 (cl-cluck~1(c) IMPLIES common-lisp-controller~17(c) AND cl-kmrcl(c)) AND 
 (NOT libgearman2~2(c)) AND 
 (NOT openssh-client~4(c)) AND 
 (NOT libshout-ocaml~2(c)) AND 
 (libtex-encode-perl~1(c) IMPLIES perl~69(c) AND libhtml-parser-perl~14(c)) AND 
 (NOT scalapack1-mpich~3(c)) AND 
 (NOT xfwm4~9(c)) AND 
 (NOT xmms2-plugin-musepack~3(c)) AND 
 (NOT bogl-bterm~1(c)) AND 
 (NOT lwresd~2(c)) AND 
 (mahara-apache2~1(c) IMPLIES mahara~2(c) AND (apache2(c) OR apache2-mpm-prefork~6(c) OR apache2-mpm-prefork~6(c)) AND libapache2-mod-php5(c)) AND 
 (NOT pythoncard-tools~1(c)) AND 
 (NOT htop~1(c)) AND 
 (NOT libkscan1~2(c)) AND 
 (NOT ttysnoop~1(c)) AND 
 (NOT wireless-tools~4(c)) AND 
 (NOT libgnome-mag2~4(c)) AND 
 (NOT libtokyocabinet8~3(c)) AND 
 (NOT python-epydoc~3(c)) AND 
 (NOT python-paste~5(c)) AND 
 (NOT weechat-plugins~2(c)) AND 
 (NOT libwine-ldap~2(c)) AND 
 (NOT libdatetime-format-mail-perl~3(c)) AND 
 (cdda2wav~3(c) IMPLIES icedax(c)) AND 
 (NOT isoquery~1(c)) AND 
 (NOT libxcb-record0-dbg~1(c)) AND 
 (NOT phpgroupware~2(c)) AND 
 (NOT python-awn-extras~2(c)) AND 
 (NOT gambas2-runtime~2(c)) AND 
 (NOT blacs-pvm-dev~2(c)) AND 
 (libhtml-simpleparse-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT midish~2(c)) AND 
 (NOT libpam-chroot~1(c)) AND 
 (cl-xmls~2(c) IMPLIES common-lisp-controller~17(c)) AND 
 (NOT blacs-mpi-test~1(c)) AND 
 (NOT torcs-data~2(c)) AND 
 (NOT crossfire-client-gtk~2(c)) AND 
 (NOT rlfe~1(c)) AND 
 (NOT libboost-date-time1.38-dev~1(c)) AND 
 (NOT libphp-snoopy~2(c)) AND 
 (NOT libmunge-dev~1(c)) AND 
 (NOT icebox~2(c)) AND 
 (NOT tf~2(c)) AND 
 (NOT pngquant~1(c)) AND 
 (NOT jhead~1(c)) AND 
 (NOT gkrellweather~1(c)) AND 
 (NOT libmagick9-dev~1(c)) AND 
 (NOT gperf-ace~1(c)) AND 
 (NOT dpkg-cross~2(c)) AND 
 (NOT sylpheed-claws-gtk2-extra-plugins~1(c)) AND 
 (NOT libclamav5~2(c)) AND 
 (NOT libclamav4~2(c)) AND 
 (NOT xapian-omega~1(c)) AND 
 (NOT icom~2(c)) AND 
 (NOT sn~2(c)) AND 
 (NOT libwxbase2.4-dev~1(c)) AND 
 (NOT sl~2(c)) AND 
 (NOT libhugs-hunit-bundled~1(c)) AND 
 (libimage-size-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT libxml++1.0c2a~1(c)) AND 
 (NOT linux-patch-grsecurity2~1(c)) AND 
 (python-pysnmp4~1(c) IMPLIES python(c) AND python-support~7(c) AND libsmi2(c) AND libsmi2-common(c) AND python-pyasn1(c) AND python-pysnmp-common(c)) AND 
 (atheist~1(c) IMPLIES python~22(c) AND python~22(c) AND python-central~22(c)) AND 
 (NOT stripclub~1(c)) AND 
 (NOT librapi2-tools~3(c)) AND 
 (python-pysnmp2~1(c) IMPLIES python~22(c) AND python-support~7(c) AND python-pysnmp-common(c)) AND 
 (NOT wzdftpd-mod-perl~2(c)) AND 
 (NOT cruft~2(c)) AND 
 (NOT edict-el~1(c)) AND 
 (NOT libarpack++2-dev~2(c)) AND 
 (NOT libsofa1-dev~1(c)) AND 
 (NOT libgloox-dev~1(c)) AND 
 (NOT afbackup-client~1(c)) AND 
 (education-graphics~1(c) IMPLIES education-tasks(c)) AND 
 (NOT libnet-patricia-perl~2(c)) AND 
 (NOT libperlio-eol-perl~2(c)) AND 
 (NOT spamc~2(c)) AND 
 (NOT libocamlnet-ocaml-dev~10(c)) AND 
 (NOT libsearch-gin-perl~1(c)) AND 
 (libmina2-java~1(c) IMPLIES (gcj-4.4-jre-headless~3(c) OR gcj-4.4-jre-headless~3(c)) AND libslf4j-java(c)) AND 
 (NOT ntfsprogs~2(c)) AND 
 (ri~2(c) IMPLIES ri1.8(c)) AND 
 (NOT kbounce~3(c)) AND 
 (NOT libibverbs-dev~3(c)) AND 
 (NOT cstream~2(c)) AND 
 (NOT libgd1-noxpm~3(c)) AND 
 (NOT libplist-dev~1(c)) AND 
 (libglobus-callout-doc~1(c) IMPLIES libglobus-callout-dev~1(c)) AND 
 (python-httplib2~1(c) IMPLIES python-support~7(c)) AND 
 (NOT streamer~2(c)) AND 
 (NOT mono-utils~6(c)) AND 
 (NOT ircp-tray~1(c)) AND 
 (NOT cmake-data~2(c)) AND 
 (NOT x3270~1(c)) AND 
 (mozilla-firefox-locale-es-ar~2(c) IMPLIES iceweasel-l10n-es-ar(c)) AND 
 (NOT rwhod~1(c)) AND 
 (NOT flashplugin-nonfree~2(c)) AND 
 (NOT libclaw-dynamic-library-dev~1(c)) AND 
 (NOT interchange-cat-standard~1(c)) AND 
 (NOT proftpd-mod-pgsql~1(c)) AND 
 (hg-load-dirs~2(c) IMPLIES load-dirs-common~2(c) AND mercurial(c) AND python(c)) AND 
 (NOT libtest-yaml-meta-perl~2(c)) AND 
 (NOT gjots2~2(c)) AND 
 (NOT mpop-gnome~1(c)) AND 
 (NOT python-hachoir-urwid~1(c)) AND 
 (NOT qm~2(c)) AND 
 (NOT libxerces-c2-dev~1(c)) AND 
 (NOT libace-qtreactor-5.6.3~2(c)) AND 
 (NOT kdegraphics-strigi-plugins~2(c)) AND 
 (NOT wise~2(c)) AND 
 (NOT libusrp2-0~1(c)) AND 
 (NOT octave-secs2d~1(c)) AND 
 (NOT libmpich-mpd1.0-dev~1(c)) AND 
 (NOT libarray-compare-perl~2(c)) AND 
 (NOT ldapvi~2(c)) AND 
 (NOT libnet-twitter-perl~1(c)) AND 
 (NOT texlive-latex3~2(c)) AND 
 (NOT libusb-dev~7(c)) AND 
 (NOT pv~2(c)) AND 
 (NOT freepops~1(c)) AND 
 (NOT libtaoframework-openal1.1-cil~1(c)) AND 
 (NOT agedu~1(c)) AND 
 (NOT ksysguardd~2(c)) AND 
 (NOT boinc-app-seti~2(c)) AND 
 (NOT libkaya-pgsql-dev~2(c)) AND 
 (NOT libdb4.5-tcl~1(c)) AND 
 (NOT proftpd-mod-ldap~4(c)) AND 
 (squashfs-modules-2.6.18-6-xen-amd64~1(c) IMPLIES linux-modules-2.6.18-6-xen-amd64(c)) AND 
 (NOT system-config-gtk-kde~1(c)) AND 
 (NOT ccache~1(c)) AND 
 (NOT latencytop~1(c)) AND 
 (NOT octave-secs1d~1(c)) AND 
 (NOT pi~2(c)) AND 
 (NOT liblua5.1-sql-mysql-dev~1(c)) AND 
 (NOT neko~5(c)) AND 
 (NOT heimdal-servers~7(c)) AND 
 (NOT photoprint~2(c)) AND 
 (NOT libpam-ccreds~1(c)) AND 
 (NOT liboggz2~2(c)) AND 
 (NOT python-django-tagging~1(c)) AND 
 (NOT tla-buildpackage~2(c)) AND 
 (NOT usbutils~2(c)) AND 
 (NOT tcl8.3-dev~2(c)) AND 
 (NOT aoetools~2(c)) AND 
 (NOT gettext-el~2(c)) AND 
 (NOT xmbmon~1(c)) AND 
 (NOT openser-cpl-module~1(c)) AND 
 (python-simpletal~1(c) IMPLIES python~22(c) AND python-support~7(c)) AND 
 (libmodule-runtime-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT python-gps~2(c)) AND 
 (NOT python-pypoker-eval~2(c)) AND 
 (NOT libsmdkim2~3(c)) AND 
 (NOT libwxbase2.4-dbg~1(c)) AND 
 (NOT libghc6-network-bytestring-prof~1(c)) AND 
 (NOT libmm-dev~2(c)) AND 
 (NOT libgnatvsn4.4-dev~1(c)) AND 
 (NOT lbreakout2-data~1(c)) AND 
 (NOT libclone-perl~2(c)) AND 
 (NOT libxmu-headers~2(c)) AND 
 (NOT libapache-dbi-perl~4(c)) AND 
 (NOT debtags-edit~2(c)) AND 
 (NOT kmflcomp~1(c)) AND 
 (NOT libasyncns0~1(c)) AND 
 (sbox-dtc~1(c) IMPLIES (apache2(c) OR apache2-mpm-prefork~6(c) OR apache2-mpm-prefork~6(c)) AND debconf(c)) AND 
 (NOT squid3~1(c)) AND 
 (NOT glade~3(c)) AND 
 (NOT xsltproc~7(c)) AND 
 (libgloox-dbg~1(c) IMPLIES libgloox-dev~1(c)) AND 
 (NOT elida~1(c)) AND 
 (NOT mped~1(c)) AND 
 (NOT yc-el~1(c)) AND 
 (NOT gridengine-client~1(c)) AND 
 (libclass-whitehole-perl~1(c) IMPLIES perl~69(c)) AND 
 (libdatetime-astro-sunrise-perl~1(c) IMPLIES perl~69(c) AND libdatetime-perl(c)) AND 
 (NOT dpsyco-skel~2(c)) AND 
 (NOT nn~2(c)) AND 
 (libclass-dbi-plugin-retrieveall-perl~2(c) IMPLIES perl~69(c) AND libclass-dbi-perl~8(c)) AND 
 (NOT dclock~1(c)) AND 
 (NOT dillo~2(c)) AND 
 (NOT libmono-system-ldap1.0-cil~1(c)) AND 
 (NOT wipe~2(c)) AND 
 (NOT libicebox33~2(c)) AND 
 (NOT uuagc~2(c)) AND 
 (NOT libwmf-dev~3(c)) AND 
 (NOT libcommons-validator-java~3(c)) AND 
 (NOT r-cran-coda~5(c)) AND 
 (NOT ttf-freefarsi~1(c)) AND 
 (NOT emacs21-el~1(c)) AND 
 (NOT ne~2(c)) AND 
 (NOT python-gtkspell~1(c)) AND 
 (NOT atlas3-headers~1(c)) AND 
 (NOT nd~2(c)) AND 
 (NOT mono-jit~4(c)) AND 
 (NOT swh-plugins~3(c)) AND 
 (NOT libgecode8~1(c)) AND 
 (NOT pong2~2(c)) AND 
 (NOT ksmserver~2(c)) AND 
 (NOT gnokii-cli~1(c)) AND 
 (NOT heimdal-clients~6(c)) AND 
 (NOT mp~2(c)) AND 
 (NOT delo~1(c)) AND 
 (NOT dia2code~2(c)) AND 
 (NOT libspf2-dev~2(c)) AND 
 (NOT log2mail~1(c)) AND 
 (NOT libroot-tree5.24~2(c)) AND 
 (NOT motor-fribidi~1(c)) AND 
 (NOT bitscope~1(c)) AND 
 (NOT libwine-alsa-unstable~1(c)) AND 
 (NOT psignifit~2(c)) AND 
 (NOT mg~2(c)) AND 
 (NOT libjifty-plugin-chart-perl~2(c)) AND 
 (NOT gs-gpl~10(c)) AND 
 (NOT mc~2(c)) AND 
 (NOT mgetty-voice~2(c)) AND 
 (NOT libqt4-qt3support~3(c)) AND 
 (NOT python-reportbug~1(c)) AND 
 (NOT gbgoffice~1(c)) AND 
 (NOT nettle-bin~2(c)) AND 
 (NOT libusbip0~1(c)) AND 
 (NOT stockfish~1(c)) AND 
 (mova~1(c) IMPLIES (tk8.5~3(c) OR tk8.5~3(c) OR tk8.4~5(c)) AND bzip2(c)) AND 
 (aspell-de-alt~2(c) IMPLIES aspell~8(c) AND (dictionaries-common~20(c) OR dictionaries-common~15(c))) AND 
 (NOT libwww-curl-perl~4(c)) AND 
 (NOT wing~2(c)) AND 
 (NOT xtables-addons-common~1(c)) AND 
 (libgetargs-long-perl~2(c) IMPLIES perl~69(c) AND liblog-agent-perl(c)) AND 
 (NOT asp.net2-examples~2(c)) AND 
 (NOT libgecko2.0-cil~1(c)) AND 
 (NOT kvm~4(c)) AND 
 (NOT keytouch~1(c)) AND 
 (libxml-ruby~2(c) IMPLIES libxml-ruby1.8(c)) AND 
 (NOT guile-library~3(c)) AND 
 (NOT libyate1.3.0~1(c)) AND 
 (NOT xwelltris~2(c)) AND 
 (NOT p3scan~2(c)) AND 
 (NOT wims~2(c)) AND 
 (NOT wmsysmon~1(c)) AND 
 (NOT le~2(c)) AND 
 (NOT libpaps-dev~1(c)) AND 
 (NOT libmagick9~1(c)) AND 
 (NOT fbx-playlist~1(c)) AND 
 (NOT libedata-cal1.2-6~10(c)) AND 
 (NOT libmei0~1(c)) AND 
 (NOT libghc6-terminfo-dev~2(c)) AND 
 (libjavascript-beautifier-perl~1(c) IMPLIES perl(c)) AND 
 (NOT archfs~1(c)) AND 
 (NOT libxcb-xprint0~1(c)) AND 
 (NOT kq~2(c)) AND 
 (NOT libgnatvsn4.4-dbg~1(c)) AND 
 (NOT libequeue-gtk2-ocaml-dev~1(c)) AND 
 (libhtml-tableparser-perl~1(c) IMPLIES perl~69(c) AND libhtml-parser-perl(c)) AND 
 (NOT python-opencv~2(c)) AND 
 (libaddressview-dev~1(c) IMPLIES libaddressview0~2(c) AND libgnustep-base-dev(c)) AND 
 (NOT apt-offline~1(c)) AND 
 (NOT libmpg123-0~3(c)) AND 
 (libglib2.0-doc~3(c) IMPLIES (epiphany-browser~10(c) OR xemacs21-mule-canna-wnn~2(c) OR epiphany-gecko~2(c) OR iceweasel~5(c) OR dillo~2(c) OR epiphany-browser~10(c) OR xemacs21-mule-canna-wnn~2(c) OR epiphany-gecko~2(c) OR iceweasel~5(c) OR dillo~2(c) OR konqueror~13(c) OR midori~2(c) OR iceweasel~16(c) OR netrik~2(c) OR netsurf-linuxfb~1(c) OR netsurf-gtk~1(c))) AND 
 (NOT php5-pgsql~1(c)) AND 
 (NOT wily~2(c)) AND 
 (NOT libglib2-ruby1.8-dbg~1(c)) AND 
 (NOT libboost-iostreams-dev~1(c)) AND 
 (NOT doc-central~2(c)) AND 
 (NOT arch-buildpackage~1(c)) AND 
 (NOT libcgi-untaint-perl~3(c)) AND 
 (NOT libdrm-intel1-dbg~1(c)) AND 
 (NOT libebackend1.2-0~5(c)) AND 
 (NOT python-libuser~2(c)) AND 
 (NOT cmake-qt-gui~1(c)) AND 
 (NOT libxsettings-dev~1(c)) AND 
 (NOT python-turbokid~3(c)) AND 
 (NOT r-cran-gplots~3(c)) AND 
 (NOT r-cran-psy~2(c)) AND 
 (NOT groovy~1(c)) AND 
 (NOT mbrola-ro1~1(c)) AND 
 (NOT python-magic~2(c)) AND 
 (NOT xserver-xephyr~2(c)) AND 
 (NOT libxcb-reply1-dev~1(c)) AND 
 (NOT libsmokeakonadi2~4(c)) AND 
 (NOT xfstt~2(c)) AND 
 (cl-kmrcl~1(c) IMPLIES common-lisp-controller(c) AND cl-rt(c)) AND 
 (NOT selinux-policy-dev~2(c)) AND 
 (NOT sork-passwd-h3~3(c)) AND 
 (libcgi-xml-perl~1(c) IMPLIES perl~69(c) AND libcgi-perl(c) AND libxml-parser-perl(c)) AND 
 (liblazy-dev~1(c) IMPLIES liblazy1~2(c) AND libdbus-1-dev~14(c)) AND 
 (NOT libclan2c2a-lua~1(c)) AND 
 (NOT consolekit~2(c)) AND 
 (NOT libsynopsis0.12-dev~2(c)) AND 
 (NOT gfs-tools~1(c)) AND 
 (NOT libgrinvin-generators-java~2(c)) AND 
 (NOT mercurial~12(c)) AND 
 (NOT sfind~2(c)) AND 
 (NOT ibus-table-cns11643~1(c)) AND 
 (NOT magicfilter~2(c)) AND 
 (NOT maildrop~2(c)) AND 
 (NOT most~1(c)) AND 
 (NOT libgfcui-2.0-0c2a-dbg~1(c)) AND 
 (NOT libots-dev~2(c)) AND 
 (NOT openoffice.org-math~8(c)) AND 
 (NOT libpri1.4~1(c)) AND 
 (NOT xserver-xorg-video-s3~1(c)) AND 
 (NOT librpcsecgss-dev~2(c)) AND 
 (NOT xinit~1(c)) AND 
 (NOT libdanga-socket-perl~2(c)) AND 
 (NOT wordtrans-kde~1(c)) AND 
 (NOT gnustep-examples~1(c)) AND 
 (NOT nfdump~1(c)) AND 
 (NOT python-turbojson~2(c)) AND 
 (python-mutagen~7(c) IMPLIES python~22(c) AND python-central~22(c)) AND 
 (libio-zlib-perl~3(c) IMPLIES perl~69(c) AND (perl~69(c) OR perl~69(c))) AND 
 (NOT mrd6~2(c)) AND 
 (NOT mga-vid-common~2(c)) AND 
 (NOT liby2-14~2(c)) AND 
 (NOT yorick-curses~1(c)) AND 
 (NOT libghc6-hsql-postgresql-prof~2(c)) AND 
 (NOT python-mysqldb~4(c)) AND 
 (NOT libsablevm-native1~2(c)) AND 
 (NOT mailreader~1(c)) AND 
 (NOT smuxi-frontend~1(c)) AND 
 (NOT libjalali0~1(c)) AND 
 (NOT libpod-abstract-perl~2(c)) AND 
 (NOT cedilla~1(c)) AND 
 (im~2(c) IMPLIES perl~69(c) AND (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c))) AND 
 (xchat-common~3(c) IMPLIES gconf2~7(c)) AND 
 (NOT libgtkhtml3.14-dev~2(c)) AND 
 (NOT opie-server~2(c)) AND 
 (NOT ejabberd~2(c)) AND 
 (NOT storebackup~2(c)) AND 
 (NOT onesixtyone~1(c)) AND 
 (NOT vlc-plugin-arts~1(c)) AND 
 (NOT libglobus-callout-dev~1(c)) AND 
 (NOT python-openal~2(c)) AND 
 (NOT libdmalloc-dev~1(c)) AND 
 (NOT libxcb-xfixes0-dev~1(c)) AND 
 (NOT libqscintilla2-designer~2(c)) AND 
 (NOT xserver-xorg-video-nv~1(c)) AND 
 (NOT libifp-dev~1(c)) AND 
 (NOT libroxen-columnify~2(c)) AND 
 (wdutch~4(c) IMPLIES dictionaries-common(c) AND (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c))) AND 
 (NOT unbound~2(c)) AND 
 (NOT ht~2(c)) AND 
 (NOT libhugs-hdbc-sqlite3~2(c)) AND 
 (libmono-accessibility2.0-cil~5(c) IMPLIES (libmono-corlib2.0-cil~6(c) OR libmono-corlib2.0-cil~10(c))) AND 
 (NOT scsh-install-lib~1(c)) AND 
 (NOT python-ldap~4(c)) AND 
 (libparams-validate-perl~13(c) IMPLIES perl(c)) AND 
 (NOT libvpb-dev~1(c)) AND 
 (NOT librsvg2-ruby1.8-dbg~1(c)) AND 
 (NOT sendxmpp~1(c)) AND 
 (NOT libginspx0~1(c)) AND 
 (NOT libdoodle-dev~1(c)) AND 
 (NOT squid~3(c)) AND 
 (NOT libhunspell-1.2-0~3(c)) AND 
 (NOT xfonts-thai-etl~1(c)) AND 
 (NOT libboost-filesystem1.38-dev~1(c)) AND 
 (NOT libghc6-vty-dev~2(c)) AND 
 (NOT fossology-web-single~1(c)) AND 
 (NOT libclass-dbi-abstractsearch-perl~1(c)) AND 
 (dpatch~3(c) IMPLIES (bash~19(c) OR bash~22(c) OR bash~23(c))) AND 
 (NOT libboost-serialization1.35-dev~1(c)) AND 
 (NOT libavl-dev~1(c)) AND 
 (NOT kpart-webkit~1(c)) AND 
 (NOT gv~2(c)) AND 
 (NOT gadmin-openvpn-server-dbg~1(c)) AND 
 (NOT erlang-x11~2(c)) AND 
 (NOT trac-customfieldadmin~1(c)) AND 
 (NOT libpspell-dev~1(c)) AND 
 (dict-hitchcock~2(c) IMPLIES (serpento~1(c) OR dictd~4(c) OR dictd(c))) AND 
 (NOT python-django-contact-form~1(c)) AND 
 (NOT gq~2(c)) AND 
 (NOT libgle3-dev~1(c)) AND 
 (NOT mutt~4(c)) AND 
 (NOT pike7.6-core~5(c)) AND 
 (NOT gausssum~2(c)) AND 
 (NOT libxcb-icccm1-dev~1(c)) AND 
 (NOT knetfilter~2(c)) AND 
 (NOT kernel-patch-wrr~1(c)) AND 
 (NOT libice6-dbg~2(c)) AND 
 (NOT kdeadmin~3(c)) AND 
 (NOT kanatest~1(c)) AND 
 (NOT libxml-parser-perl~6(c)) AND 
 (NOT libqtwebkit2.2-cil~2(c)) AND 
 (python-speechd~3(c) IMPLIES python(c) AND python-central~22(c)) AND 
 (NOT libtidy-ruby~2(c)) AND 
 (NOT plptools-kde~1(c)) AND 
 (NOT libchipcard-libgwenhywfar47-plugins~1(c)) AND 
 (NOT gnuradio-gpio~1(c)) AND 
 (NOT wmpuzzle~1(c)) AND 
 (NOT kdenetwork-dev~2(c)) AND 
 (NOT python-ggz~2(c)) AND 
 (NOT ttf-lyx~1(c)) AND 
 (NOT gstreamer0.10-plugins-bad-dbg~6(c)) AND 
 (NOT ibus~2(c)) AND 
 (NOT libghc6-regex-posix-dev~1(c)) AND 
 (NOT samba-common~6(c)) AND 
 (NOT mopd~1(c)) AND 
 (NOT openais-dbg~2(c)) AND 
 (NOT fbset~1(c)) AND 
 (NOT libwpd-stream8c2a~3(c)) AND 
 (NOT postgresql-8.4-debversion~1(c)) AND 
 (NOT libt1-5-dbg~1(c)) AND 
 (NOT gnurobbo~2(c)) AND 
 (htag~1(c) IMPLIES perl~69(c)) AND 
 (NOT thunderbird-locale-pt-br~2(c)) AND 
 (NOT egroupware-tracker~2(c)) AND 
 (NOT i3~2(c)) AND 
 (NOT bzr~14(c)) AND 
 (NOT libxft-dev~4(c)) AND 
 (NOT yorick-imutil~4(c)) AND 
 (NOT gpe-julia~1(c)) AND 
 (NOT libxxf86misc-dev~3(c)) AND 
 (NOT libgdcm-java~2(c)) AND 
 (NOT hebcal~1(c)) AND 
 (NOT mono-jay~4(c)) AND 
 (NOT kdebase-kio-plugins~2(c)) AND 
 (libdnsres-dev~1(c) IMPLIES libdnsres0~1(c)) AND 
 (NOT xt~1(c)) AND 
 (NOT libmissioncontrol-client-dev~1(c)) AND 
 (NOT mpichpython~3(c)) AND 
 (NOT libgoocanvas-ruby1.8~1(c)) AND 
 (NOT gstreamer0.10-plugins-base~5(c)) AND 
 (NOT git-core~9(c)) AND 
 (NOT minisapserver~1(c)) AND 
 (NOT xindy~1(c)) AND 
 (NOT xserver-xfree86~4(c)) AND 
 (libgtkhtml3.14-dbg~2(c) IMPLIES libgtkhtml3.14-19~5(c)) AND 
 (NOT libpango1.0-0-dbg~4(c)) AND 
 (NOT libghc6-fgl-dev~3(c)) AND 
 (libtest-mocktime-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT aspell-doc~2(c)) AND 
 (libclass-singleton-perl~1(c) IMPLIES perl(c)) AND 
 (NOT mono~1(c)) AND 
 (NOT libglu1-xorg~2(c)) AND 
 (NOT libxcb-xfixes0-dbg~1(c)) AND 
 (NOT r-cran-fcopulae~4(c)) AND 
 (NOT dgen~2(c)) AND 
 (NOT bash-minimal~3(c)) AND 
 (NOT libhugs-haskell98-bundled~1(c)) AND 
 (NOT libyada-pgsql4~1(c)) AND 
 (NOT dx~2(c)) AND 
 (NOT ed~2(c)) AND 
 (NOT camera.app~1(c)) AND 
 (NOT libgs8~2(c)) AND 
 (NOT php5-xapian~3(c)) AND 
 (NOT stone~2(c)) AND 
 (NOT xd~1(c)) AND 
 (mysql-server~8(c) IMPLIES mysql-server-5.1(c)) AND 
 (NOT opensync-plugin-barry~1(c)) AND 
 (NOT gstreamer0.8-a52dec~2(c)) AND 
 (NOT mona~1(c)) AND 
 (libpoe-component-client-dns-perl~1(c) IMPLIES perl~69(c) AND libpoe-perl~5(c) AND libnet-dns-perl(c)) AND 
 (NOT deco~1(c)) AND 
 (NOT squashfs-modules-2.6.18-6-amd64~1(c)) AND 
 (NOT irb1.8~4(c)) AND 
 (firefox-sage~2(c) IMPLIES iceweasel~16(c)) AND 
 (NOT wl~1(c)) AND 
 (NOT mercurial-common~3(c)) AND 
 (NOT di~2(c)) AND 
 (NOT kdenetwork-filesharing~1(c)) AND 
 (NOT python-pyicu~1(c)) AND 
 (NOT librepository-java~1(c)) AND 
 (NOT crashmail~1(c)) AND 
 (NOT snd-gtk-jack~1(c)) AND 
 (hildon-icons~1(c) IMPLIES gnome-icon-theme(c)) AND 
 (NOT libmdc2-dev~3(c)) AND 
 (pulseaudio-module-raop-dbg~2(c) IMPLIES pulseaudio-module-raop~2(c)) AND 
 (NOT resample~1(c)) AND 
 (NOT cw~2(c)) AND 
 (NOT libavahi-gobject0~2(c)) AND 
 (NOT dc~2(c)) AND 
 (NOT cu~2(c)) AND 
 (libnet-cidr-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT zope-linguaplone~2(c)) AND 
 (NOT odyssey~2(c)) AND 
 (ensymble~1(c) IMPLIES python~22(c) AND python~22(c) AND openssl(c)) AND 
 (NOT libglade2-dev~13(c)) AND 
 (NOT vm~1(c)) AND 
 (NOT xfce4-wavelan-plugin~2(c)) AND 
 (NOT hztty~1(c)) AND 
 (NOT libcurses-ui-perl~4(c)) AND 
 (NOT ksimus-floatingpoint~3(c)) AND 
 (NOT libecpg-compat3~1(c)) AND 
 (NOT python-gdl~2(c)) AND 
 (kdenetwork-dbg~2(c) IMPLIES librss1~4(c) AND kdelibs-dbg(c)) AND 
 (NOT libecpg-compat2~1(c)) AND 
 (NOT liquidsoap~2(c)) AND 
 (NOT selinux-utils~3(c)) AND 
 (NOT dh-make-php~3(c)) AND 
 (NOT vh~1(c)) AND 
 (kaffe-common~1(c) IMPLIES java-common(c)) AND 
 (NOT nspluginwrapper~3(c)) AND 
 (NOT hotswap~2(c)) AND 
 (NOT agenda.app~1(c)) AND 
 (libtest-checkchanges-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT asmail~1(c)) AND 
 (NOT libgnomeuimm-2.6-1c2a~1(c)) AND 
 (NOT libpath-dispatcher-perl~2(c)) AND 
 (NOT libsqlrelay-ruby~1(c)) AND 
 (NOT ri1.9~2(c)) AND 
 (NOT libgtksourceview-dev~3(c)) AND 
 (NOT ri1.8~2(c)) AND 
 (NOT foomatic-gui~3(c)) AND 
 (NOT libdirectfb-dev~4(c)) AND 
 (NOT liblrdf0-dev~2(c)) AND 
 (NOT x11proto-fixes-dev~2(c)) AND 
 (NOT libhid0~1(c)) AND 
 (NOT nyquist~1(c)) AND 
 (NOT update-manager-core~1(c)) AND 
 (NOT wfut~1(c)) AND 
 (NOT lemon~2(c)) AND 
 (NOT deal~1(c)) AND 
 (NOT libroxen-ntuserauth~1(c)) AND 
 (libpostscript-simple-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT apache2-mpm-prefork~6(c)) AND 
 (NOT kxstitch~2(c)) AND 
 (NOT openc++~2(c)) AND 
 (NOT dict~3(c)) AND 
 (NOT libqtscript4-network~1(c)) AND 
 (NOT phpix~1(c)) AND 
 (NOT mumudvb~1(c)) AND 
 (ncmpc-lyrics~1(c) IMPLIES ncmpc(c) AND python(c) AND ruby(c)) AND 
 (NOT pcp-gui~1(c)) AND 
 (NOT ud~1(c)) AND 
 (NOT zpspell~1(c)) AND 
 (NOT bc~2(c)) AND 
 (NOT logcheck~5(c)) AND 
 (NOT bb~2(c)) AND 
 (NOT ddtc~1(c)) AND 
 (NOT at~2(c)) AND 
 (NOT libcgicg1-dev~1(c)) AND 
 (NOT libnbio0~2(c)) AND 
 (NOT help2man~2(c)) AND 
 (libradiusclient-ng-dev~2(c) IMPLIES libradiusclient-ng2~2(c)) AND 
 (NOT thunderbird-locale-en-gb~2(c)) AND 
 (NOT libvlccore-dev~1(c)) AND 
 (NOT libglobus-scheduler-event-generator0~1(c)) AND 
 (NOT libtao-tkresource-1.6.3~1(c)) AND 
 (NOT slang-xfig~1(c)) AND 
 (NOT an~2(c)) AND 
 (NOT libquantlib0-dev~1(c)) AND 
 (NOT python-btsutils~3(c)) AND 
 (NOT easytag~2(c)) AND 
 (NOT kuser~3(c)) AND 
 (NOT libxfconf-0-dev~1(c)) AND 
 (NOT iceape~2(c)) AND 
 (NOT supertuxkart~1(c)) AND 
 (NOT libtwitter-glib-dev~1(c)) AND 
 (NOT maximus~1(c)) AND 
 (NOT openoffice.org-help-zh-tw~4(c)) AND 
 (NOT xfonts-intl-arabic~1(c)) AND 
 (NOT gambas2-gb-info~2(c)) AND 
 (NOT sysutils~2(c)) AND 
 (NOT lmodern~4(c)) AND 
 (NOT wmdrawer~1(c)) AND 
 (libtransaction-simple-ruby1.8~1(c) IMPLIES ruby1.8(c)) AND 
 (NOT octave-financial~2(c)) AND 
 (NOT libnet-hiveminder-perl~1(c)) AND 
 (NOT tiemu~1(c)) AND 
 (NOT libhk-classes-mysql~1(c)) AND 
 (NOT autogen~2(c)) AND 
 (NOT qemuctl~1(c)) AND 
 (NOT sn~1(c)) AND 
 (NOT gcin-dev~1(c)) AND 
 (NOT sm~1(c)) AND 
 (NOT libgoocanvas-dev~2(c)) AND 
 (python-medusa~2(c) IMPLIES python~22(c) AND python-support~7(c)) AND 
 (NOT sl~1(c)) AND 
 (NOT libgtkmm-2.4-doc~3(c)) AND 
 (NOT libsndobj-dev~1(c)) AND 
 (NOT libmms0~4(c)) AND 
 (liblua5.1-xmlrpc0~1(c) IMPLIES liblua5.1-expat0(c) AND liblua5.1-socket2(c)) AND 
 (NOT graphviz-dev~4(c)) AND 
 (NOT libstroke0~2(c)) AND 
 (NOT ibus-table-ziranma~1(c)) AND 
 (NOT python-f2py~1(c)) AND 
 (NOT libhd13-dev~1(c)) AND 
 (NOT konsole~3(c)) AND 
 (NOT sd~1(c)) AND 
 (NOT libmpich1.0gf~1(c)) AND 
 (NOT sc~1(c)) AND 
 (NOT hunt~2(c)) AND 
 (NOT ghc6-prof~12(c)) AND 
 (NOT libwnck-dev~2(c)) AND 
 (libmono-system-runtime1.0-cil~6(c) IMPLIES libmono-corlib1.0-cil~3(c) AND libmono-system-web1.0-cil~8(c) AND libmono-system1.0-cil~6(c)) AND 
 (NOT kmailcvt~1(c)) AND 
 (NOT suspend2-userui~1(c)) AND 
 (NOT python-pastedeploy~2(c)) AND 
 (NOT zh-autoconvert~2(c)) AND 
 (NOT imageindex~2(c)) AND 
 (NOT roxterm~1(c)) AND 
 (NOT hostapd~2(c)) AND 
 (NOT sshproxy-extra-plugins~1(c)) AND 
 (libbinio-dev~1(c) IMPLIES libbinio1c2~3(c)) AND 
 (NOT openoffice.org-filter-so52~1(c)) AND 
 (NOT scim-chewing~2(c)) AND 
 (NOT glademm~1(c)) AND 
 (libsablevm1-dev~1(c) IMPLIES libsablevm1(c)) AND 
 (NOT libmmpong0.9-dev~2(c)) AND 
 (ldap-account-manager~1(c) IMPLIES (libapache2-mod-php5(c) OR php4-cgi(c)) AND php4-ldap(c) AND (lighttpd~4(c) OR cherokee~4(c) OR lighttpd~5(c) OR apache-ssl~6(c) OR apache2-mpm-prefork~6(c) OR lighttpd~4(c) OR cherokee~4(c) OR lighttpd~5(c) OR apache-ssl~6(c) OR apache2-mpm-prefork~6(c) OR fnord~2(c) OR webfs~1(c) OR mini-httpd~1(c) OR aolserver4-daemon~1(c) OR ebhttpd~1(c) OR apache2(c) OR apache2-mpm-prefork~6(c) OR apache2-mpm-prefork~6(c) OR apache-ssl(c)) AND php-fpdf(c) AND (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c))) AND 
 (python-dns~4(c) IMPLIES python(c) AND python-central~22(c)) AND 
 (NOT zope-externaleditor~5(c)) AND 
 (NOT jpilot~3(c)) AND 
 (NOT linux-headers-2.6.26-bpo.1-all~1(c)) AND 
 (NOT thunar-media-tags-plugin~2(c)) AND 
 (NOT mmpong-gl~2(c)) AND 
 (ri~1(c) IMPLIES ri1.8(c)) AND 
 (NOT libcgns-dev~2(c)) AND 
 (NOT php5-xmlrpc~3(c)) AND 
 (NOT libfann1~1(c)) AND 
 (NOT libthai0~1(c)) AND 
 (egroupware-polls~2(c) IMPLIES egroupware-core~2(c)) AND 
 (NOT libopendkim0~1(c)) AND 
 (NOT orbit2-nameserver~2(c)) AND 
 (NOT gnustep-core-doc~2(c)) AND 
 (NOT re~1(c)) AND 
 (NOT libokular-ruby1.8~2(c)) AND 
 (NOT pyxplot~2(c)) AND 
 (NOT sooperlooper~2(c)) AND 
 (NOT glade-gnome~7(c)) AND 
 (NOT libphp-jpgraph-examples~1(c)) AND 
 (NOT lighttpd-mod-trigger-b4-dl~1(c)) AND 
 (NOT rc~1(c)) AND 
 (NOT irssi-plugin-silc~1(c)) AND 
 (python-pyasn1~1(c) IMPLIES python~22(c) AND python-support~7(c)) AND 
 (NOT libboost-program-options1.40.0~2(c)) AND 
 (NOT libsvn-perl~7(c)) AND 
 (libtest-pod-perl~3(c) IMPLIES perl~69(c) AND libio-stringy-perl(c) AND libpod-simple-perl(c)) AND 
 (libsuikyo-ruby1.8~2(c) IMPLIES libruby1.8(c) AND suikyo-table(c)) AND 
 (NOT libgnomeprint-data~1(c)) AND 
 (chalow~1(c) IMPLIES perl~69(c) AND libjcode-pm-perl(c) AND libhtml-template-perl(c)) AND 
 (libpng3~3(c) IMPLIES (libpng12-0~8(c) OR libpng12-0~6(c))) AND 
 (NOT lib32bz2-1.0~1(c)) AND 
 (NOT drbd0.7-utils~1(c)) AND 
 (NOT python-wxversion~1(c)) AND 
 (NOT nitpic~2(c)) AND 
 (NOT openoffice.org-report-builder~4(c)) AND 
 (libdata-serializer-perl~1(c) IMPLIES perl~69(c) AND (libdigest-sha-perl(c) OR perl~69(c) OR perl~69(c))) AND 
 (NOT libtowitoko-dev~1(c)) AND 
 (NOT pypar2~1(c)) AND 
 (NOT libglobus-duct-control-dev~2(c)) AND 
 (NOT libluabridge-ruby~1(c)) AND 
 (NOT mono-gac~5(c)) AND 
 (NOT pike7.6-pexts-pcre~1(c)) AND 
 (libnet-irc-ruby~1(c) IMPLIES ruby(c)) AND 
 (NOT update-cluster~1(c)) AND 
 (NOT libaddresses0~4(c)) AND 
 (NOT sasl2-bin~2(c)) AND 
 (libdata-dump-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT battery-stats~1(c)) AND 
 (NOT qe~1(c)) AND 
 (NOT qd~1(c)) AND 
 (NOT bogofilter-bdb~2(c)) AND 
 (NOT pv~1(c)) AND 
 (NOT fai-quickstart~2(c)) AND 
 (NOT libgnome2-wnck-perl~2(c)) AND 
 (NOT pike7.6-bzip2~2(c)) AND 
 (NOT libopenid-ruby~1(c)) AND 
 (NOT quelcom~2(c)) AND 
 (NOT supybot~2(c)) AND 
 (NOT uim-qt~1(c)) AND 
 (sml-mode~1(c) IMPLIES (emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs~1(c))) AND 
 (NOT tv-fonts~2(c)) AND 
 (NOT libxapian15~2(c)) AND 
 (NOT gstreamer-tools~3(c)) AND 
 (NOT geekast~2(c)) AND 
 (NOT keyjnote~2(c)) AND 
 (s5~1(c) IMPLIES ucf(c)) AND 
 (NOT libshisa-dev~1(c)) AND 
 (NOT gcstar~2(c)) AND 
 (NOT engauge-digitizer~2(c)) AND 
 (NOT libgconf-bridge-dev~1(c)) AND 
 (rubygems1.8~1(c) IMPLIES ruby1.8(c) AND rdoc1.8(c)) AND 
 (NOT pi~1(c)) AND 
 (NOT libapache-mod-php5~1(c)) AND 
 (NOT libs3dw2~2(c)) AND 
 (NOT libcomerr2~6(c)) AND 
 (multex-base~2(c) IMPLIES texlive-base-bin(c)) AND 
 (NOT gnudoq~2(c)) AND 
 (NOT netpipe-tcp~1(c)) AND 
 (NOT libprinterconf-dev~2(c)) AND 
 (NOT cyrus-pop3d-2.2~2(c)) AND 
 (NOT blast~1(c)) AND 
 (NOT libtest-distmanifest-perl~1(c)) AND 
 (NOT libwww-opensearch-perl~2(c)) AND 
 (libio-digest-perl~2(c) IMPLIES libperlio-via-dynamic-perl~4(c) AND perl~69(c)) AND 
 (NOT linux-modules-2.6.18-6-xen-amd64~1(c)) AND 
 (NOT op~1(c)) AND 
 (NOT libpulse-browse0~1(c)) AND 
 (libstring-shellquote-perl~1(c) IMPLIES perl~69(c)) AND 
 (libterm-prompt-perl~1(c) IMPLIES perl~69(c) AND libterm-readkey-perl(c)) AND 
 (NOT libavcodec52~4(c)) AND 
 (NOT micro-proxy~2(c)) AND 
 (NOT om~1(c)) AND 
 (NOT coq-doc~3(c)) AND 
 (libbluecloth-ruby~1(c) IMPLIES libbluecloth-ruby1.8(c)) AND 
 (NOT lynx-cur-wrapper~2(c)) AND 
 (NOT passwd~7(c)) AND 
 (NOT cl-aspectl~2(c)) AND 
 (NOT libscw-0.1-dev~1(c)) AND 
 (NOT openoffice.org-l10n-gu-in~2(c)) AND 
 (NOT xserver-xorg-video-chips~1(c)) AND 
 (libgtksourceview2-ruby~1(c) IMPLIES libgtksourceview2-ruby1.8(c)) AND 
 (NOT ipw2100-source~1(c)) AND 
 (libwill-paginate-ruby~1(c) IMPLIES libwill-paginate-ruby1.8(c)) AND 
 (NOT libgeda-dev~1(c)) AND 
 (NOT dsniff~1(c)) AND 
 (NOT dx-doc~2(c)) AND 
 (NOT libgstreamer0.8-ruby~1(c)) AND 
 (NOT graphicsmagick~3(c)) AND 
 (NOT libglobus-gram-client-doc~1(c)) AND 
 (NOT harden~3(c)) AND 
 (NOT xfonts-cronyx-misc~1(c)) AND 
 (iceweasel-l10n-nn-no~2(c) IMPLIES iceweasel~16(c) AND iceweasel~5(c)) AND 
 (libruby1.9-dbg~3(c) IMPLIES libruby1.9~7(c)) AND 
 (NOT kolabadmin~2(c)) AND 
 (NOT gfortran-multilib~2(c)) AND 
 (NOT python-pysqlite2~5(c)) AND 
 (NOT sensible-mda~2(c)) AND 
 (NOT konversation~2(c)) AND 
 (NOT libxml2-dbg~3(c)) AND 
 (NOT wmnet~3(c)) AND 
 (NOT treeline~2(c)) AND 
 (NOT nn~1(c)) AND 
 (NOT liblablgl-ocaml~1(c)) AND 
 (NOT rman~2(c)) AND 
 (xmms-blursk~1(c) IMPLIES xmms(c)) AND 
 (NOT libqedje-dev~1(c)) AND 
 (NOT thunar~9(c)) AND 
 (NOT uim-latin~1(c)) AND 
 (NOT codeville~2(c)) AND 
 (NOT mz~1(c)) AND 
 (NOT festvox-ru~1(c)) AND 
 (NOT ne~1(c)) AND 
 (NOT xfonts-baekmuk~2(c)) AND 
 (dns-browse~1(c) IMPLIES (tk8.5~3(c) OR tk8.5~3(c) OR tk8.4~5(c) OR tcl8.4(c)) AND dnsutils(c)) AND 
 (NOT facturalux~1(c)) AND 
 (NOT libempathy30~4(c)) AND 
 (NOT popularity-contest~1(c)) AND 
 (NOT python-petsc4py~1(c)) AND 
 (NOT liblua5.1-socket-dev~1(c)) AND 
 (NOT gthumb-data~2(c)) AND 
 (NOT mp~1(c)) AND 
 (NOT zsh-static~3(c)) AND 
 (NOT libticables3~2(c)) AND 
 (mozilla-mozgest~1(c) IMPLIES (icedove~13(c) OR icedove~5(c) OR iceweasel~16(c) OR iceweasel~5(c))) AND 
 (NOT fauhdlc~2(c)) AND 
 (NOT libxvmc1~2(c)) AND 
 (NOT kdm~4(c)) AND 
 (NOT ices2~1(c)) AND 
 (NOT licq-plugin-kde~2(c)) AND 
 (NOT cl-postoffice~2(c)) AND 
 (NOT mg~1(c)) AND 
 (NOT mock~1(c)) AND 
 (NOT gplanarity~1(c)) AND 
 (NOT lib32v4l-dev~1(c)) AND 
 (NOT kdepim-kresources~4(c)) AND 
 (NOT kdf~4(c)) AND 
 (NOT acpid~4(c)) AND 
 (NOT libgcj-bc~2(c)) AND 
 (NOT lv~1(c)) AND 
 (NOT mc~1(c)) AND 
 (NOT linsmith~2(c)) AND 
 (NOT nuttcp~1(c)) AND 
 (NOT omins~1(c)) AND 
 (NOT wordnet~3(c)) AND 
 (NOT kmail~1(c)) AND 
 (NOT git-email~2(c)) AND 
 (mozilla-firefox-locale-pa-in~2(c) IMPLIES iceweasel-l10n-pa-in(c)) AND 
 (NOT libsub-current-perl~1(c)) AND 
 (NOT libmpich1.0c2~1(c)) AND 
 (NOT alsa-source~1(c)) AND 
 (NOT pcaputils~2(c)) AND 
 (NOT le~1(c)) AND 
 (NOT libsubunit0~1(c)) AND 
 (NOT libmono-system-runtime2.0-cil~3(c)) AND 
 (NOT libpgocaml-ocaml~1(c)) AND 
 (NOT knockd~2(c)) AND 
 (NOT source-highlight~3(c)) AND 
 (NOT hugs~2(c)) AND 
 (apache2~5(c) IMPLIES apache2-mpm-prefork~6(c)) AND 
 (etckeeper~3(c) IMPLIES (darcs(c) OR bzr~14(c) OR mercurial(c)) AND (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c))) AND 
 (NOT mendexk~2(c)) AND 
 (NOT mrwtoppm-utils~1(c)) AND 
 (NOT polyxmass~1(c)) AND 
 (NOT gobjc++-4.3-multilib~3(c)) AND 
 (NOT txt2man~1(c)) AND 
 (NOT libmarkaby-ruby~1(c)) AND 
 (python-matplotlib-doc~2(c) IMPLIES libjs-jquery(c)) AND 
 (NOT libvformat1-dev~1(c)) AND 
 (NOT arc-brave~1(c)) AND 
 (NOT gnome-cups-manager~2(c)) AND 
 (NOT pybliographer~3(c)) AND 
 (hyperlatex~1(c) IMPLIES (emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs~1(c) OR emacs(c)) AND (gs(c) OR gs-esp~5(c)) AND netpbm(c)) AND 
 (libwww-mechanize-formfiller-perl~1(c) IMPLIES perl~69(c) AND libdata-random-perl~3(c)) AND 
 (NOT moap~1(c)) AND 
 (NOT r-cran-effects~2(c)) AND 
 (NOT webhttrack~4(c)) AND 
 (NOT libggi-target-svgalib~3(c)) AND 
 (NOT libmimic0~1(c)) AND 
 (NOT libgtk2.0-bin~3(c)) AND 
 (NOT antlr3-gcj~1(c)) AND 
 (libmath-numbercruncher-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT linuxdoc-tools-text~2(c)) AND 
 (NOT mt-daapd~2(c)) AND 
 (NOT libmodule-build-perl~1(c)) AND 
 (NOT araneida~1(c)) AND 
 (NOT sbcl~6(c)) AND 
 (NOT libdbd-sqlite-ruby1.8~1(c)) AND 
 (NOT libmyodbc~1(c)) AND 
 (NOT med-tools~1(c)) AND 
 (squashfs-modules-2.6-amd64~1(c) IMPLIES squashfs-modules-2.6.18-6-amd64(c)) AND 
 (NOT libisccfg1~1(c)) AND 
 (NOT drush~2(c)) AND 
 (NOT libroxen-mail~1(c)) AND 
 (NOT libghc6-glut-doc~1(c)) AND 
 (NOT pootle~2(c)) AND 
 (NOT strace~2(c)) AND 
 (NOT texlive-generic-extra~4(c)) AND 
 (NOT culmus-fancy~2(c)) AND 
 (NOT libsasl2-modules-otp~2(c)) AND 
 (NOT kguitar~1(c)) AND 
 (NOT libosp-dev~1(c)) AND 
 (NOT scim-bridge-client-qt~1(c)) AND 
 (mozart-doc~2(c) IMPLIES (epiphany-browser~10(c) OR xemacs21-mule-canna-wnn~2(c) OR epiphany-gecko~2(c) OR iceweasel~5(c) OR dillo~2(c) OR epiphany-browser~10(c) OR xemacs21-mule-canna-wnn~2(c) OR epiphany-gecko~2(c) OR iceweasel~5(c) OR dillo~2(c) OR konqueror~13(c) OR midori~2(c) OR iceweasel~16(c) OR netrik~2(c) OR netsurf-linuxfb~1(c) OR netsurf-gtk~1(c) OR konqueror(c))) AND 
 (NOT flite~1(c)) AND 
 (octave2.1-info~1(c) IMPLIES (emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR jed~4(c) OR tkinfo~2(c) OR emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR jed~4(c) OR tkinfo~2(c) OR info~6(c) OR info~5(c) OR konqueror~13(c) OR emacs~1(c) OR info~5(c) OR info~6(c))) AND 
 (NOT python-twisted-bin~1(c)) AND 
 (NOT rlpr~2(c)) AND 
 (NOT timeout~2(c)) AND 
 (NOT libhk-classes-odbc~1(c)) AND 
 (NOT sepol-utils~3(c)) AND 
 (libcommons-collections-java~4(c) IMPLIES (gcj-4.4-jre-headless~3(c) OR gcj-4.4-jre-headless~3(c))) AND 
 (NOT libemail-filter-perl~2(c)) AND 
 (NOT libffi4-dev~1(c)) AND 
 (NOT education-development~2(c)) AND 
 (NOT libpadre-plugin-vi-perl~1(c)) AND 
 (NOT gcj-4.4-jre-lib~3(c)) AND 
 (NOT ri-li~2(c)) AND 
 (NOT education-thin-client-server~3(c)) AND 
 (NOT libnet-oping-perl~1(c)) AND 
 (NOT libsm6-dbg~1(c)) AND 
 (NOT alsaplayer-alsa~1(c)) AND 
 (NOT iw~1(c)) AND 
 (NOT jd~1(c)) AND 
 (NOT egroupware-core~2(c)) AND 
 (NOT octave-ident~2(c)) AND 
 (NOT libucil2-dev~1(c)) AND 
 (NOT icedove~5(c)) AND 
 (gcompris-sound-ptbr~2(c) IMPLIES gcompris-data~3(c)) AND 
 (NOT nagios3-dbg~2(c)) AND 
 (NOT libsimplelist0-dev~2(c)) AND 
 (grub-rescue-pc~2(c) IMPLIES base-files~10(c)) AND 
 (sa-learn-cyrus~1(c) IMPLIES kolab-cyrus-imapd(c) AND spamassassin(c) AND perl(c)) AND 
 (NOT icemc~1(c)) AND 
 (NOT droidbattles~2(c)) AND 
 (NOT arrayprobe~2(c)) AND 
 (NOT abakus~1(c)) AND 
 (NOT googleearth-package~1(c)) AND 
 (NOT minisat2~1(c)) AND 
 (im~1(c) IMPLIES perl~69(c) AND (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c))) AND 
 (NOT libpt-dbg~1(c)) AND 
 (NOT pfqueue~3(c)) AND 
 (NOT quotatool~2(c)) AND 
 (NOT libgtk2.0-0-dbg~3(c)) AND 
 (NOT ii~1(c)) AND 
 (NOT libgutenprint2~3(c)) AND 
 (NOT libcmph-tools~1(c)) AND 
 (NOT libbsd-resource-perl~1(c)) AND 
 (NOT fftw2~3(c)) AND 
 (NOT gauche-gl~2(c)) AND 
 (NOT hx~1(c)) AND 
 (NOT ax25-tools~4(c)) AND 
 (NOT socnetv~1(c)) AND 
 (NOT ocrad~1(c)) AND 
 (NOT x-face-el~2(c)) AND 
 (NOT tagcolledit~1(c)) AND 
 (NOT ht~1(c)) AND 
 (NOT iceweasel~5(c)) AND 
 (NOT muine-plugin-serpentine~1(c)) AND 
 (NOT codebreaker~1(c)) AND 
 (NOT libxmmsclient++-glib1~1(c)) AND 
 (NOT unicon-imc2~2(c)) AND 
 (NOT libxmmsclient++-glib0~1(c)) AND 
 (NOT liblogthread3~3(c)) AND 
 (NOT libapache2-authcassimple-perl~1(c)) AND 
 (NOT wzdftpd-mod-tcl~1(c)) AND 
 (grub-disk~2(c) IMPLIES grub-rescue-pc(c)) AND 
 (NOT swi-prolog-clib~1(c)) AND 
 (NOT conquest-libs~2(c)) AND 
 (NOT libxslt1-dev~5(c)) AND 
 (NOT libcln6~1(c)) AND 
 (NOT libcln4~1(c)) AND 
 (NOT mrtg~3(c)) AND 
 (NOT gbrainy~2(c)) AND 
 (NOT bookmarkbridge~1(c)) AND 
 (NOT libjson-wheel-ocaml-dev~1(c)) AND 
 (NOT nagios-snmp-plugins~2(c)) AND 
 (NOT hf~1(c)) AND 
 (NOT php-kolab-freebusy~1(c)) AND 
 (NOT vlc-nox~4(c)) AND 
 (NOT geeqie~2(c)) AND 
 (NOT gambas2-gb-settings~4(c)) AND 
 (libjmdns-java~1(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c) OR gcj-4.4-jre~2(c))) AND 
 (NOT ha~1(c)) AND 
 (NOT libgtkada2-dev~2(c)) AND 
 (NOT gforge-mta-exim4~1(c)) AND 
 (NOT ap-utils~2(c)) AND 
 (NOT gq~1(c)) AND 
 (NOT libtowitoko2~3(c)) AND 
 (NOT liboggflac-dev~2(c)) AND 
 (NOT bittornado~3(c)) AND 
 (NOT libphp-magpierss~1(c)) AND 
 (libmono-relaxng1.0-cil~7(c) IMPLIES libmono-corlib1.0-cil~3(c) AND libmono-system1.0-cil~6(c)) AND 
 (NOT slptool~2(c)) AND 
 (libnet-socks-perl~2(c) IMPLIES perl(c) AND libnet-dns-perl(c)) AND 
 (dh-consoledata~2(c) IMPLIES debhelper~31(c)) AND 
 (NOT libestraier8~3(c)) AND 
 (NOT avifile-vorbis-plugin~2(c)) AND 
 (libclass-dbi-fromform-perl~1(c) IMPLIES perl~69(c) AND libclass-dbi-fromcgi-perl(c) AND libdata-formvalidator-perl(c)) AND 
 (NOT safecopy~1(c)) AND 
 (NOT python-adodb~2(c)) AND 
 (NOT python-scientific~1(c)) AND 
 (NOT tree-ppuzzle~1(c)) AND 
 (NOT libopengl-ruby~1(c)) AND 
 (NOT kazehakase-webkit~1(c)) AND 
 (NOT aufs-source~1(c)) AND 
 (NOT fv~1(c)) AND 
 (NOT irssi~4(c)) AND 
 (NOT libterralib1-dev~2(c)) AND 
 (NOT tlprender~1(c)) AND 
 (NOT xdaliclock~2(c)) AND 
 (liblingua-stem-snowball-da-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT libmail-dkim-perl~4(c)) AND 
 (NOT normalize-audio~2(c)) AND 
 (NOT gambas2-gb-xml-xslt~2(c)) AND 
 (NOT libbakery-2.3-11c2a~1(c)) AND 
 (NOT usbprog-gui~1(c)) AND 
 (NOT libecal1.2-7~2(c)) AND 
 (NOT gff2aplot~2(c)) AND 
 (NOT snort-common-libraries~2(c)) AND 
 (NOT libreact-ocaml-dev~1(c)) AND 
 (libhtml-lint-perl~1(c) IMPLIES perl~69(c) AND libhtml-parser-perl~14(c) AND libhtml-tagset-perl~4(c)) AND 
 (NOT libksieve4~1(c)) AND 
 (NOT davical~1(c)) AND 
 (NOT i3~1(c)) AND 
 (NOT festvox-kdlpc16k~2(c)) AND 
 (NOT mpqc~2(c)) AND 
 (NOT xserver-xorg-input-penmount~2(c)) AND 
 (NOT python-twisted-names~3(c)) AND 
 (NOT maradns~2(c)) AND 
 (NOT kmouth~3(c)) AND 
 (NOT libio-prompt-perl~1(c)) AND 
 (NOT ecartis-cgi~1(c)) AND 
 (NOT gnome-mastermind~1(c)) AND 
 (octave2.9-info~3(c) IMPLIES octave3.0-info(c)) AND 
 (NOT libm17n-0~1(c)) AND 
 (NOT open.app~1(c)) AND 
 (NOT pyrite-publisher~2(c)) AND 
 (NOT python-dbg~4(c)) AND 
 (NOT es~1(c)) AND 
 (libavutil-dev~3(c) IMPLIES libavutil49~5(c) AND libavutil49~5(c)) AND 
 (NOT libhdate1~3(c)) AND 
 (NOT remuco-base~1(c)) AND 
 (wportuguese~1(c) IMPLIES (dictionaries-common~20(c) OR dictionaries-common~15(c)) AND (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf(c))) AND 
 (NOT xenwatch~1(c)) AND 
 (libmono-cairo1.0-cil~2(c) IMPLIES (libcairo2~25(c) OR libcairo2~5(c)) AND libmono-corlib1.0-cil~3(c)) AND 
 (NOT ibam~2(c)) AND 
 (NOT libgupnp-ui-1.0-dev~1(c)) AND 
 (NOT libpt-1.10.10-plugins-avc~1(c)) AND 
 (NOT libnet-dns-perl~8(c)) AND 
 (cl-meta~1(c) IMPLIES common-lisp-controller~17(c)) AND 
 (libsnmp-ruby~1(c) IMPLIES libsnmp-ruby1.8(c)) AND 
 (NOT mpop~2(c)) AND 
 (NOT traceroute-nanog~1(c)) AND 
 (wnorwegian~2(c) IMPLIES (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf(c)) AND dictionaries-common(c)) AND 
 (NOT ee~1(c)) AND 
 (NOT ed~1(c)) AND 
 (libxml-nodefilter-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT pinentry-curses~1(c)) AND 
 (NOT libfs6~2(c)) AND 
 (NOT spamoracle-byte~1(c)) AND 
 (NOT openggsn~1(c)) AND 
 (NOT emacs-chess~1(c)) AND 
 (NOT libdshconfig1~2(c)) AND 
 (NOT xfonts-intl-european~1(c)) AND 
 (libparams-callbackrequest-perl~3(c) IMPLIES perl~69(c) AND libexception-class-perl(c) AND libparams-validate-perl(c)) AND 
 (NOT cwcp~1(c)) AND 
 (NOT itagalog~2(c)) AND 
 (bzr-xmloutput~1(c) IMPLIES bzr~14(c) AND python~22(c) AND python-central~22(c)) AND 
 (NOT jwchat~1(c)) AND 
 (NOT clamav~5(c)) AND 
 (NOT iasl~2(c)) AND 
 (NOT bluemon~1(c)) AND 
 (libdate-manip-perl~3(c) IMPLIES perl~69(c)) AND 
 (NOT lighttpd-mod-magnet~3(c)) AND 
 (NOT man2html~1(c)) AND 
 (NOT zmakebas~2(c)) AND 
 (NOT libclamav-dev~3(c)) AND 
 (NOT libterm-visual-perl~2(c)) AND 
 (NOT shiki-brave-theme~1(c)) AND 
 (NOT di~1(c)) AND 
 (NOT libcairo2~5(c)) AND 
 (NOT postgresql-7.4-plr~1(c)) AND 
 (NOT uim-el~1(c)) AND 
 (NOT php5-svn~1(c)) AND 
 (NOT gkermit~2(c)) AND 
 (NOT libgtkada2-dbg~2(c)) AND 
 (NOT cw~1(c)) AND 
 (NOT pike7.6-doc~1(c)) AND 
 (NOT python-pygraph~1(c)) AND 
 (NOT dc~1(c)) AND 
 (NOT cu~1(c)) AND 
 (libpfm3-3.2-dev~1(c) IMPLIES libpfm3-3.2(c)) AND 
 (NOT migrationtools~2(c)) AND 
 (NOT jmeter-mail~1(c)) AND 
 (NOT cl-irc~1(c)) AND 
 (NOT python-scgi~2(c)) AND 
 (NOT gparted~2(c)) AND 
 (NOT libjinglexmllite0.3-dev~1(c)) AND 
 (NOT r-cran-multcomp~2(c)) AND 
 (NOT pessulus~2(c)) AND 
 (NOT patchage~2(c)) AND 
 (NOT kernel-patch-badram~2(c)) AND 
 (NOT console-setup~3(c)) AND 
 (libvpim-ruby1.8~1(c) IMPLIES libruby1.8(c)) AND 
 (NOT subtitlecomposer~2(c)) AND 
 (NOT libpam-tmpdir~1(c)) AND 
 (NOT libgnustep-base-dev~5(c)) AND 
 (NOT libwpd8c2a~1(c)) AND 
 (NOT libmultisync-plugin-all~1(c)) AND 
 (libflexmock-ruby1.9~1(c) IMPLIES ruby1.9(c)) AND 
 (libflexmock-ruby1.8~1(c) IMPLIES ruby1.8(c)) AND 
 (NOT html2text~2(c)) AND 
 (NOT libxml-um-perl~2(c)) AND 
 (libtest-signature-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT uno-libs3-dbg~2(c)) AND 
 (NOT libcli1~1(c)) AND 
 (NOT libsnmp15~4(c)) AND 
 (NOT kaudiocreator~2(c)) AND 
 (python-pychart~1(c) IMPLIES python~22(c) AND python-support~7(c)) AND 
 (NOT libwavpack1~4(c)) AND 
 (NOT libmcs1~1(c)) AND 
 (NOT libedataserverui1.2-dev~3(c)) AND 
 (NOT r-cran-hdf5~1(c)) AND 
 (NOT r-cran-rsymphony~1(c)) AND 
 (NOT libbotan1.8-dev~1(c)) AND 
 (NOT education-desktop-kde~3(c)) AND 
 (libnachocalendar-java~1(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c) OR gcj-4.4-jre~2(c))) AND 
 (NOT python-multiprocessing~1(c)) AND 
 (NOT libswt-gtk-3.2-java~1(c)) AND 
 (NOT libtoolkit-perl~1(c)) AND 
 (NOT fillets-ng-data~6(c)) AND 
 (NOT ngircd~1(c)) AND 
 (NOT sysvinit~11(c)) AND 
 (NOT deroff~2(c)) AND 
 (NOT libgpod-nogtk-dev~2(c)) AND 
 (NOT libpgeasy~1(c)) AND 
 (libtagsoup-java-doc~1(c) IMPLIES (classpath-doc(c) OR libgcj-doc~3(c) OR libgcj-doc~3(c))) AND 
 (NOT python-extended-threading~1(c)) AND 
 (NOT vim-gtk~4(c)) AND 
 (NOT openoffice.org-help-zh-cn~4(c)) AND 
 (NOT blootbot~1(c)) AND 
 (NOT exim4-dbg~2(c)) AND 
 (NOT eyesapplet~2(c)) AND 
 (NOT gcin-qt3-immodule~2(c)) AND 
 (NOT multitee~2(c)) AND 
 (NOT cricket~1(c)) AND 
 (NOT bc~1(c)) AND 
 (NOT bb~1(c)) AND 
 (NOT libghc6-glut-dev~1(c)) AND 
 (NOT python-rapi2~2(c)) AND 
 (NOT at~1(c)) AND 
 (NOT libroot-proof-dev~1(c)) AND 
 (NOT libcipux-dog-perl~1(c)) AND 
 (ucf~13(c) IMPLIES (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c)) AND (coreutils~20(c) OR coreutils~18(c))) AND 
 (NOT libqtscript4-gui~1(c)) AND 
 (NOT xarchive~1(c)) AND 
 (NOT libipc-sharedcache-perl~1(c)) AND 
 (NOT ttf-lao~1(c)) AND 
 (NOT an~1(c)) AND 
 (NOT liblua5.1-orbit1~1(c)) AND 
 (NOT liblircclient0~2(c)) AND 
 (NOT pytone~1(c)) AND 
 (NOT liblua5.1-orbit0~1(c)) AND 
 (NOT root-plugin-hist-spectrumpainter~1(c)) AND 
 (NOT xapian-omega~2(c)) AND 
 (NOT xfsdump~5(c)) AND 
 (NOT gplcver~1(c)) AND 
 (NOT libterralib1c2a~1(c)) AND 
 (NOT libqglviewer-dev~1(c)) AND 
 (mozilla-livehttpheaders~3(c) IMPLIES iceweasel(c)) AND 
 (NOT rakarrack~1(c)) AND 
 (NOT spamassassin~6(c)) AND 
 (NOT ttf-malayalam-fonts~3(c)) AND 
 (NOT bustle~1(c)) AND 
 (NOT mgm-doc~1(c)) AND 
 (NOT af~1(c)) AND 
 (NOT libdata-stream-bulk-perl~2(c)) AND 
 (NOT igaelic~1(c)) AND 
 (NOT libpam-devperm~2(c)) AND 
 (NOT erlang-ssl~2(c)) AND 
 (libemail-thread-perl~1(c) IMPLIES perl~69(c) AND libmail-thread-perl(c)) AND 
 (NOT cvsd~1(c)) AND 
 (NOT asterisk-prompt-es~2(c)) AND 
 (NOT liblockdev1-perl~2(c)) AND 
 (NOT xpilot-ng-common~3(c)) AND 
 (libgupnp-av-doc~2(c) IMPLIES (epiphany-browser~10(c) OR xemacs21-mule-canna-wnn~2(c) OR epiphany-gecko~2(c) OR iceweasel~5(c) OR dillo~2(c) OR epiphany-browser~10(c) OR xemacs21-mule-canna-wnn~2(c) OR epiphany-gecko~2(c) OR iceweasel~5(c) OR dillo~2(c) OR konqueror~13(c) OR midori~2(c) OR iceweasel~16(c) OR netrik~2(c) OR netsurf-linuxfb~1(c) OR netsurf-gtk~1(c))) AND 
 (NOT chiark-backup~2(c)) AND 
 (NOT libclass-dbi-pg-perl~3(c)) AND 
 (NOT tcputils~2(c)) AND 
 (NOT guile-g-wrap~4(c)) AND 
 (NOT htop~2(c)) AND 
 (libjcip-annotations-java~1(c) IMPLIES (gcj-4.4-jre-headless~3(c) OR gcj-4.4-jre-headless~3(c))) AND 
 (NOT openjdk-6-jre-zero~1(c)) AND 
 (NOT gnome-icon-theme-suede~1(c)) AND 
 (NOT device3dfx-source~2(c)) AND 
 (NOT libgloox-dev~2(c)) AND 
 (barcode-dbg~1(c) IMPLIES barcode~2(c)) AND 
 (NOT plasma-scriptengine-googlegadgets~1(c)) AND 
 (NOT python-fam~2(c)) AND 
 (NOT xsmbrowser~1(c)) AND 
 (NOT php-file~1(c)) AND 
 (libconfigreader-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT openjdk-6-doc~3(c)) AND 
 (NOT spamass-milter~2(c)) AND 
 (harden-surveillance~1(c) IMPLIES (nagios-text~2(c) OR nagios-text~2(c) OR nagios-mysql~2(c))) AND 
 (NOT rlfe~2(c)) AND 
 (NOT texlive-bibtex-extra~2(c)) AND 
 (NOT xphoon~2(c)) AND 
 (NOT libboost-date-time1.39-dev~1(c)) AND 
 (NOT icecc~1(c)) AND 
 (NOT potool~2(c)) AND 
 (NOT complearn-gui~2(c)) AND 
 (NOT cpulimit~1(c)) AND 
 (tkabber~1(c) IMPLIES tk8.4(c) AND tcl8.4(c) AND bwidget(c) AND tcllib(c)) AND 
 (NOT erlang-src~2(c)) AND 
 (NOT libgtkglext1-ruby~3(c)) AND 
 (NOT mozilla-gtk-vnc~2(c)) AND 
 (NOT liblua5.1-rings-dev~1(c)) AND 
 (NOT gforge-web-apache2~2(c)) AND 
 (NOT libwmf-doc~1(c)) AND 
 (NOT gltron~2(c)) AND 
 (NOT abcm2ps~1(c)) AND 
 (libiax-dev~1(c) IMPLIES libiax0~1(c)) AND 
 (NOT collectd-mysql~1(c)) AND 
 (NOT tao-imr~1(c)) AND 
 (NOT latex-cjk-korean~2(c)) AND 
 (NOT libcwidget3~2(c)) AND 
 (NOT root-system-xrootd~2(c)) AND 
 (libnet-ph-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT x11vnc~2(c)) AND 
 (NOT apache-ssl~6(c)) AND 
 (libgnujmi-java~2(c) IMPLIES (gcj-4.4-jre-headless~3(c) OR gcj-4.4-jre-headless~3(c) OR gcj-4.4-jre-headless~3(c) OR gcj-4.4-jre-headless~3(c))) AND 
 (NOT libopenrawgnome1~2(c)) AND 
 (NOT libwmf-bin~3(c)) AND 
 (NOT libgcj7-src~1(c)) AND 
 (NOT mtasc~2(c)) AND 
 (NOT python-matplotlib-dbg~2(c)) AND 
 (NOT beid-tools~2(c)) AND 
 (NOT acpidump~1(c)) AND 
 (NOT tktreectrl~1(c)) AND 
 (NOT ggz-utils~1(c)) AND 
 (NOT libchipcard-tools~1(c)) AND 
 (NOT pulseaudio-module-zeroconf~5(c)) AND 
 (NOT irqbalance~3(c)) AND 
 (NOT gtk-engines-thinice~1(c)) AND 
 (NOT isoqlog~1(c)) AND 
 (NOT libcupscgi1~3(c)) AND 
 (NOT libxtst6-dbg~1(c)) AND 
 (NOT linux-headers-2.6.26-1-xen-amd64~1(c)) AND 
 (NOT easychem~2(c)) AND 
 (NOT cheops-ng~1(c)) AND 
 (gnustep-base-examples~3(c) IMPLIES gnustep-base-common(c) AND (gnustep-common~5(c) OR gnustep-common~5(c))) AND 
 (openoffice.org-thesaurus-sk~4(c) IMPLIES openoffice.org-core~34(c) AND (dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c))) AND 
 (NOT python-pygpu~1(c)) AND 
 (NOT libgsf-1-114-dbg~2(c)) AND 
 (NOT editra~1(c)) AND 
 (NOT gnome-api-docs~2(c)) AND 
 (libclass-makemethods-perl~2(c) IMPLIES perl(c)) AND 
 (paw-demos~2(c) IMPLIES paw++~2(c)) AND 
 (NOT p7zip~3(c)) AND 
 (NOT gstreamer0.10-plugins-base-dbg~2(c)) AND 
 (NOT libdigest-md2-perl~1(c)) AND 
 (NOT idzebra-2.0-utils~1(c)) AND 
 (NOT dpt-i2o-raidutils~1(c)) AND 
 (NOT graphicsmagick-dbg~1(c)) AND 
 (wwwstat~2(c) IMPLIES perl(c)) AND 
 (NOT libwiki-toolkit-perl~4(c)) AND 
 (NOT kweather~5(c)) AND 
 (NOT libsdl1.2debian~6(c)) AND 
 (NOT libortp5-dev~1(c)) AND 
 (libproc-waitstat-perl~1(c) IMPLIES perl~69(c) AND libipc-signal-perl(c)) AND 
 (NOT hotswap-gui~2(c)) AND 
 (NOT pulseaudio-module-x11~4(c)) AND 
 (NOT gspca-source~1(c)) AND 
 (NOT global~1(c)) AND 
 (NOT gs-esp~10(c)) AND 
 (librmagick-ruby~3(c) IMPLIES librmagick-ruby1.8(c)) AND 
 (NOT genus2reduction~1(c)) AND 
 (NOT libykpers-1-1~2(c)) AND 
 (NOT geoip-bin~2(c)) AND 
 (NOT libclalsadrv1~2(c)) AND 
 (NOT mbrola-pt1~1(c)) AND 
 (NOT tre-agrep~1(c)) AND 
 (NOT mono-xsp2~1(c)) AND 
 (NOT libevent-perl~1(c)) AND 
 (NOT libmono-data-tds1.0-cil~8(c)) AND 
 (NOT mono-xsp1~1(c)) AND 
 (NOT pstoedit~2(c)) AND 
 (libgloox-dbg~2(c) IMPLIES libgloox-dev~2(c)) AND 
 (libclass-dbi-plugin-perl~3(c) IMPLIES perl~69(c) AND libclass-dbi-perl~8(c)) AND 
 (NOT libaiksaurusgtk-1.2-0c2a~3(c)) AND 
 (amarok-engines~1(c) IMPLIES amarok-xine(c)) AND 
 (NOT libuuid1~8(c)) AND 
 (NOT xmms2-plugin-ao~2(c)) AND 
 (NOT liblablgtk2-gnome-ocaml-dev~3(c)) AND 
 (NOT libhdf4g-dev~1(c)) AND 
 (NOT libhttp-request-params-perl~1(c)) AND 
 (NOT steghide~1(c)) AND 
 (NOT lvm-common~3(c)) AND 
 (NOT libdb4.6-tcl~1(c)) AND 
 (NOT libtest-reporter-perl~2(c)) AND 
 (NOT libpt-plugins-v4l2~1(c)) AND 
 (NOT mpc123~2(c)) AND 
 (NOT libevtlog0-dbg~1(c)) AND 
 (NOT xmms2-plugin-ices~2(c)) AND 
 (NOT pulseaudio~4(c)) AND 
 (NOT libghemical-dev~3(c)) AND 
 (libmail-verp-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT libapache2-request-perl~5(c)) AND 
 (gadfly~1(c) IMPLIES python(c) AND python-gadfly~1(c)) AND 
 (NOT powermanga~2(c)) AND 
 (NOT libfacile-ocaml-dev~1(c)) AND 
 (NOT libhandoff0~1(c)) AND 
 (NOT libnethttpd-ocaml-dev~2(c)) AND 
 (NOT libsdl-ocaml-dev~1(c)) AND 
 (NOT pygopherd~1(c)) AND 
 (NOT config-manager~1(c)) AND 
 (claws-mail-doc~1(c) IMPLIES claws-mail~2(c)) AND 
 (NOT libglobus-gsi-sysconfig-dev~2(c)) AND 
 (NOT libmono-posix1.0-cil~3(c)) AND 
 (NOT ltsp-server-standalone~2(c)) AND 
 (NOT r-cran-amelia~1(c)) AND 
 (NOT minidjvu~2(c)) AND 
 (NOT makedic~2(c)) AND 
 (NOT globus-gridftp-server-progs~2(c)) AND 
 (NOT nvidia-xconfig~2(c)) AND 
 (pike7.6-dev~1(c) IMPLIES (pike7.6-core~2(c) OR pike7.6-core~5(c))) AND 
 (NOT kvkbd~1(c)) AND 
 (NOT jed~4(c)) AND 
 (NOT mgetty-voice~3(c)) AND 
 (NOT monotone-server~3(c)) AND 
 (NOT pidgin-encryption~1(c)) AND 
 (NOT sylpheed-claws-gtk2-synce-plugin~1(c)) AND 
 (NOT xawtv-tools~1(c)) AND 
 (NOT netdiscover~1(c)) AND 
 (NOT python-sympy~1(c)) AND 
 (NOT dbmix~1(c)) AND 
 (NOT libxmlrpc3-common-java-gcj~1(c)) AND 
 (NOT mped~2(c)) AND 
 (NOT chora2~1(c)) AND 
 (xemacs21-basesupport~5(c) IMPLIES perl(c)) AND 
 (NOT libqmmp-dev~2(c)) AND 
 (NOT libxcb-xinerama0-dev~1(c)) AND 
 (NOT libtiff4-dev~2(c)) AND 
 (NOT gnome-pilot~3(c)) AND 
 (NOT adun.app~2(c)) AND 
 (NOT libsvn1~5(c)) AND 
 (NOT liblua5.1-json~1(c)) AND 
 (discus~2(c) IMPLIES python(c)) AND 
 (NOT libcoq-ocaml-dev~1(c)) AND 
 (NOT libcarp-assert-more-perl~1(c)) AND 
 (NOT mono-utils~4(c)) AND 
 (NOT pgadmin3~3(c)) AND 
 (NOT esound-clients~2(c)) AND 
 (NOT libslbreflex2~1(c)) AND 
 (NOT wmressel~2(c)) AND 
 (NOT libhttpclient-ruby~1(c)) AND 
 (NOT cloop-utils~2(c)) AND 
 (NOT palbart~1(c)) AND 
 (NOT libmms-dev~1(c)) AND 
 (NOT cdbackup~2(c)) AND 
 (NOT openoffice.org-core~34(c)) AND 
 (NOT cl-pubmed~1(c)) AND 
 (NOT gpc-2.1-3.4~2(c)) AND 
 (NOT libimager-perl~1(c)) AND 
 (NOT libosgcal0~2(c)) AND 
 (libapp-info-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT libsmbclient~3(c)) AND 
 (dacco-cat-users~1(c) IMPLIES dictd(c)) AND 
 (NOT python-mmpython~1(c)) AND 
 (libcrypt-passwdmd5-perl~3(c) IMPLIES perl~69(c)) AND 
 (NOT libparse-plainconfig-perl~2(c)) AND 
 (NOT vdr-plugin-vcd~1(c)) AND 
 (NOT libghc6-glade-dev~1(c)) AND 
 (NOT libnuma1~1(c)) AND 
 (libparanamer-java~1(c) IMPLIES (gcj-4.4-jre-headless~3(c) OR gcj-4.4-jre-headless~3(c) OR gcj-4.4-jre-headless~3(c) OR gcj-4.4-jre-headless~3(c))) AND 
 (NOT libofa0-dev~2(c)) AND 
 (NOT delo~2(c)) AND 
 (NOT softflowd~1(c)) AND 
 (NOT libaudutil1~1(c)) AND 
 (NOT xprintidle~1(c)) AND 
 (NOT cmake-qt-gui~2(c)) AND 
 (NOT libibumad1~1(c)) AND 
 (NOT libvarnish1~4(c)) AND 
 (NOT libnews-newsrc-perl~2(c)) AND 
 (NOT python-magic~3(c)) AND 
 (NOT falconseye~1(c)) AND 
 (NOT libgeoip1~8(c)) AND 
 (NOT ocaml-base~5(c)) AND 
 (NOT python-pykaraoke~1(c)) AND 
 (NOT afuse~1(c)) AND 
 (NOT libjsw-dev~1(c)) AND 
 (NOT libogg-ocaml~1(c)) AND 
 (NOT hellanzb~3(c)) AND 
 (NOT bandwidthd~2(c)) AND 
 (NOT tdsodbc~2(c)) AND 
 (NOT libgtk-mozembed-ruby~4(c)) AND 
 (NOT liblog-handler-perl~1(c)) AND 
 (NOT cl-clx-sbcl~3(c)) AND 
 (NOT gazpacho~3(c)) AND 
 (NOT luvcview~1(c)) AND 
 (NOT libgnutls-dev~7(c)) AND 
 (NOT choqok~1(c)) AND 
 (mova~2(c) IMPLIES (tk8.5~3(c) OR tk8.5~3(c) OR tk8.4~5(c)) AND bzip2(c)) AND 
 (NOT tao-ifr~1(c)) AND 
 (NOT libxcursor1~2(c)) AND 
 (NOT request-tracker3.8~2(c)) AND 
 (NOT totem-mozilla~1(c)) AND 
 (NOT elfsh~1(c)) AND 
 (NOT libbind-dev~3(c)) AND 
 (NOT wing~3(c)) AND 
 (NOT lanmap~1(c)) AND 
 (NOT libpulse0~4(c)) AND 
 (NOT request-tracker3.6~2(c)) AND 
 (NOT hostname~1(c)) AND 
 (NOT libflowcanvas2~1(c)) AND 
 (NOT kradio~2(c)) AND 
 (NOT libmono-microsoft-build2.0-cil~7(c)) AND 
 (NOT libtulip-3.1~1(c)) AND 
 (NOT libsmdkim2~1(c)) AND 
 (NOT ecj-bootstrap-gcj~2(c)) AND 
 (NOT libcairo2-dev~13(c)) AND 
 (NOT libespeak1~1(c)) AND 
 (NOT libsmi2~2(c)) AND 
 (NOT libruby1.9.1~2(c)) AND 
 (librack-ruby1.9~1(c) IMPLIES ruby1.9(c)) AND 
 (liblua5.1-soap0~1(c) IMPLIES liblua5.1-expat0(c) AND liblua5.1-socket2(c)) AND 
 (NOT xserver-xorg-video-ati-dbg~2(c)) AND 
 (NOT libgnome-speech7~2(c)) AND 
 (NOT zshdb~1(c)) AND 
 (libhtml-highlight-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT libcatalyst-modules-extra-perl~2(c)) AND 
 (python-sqlalchemy~7(c) IMPLIES python~22(c) AND python-support~7(c)) AND 
 (NOT tsocks~2(c)) AND 
 (NOT xserver-xorg-input-citron~1(c)) AND 
 (NOT libgfortran1-dev~1(c)) AND 
 (NOT acpitool-dbg~1(c)) AND 
 (NOT licq-plugin-autoreply~1(c)) AND 
 (NOT weka~1(c)) AND 
 (NOT libsvn-ruby1.8~3(c)) AND 
 (NOT libqof-backend-qsf0~1(c)) AND 
 (NOT python-clearsilver~3(c)) AND 
 (NOT libsql-translator-perl~3(c)) AND 
 (NOT g3data~1(c)) AND 
 (NOT pngcrush~3(c)) AND 
 (NOT libvtkgdcm2.0~4(c)) AND 
 (cl-umlisp-orf~2(c) IMPLIES common-lisp-controller~17(c) AND cl-kmrcl(c) AND cl-sql(c) AND cl-hyperobject(c)) AND 
 (NOT uuid-dev~2(c)) AND 
 (NOT dasher~3(c)) AND 
 (NOT alacarte~4(c)) AND 
 (NOT gir1.0-unique-1.0~1(c)) AND 
 (NOT ktimetracker~1(c)) AND 
 (NOT wily~3(c)) AND 
 (NOT libgupnp-igd-1.0-dev~2(c)) AND 
 (NOT pulseaudio-module-x11-dbg~1(c)) AND 
 (ethstats~1(c) IMPLIES (perl~69(c) OR perl~69(c))) AND 
 (NOT beagle~3(c)) AND 
 (NOT glutg3~3(c)) AND 
 (NOT elfrc~1(c)) AND 
 (NOT jumpnbump~2(c)) AND 
 (NOT sourcenav~1(c)) AND 
 (NOT libbogl-dev~1(c)) AND 
 (NOT libavogadro-dev~2(c)) AND 
 (wogerman~1(c) IMPLIES (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c)) AND (dictionaries-common~20(c) OR dictionaries-common~15(c))) AND 
 (NOT libnet-smtpauth-perl~1(c)) AND 
 (NOT audacious-plugins-dev~1(c)) AND 
 (NOT librlog1c2a~2(c)) AND 
 (NOT libguilegtk-1.2-dev~1(c)) AND 
 (NOT libapache2-mod-vhost-ldap~1(c)) AND 
 (NOT blueman~1(c)) AND 
 (NOT ifrench-gut~2(c)) AND 
 (NOT libxcb-xinerama0-dbg~1(c)) AND 
 (NOT libevas-svn-03-engines-core~1(c)) AND 
 (NOT most~2(c)) AND 
 (NOT scim-chinese~2(c)) AND 
 (NOT transfig~3(c)) AND 
 (logtail~3(c) IMPLIES perl~69(c)) AND 
 (gquilt~2(c) IMPLIES python-gtk2~27(c) AND mercurial~12(c)) AND 
 (NOT bombermaze~1(c)) AND 
 (NOT mklibs-copy~1(c)) AND 
 (NOT libclutter-imcontext-0.1-0~1(c)) AND 
 (NOT texlive-doc-zh~2(c)) AND 
 (NOT vrrpd~1(c)) AND 
 (aspell-nl~4(c) IMPLIES aspell(c) AND dictionaries-common(c)) AND 
 (NOT tao-idl~1(c)) AND 
 (NOT fusil~1(c)) AND 
 (liblog-agent-perl~2(c) IMPLIES perl~69(c)) AND 
 (cl-arnesi~1(c) IMPLIES common-lisp-controller~17(c)) AND 
 (muttprofile~1(c) IMPLIES perl~69(c) AND mutt(c)) AND 
 (NOT libexiv2-5~1(c)) AND 
 (NOT geany~2(c)) AND 
 (hunspell-gl-es~2(c) IMPLIES dictionaries-common~20(c)) AND 
 (NOT mailody~1(c)) AND 
 (NOT mimedecode~1(c)) AND 
 (NOT libcupsimage2~8(c)) AND 
 (NOT turqstat~2(c)) AND 
 (NOT libgdchart-gd1-xpm~1(c)) AND 
 (NOT mt-st~3(c)) AND 
 (NOT opensaml2-tools~1(c)) AND 
 (NOT libmp4-info-perl~2(c)) AND 
 (NOT gnome-control-center~16(c)) AND 
 (NOT libgcc1-dbg~1(c)) AND 
 (NOT libabiword-2.8~1(c)) AND 
 (NOT plplot-bin~2(c)) AND 
 (NOT lib32gmp3-dev~2(c)) AND 
 (NOT libclutter-perl~1(c)) AND 
 (NOT mbrola-pl1~1(c)) AND 
 (libio-stty-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT libroxen-swarm~2(c)) AND 
 (NOT libcontactsdb-dev~1(c)) AND 
 (NOT libsamplerate0~1(c)) AND 
 (NOT emacs23-lucid~1(c)) AND 
 (NOT plasma-widget-folderview~2(c)) AND 
 (irb~4(c) IMPLIES irb1.8(c)) AND 
 (NOT libev3~2(c)) AND 
 (NOT mgltools-gle~1(c)) AND 
 (NOT xlbiff~1(c)) AND 
 (NOT ax25mail-utils~1(c)) AND 
 (NOT python-cdd~4(c)) AND 
 (NOT iscsitarget~2(c)) AND 
 (NOT cuyo~1(c)) AND 
 (NOT libgnadeodbc-dev~1(c)) AND 
 (NOT libghc6-stream-prof~2(c)) AND 
 (NOT libobjc1~2(c)) AND 
 (NOT libcaptcha-recaptcha-perl~2(c)) AND 
 (NOT pike7.6-pg~1(c)) AND 
 (NOT xmms2-plugin-xml~1(c)) AND 
 (NOT libc-client2007b-dev~1(c)) AND 
 (libdb4.6-java-dev~1(c) IMPLIES libdb4.6-java(c)) AND 
 (NOT libvuurmuur0~1(c)) AND 
 (NOT libtidy-0.99-0~4(c)) AND 
 (libmcal~1(c) IMPLIES libmcal0(c)) AND 
 (NOT libboost-filesystem1.39-dev~1(c)) AND 
 (libcucul-dev~3(c) IMPLIES libcaca-dev~4(c)) AND 
 (NOT libqtscript4-uitools~1(c)) AND 
 (NOT libavbin-dev~1(c)) AND 
 (iceweasel-l10n-fur-it~1(c) IMPLIES (iceweasel~16(c) OR iceweasel~5(c)) AND iceweasel~5(c)) AND 
 (NOT libooolib-perl~2(c)) AND 
 (NOT libicns-dev~1(c)) AND 
 (NOT couchdb~1(c)) AND 
 (gwyddion-common~1(c) IMPLIES gconf2~7(c)) AND 
 (libscriptalicious-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT wide-dhcpv6-relay~2(c)) AND 
 (bogofilter~3(c) IMPLIES bogofilter-bdb(c)) AND 
 (libmath-combinatorics-perl~1(c) IMPLIES perl~69(c)) AND 
 (openoffice.org-style-andromeda~2(c) IMPLIES openoffice.org-common~28(c)) AND 
 (NOT openjdk-6-dbg~3(c)) AND 
 (NOT fil-plugins~2(c)) AND 
 (NOT batman-adv-battool~1(c)) AND 
 (NOT libgupnp-igd-1.0-dbg~2(c)) AND 
 (NOT audacity~4(c)) AND 
 (NOT ocfs2-tools~1(c)) AND 
 (NOT flow-tools-dev~1(c)) AND 
 (NOT libspread-perl~1(c)) AND 
 (NOT libgconfmm-2.6-dev~3(c)) AND 
 (NOT fastjar~1(c)) AND 
 (NOT audacious-plugins-dbg~1(c)) AND 
 (mysql-server~9(c) IMPLIES mysql-server-5.1(c)) AND 
 (NOT libwfnetobjs0c2~2(c)) AND 
 (NOT streamer~1(c)) AND 
 (NOT weex~1(c)) AND 
 (NOT libghc6-mtl-doc~1(c)) AND 
 (NOT bzflag-server~1(c)) AND 
 (NOT libboost1.40-dev~1(c)) AND 
 (NOT exactimage-dbg~1(c)) AND 
 (libfilter-eof-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT mopd~2(c)) AND 
 (NOT tegaki-recognize~1(c)) AND 
 (NOT libmatrixssl1.8-dev~2(c)) AND 
 (pyrex-mode~1(c) IMPLIES python-mode(c)) AND 
 (NOT libboost-iostreams1.40.0~2(c)) AND 
 (NOT qbittorrent~1(c)) AND 
 (htag~2(c) IMPLIES perl~69(c)) AND 
 (NOT mathwar~1(c)) AND 
 (NOT backupninja~3(c)) AND 
 (NOT libsqlite0-dev~1(c)) AND 
 (iceweasel-l10n-bn-in~1(c) IMPLIES iceweasel~16(c) AND iceweasel~5(c)) AND 
 (NOT ltp-commands-test~2(c)) AND 
 (NOT pdns-backend-sqlite~4(c)) AND 
 (NOT libmusicbrainz3-6~2(c)) AND 
 (NOT dvsink~1(c)) AND 
 (NOT libremctl-dev~3(c)) AND 
 (NOT libalberta2~1(c)) AND 
 (NOT festvox-don~2(c)) AND 
 (NOT libgtk2-ex-simple-list-perl~2(c)) AND 
 (NOT python-jarabe-0.86~1(c)) AND 
 (NOT libtk-tablematrix-perl~1(c)) AND 
 (NOT libboost-thread1.33.1~1(c)) AND 
 (NOT gfortran-doc~1(c)) AND 
 (NOT textopo~1(c)) AND 
 (NOT garlic~1(c)) AND 
 (NOT libusplash0~2(c)) AND 
 (NOT dopewars~1(c)) AND 
 (NOT libxray-absorption-perl~2(c)) AND 
 (NOT libdbd-sqlite3-perl~10(c)) AND 
 (NOT apt-dater-host~3(c)) AND 
 (NOT ibus-table-xinhua~1(c)) AND 
 (NOT libogg-vorbis-decoder-perl~2(c)) AND 
 (NOT xfce4-settings~3(c)) AND 
 (NOT gpe-edit~2(c)) AND 
 (NOT libclaw-net1~1(c)) AND 
 (NOT python-subversion~7(c)) AND 
 (NOT liberuby-dev~1(c)) AND 
 (NOT libshout3~1(c)) AND 
 (NOT heroes-sdl~3(c)) AND 
 (NOT kbattleship~3(c)) AND 
 (NOT libreadline5-dev~1(c)) AND 
 (NOT telepathy-gabble~2(c)) AND 
 (NOT usbutils~1(c)) AND 
 (NOT liboggz1~1(c)) AND 
 (NOT libgnadeodbc-dbg~1(c)) AND 
 (NOT libextractor-dev~2(c)) AND 
 (NOT libk3b-dev~3(c)) AND 
 (NOT aoetools~1(c)) AND 
 (NOT tcl8.5~3(c)) AND 
 (NOT texlive-doc-tr~2(c)) AND 
 (NOT libmoosex-semiaffordanceaccessor-perl~1(c)) AND 
 (NOT libgdata1.2-dev~1(c)) AND 
 (NOT kopete~3(c)) AND 
 (NOT xfce4-mount-plugin~2(c)) AND 
 (NOT mona~2(c)) AND 
 (c-sig~1(c) IMPLIES (emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs~1(c))) AND 
 (NOT love-dbg~1(c)) AND 
 (NOT libmail-spf-perl~2(c)) AND 
 (NOT tkdvi~2(c)) AND 
 (NOT unalz~1(c)) AND 
 (NOT einstein~2(c)) AND 
 (NOT libgtkextra-1.0-0~1(c)) AND 
 (NOT libgconf2.0-cil~6(c)) AND 
 (NOT mp3c~1(c)) AND 
 (NOT xserver-xorg-video-radeon-dbg~1(c)) AND 
 (NOT amiga-fdisk-cross~1(c)) AND 
 (NOT gaim-irchelper~1(c)) AND 
 (NOT weechat~4(c)) AND 
 (NOT xsltproc~6(c)) AND 
 (NOT exim4-daemon-light-dbg~2(c)) AND 
 (NOT conquest-server~1(c)) AND 
 (NOT apt-file~3(c)) AND 
 (NOT libjasperreports-java~2(c)) AND 
 (NOT banshee-extension-alarm~1(c)) AND 
 (NOT libplexus-interactivity-api-java~2(c)) AND 
 (NOT acerhk-source~1(c)) AND 
 (NOT libmusicbrainz-queries-perl~1(c)) AND 
 (NOT liblablgtk2-ocaml-dev~7(c)) AND 
 (NOT xcwcp~3(c)) AND 
 (NOT pennmush-common~2(c)) AND 
 (libfeedparser-ruby1.8~1(c) IMPLIES ruby1.8(c)) AND 
 (NOT supertuxkart~2(c)) AND 
 (NOT libpt-1.10.10-plugins-v4l2~1(c)) AND 
 (NOT gnucap~2(c)) AND 
 (libparse-debcontrol-perl~2(c) IMPLIES (perl~69(c) OR perl~69(c)) AND libio-stringy-perl(c) AND libwww-perl(c) AND perl~69(c)) AND 
 (NOT clustalx~3(c)) AND 
 (myspell-de-de-oldspell~1(c) IMPLIES (dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c))) AND 
 (NOT clustalw~3(c)) AND 
 (libboost1.40-dbg~1(c) IMPLIES libboost1.40-dev~1(c)) AND 
 (NOT libcss-perl~1(c)) AND 
 (NOT pidgin-facebookchat~1(c)) AND 
 (openoffice.org-thesaurus-cs~4(c) IMPLIES openoffice.org-core~34(c) AND (dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c))) AND 
 (NOT libghc6-cgi-doc~1(c)) AND 
 (claws-mail-dbg~1(c) IMPLIES claws-mail~2(c)) AND 
 (NOT rsh-server~2(c)) AND 
 (NOT texlive-base-bin~9(c)) AND 
 (NOT libogg0~5(c)) AND 
 (NOT dtc-cyrus~1(c)) AND 
 (NOT libtest-warn-perl~2(c)) AND 
 (NOT rancid-util~1(c)) AND 
 (NOT openoffice.org-l10n-zu~4(c)) AND 
 (NOT python-beagle~2(c)) AND 
 (NOT bulmages-servers~2(c)) AND 
 (NOT kde-style-klearlook~1(c)) AND 
 (NOT dia2code~1(c)) AND 
 (NOT libkpgp4~2(c)) AND 
 (NOT libmoosex-methodattributes-perl~2(c)) AND 
 (NOT graphviz-dev~5(c)) AND 
 (NOT deal~2(c)) AND 
 (NOT libxine1-console~1(c)) AND 
 (ocamlweb~2(c) IMPLIES (ocaml-base-nox~4(c) OR ocaml-base-nox~4(c))) AND 
 (NOT ucspi-tcp~1(c)) AND 
 (NOT cl-uffi-tests~2(c)) AND 
 (NOT mordor~1(c)) AND 
 (NOT jokosher~2(c)) AND 
 (NOT nagios-plugins~3(c)) AND 
 (NOT apcalc~1(c)) AND 
 (NOT guile-1.6~4(c)) AND 
 (NOT libbinio-dev~2(c)) AND 
 (openoffice.org-l10n-za~4(c) IMPLIES openoffice.org-l10n-af(c) AND openoffice.org-l10n-en-za(c) AND openoffice.org-l10n-nr(c) AND openoffice.org-l10n-ns(c) AND openoffice.org-l10n-ss(c) AND openoffice.org-l10n-st(c) AND openoffice.org-l10n-tn(c) AND openoffice.org-l10n-ts(c) AND openoffice.org-l10n-ve(c) AND openoffice.org-l10n-xh(c) AND openoffice.org-l10n-zu(c)) AND 
 (NOT thewidgetfactory~1(c)) AND 
 (NOT gmysqlcc~1(c)) AND 
 (dnswalk~2(c) IMPLIES libnet-dns-perl(c) AND perl(c)) AND 
 (NOT xserver-xorg-input-fpit~1(c)) AND 
 (NOT sweeper~3(c)) AND 
 (NOT gnustep~1(c)) AND 
 (NOT libreadline5-dbg~1(c)) AND 
 (NOT pyflakes~2(c)) AND 
 (NOT zabbix-proxy-mysql~1(c)) AND 
 (NOT libmusic1~1(c)) AND 
 (NOT php-radius-legacy~1(c)) AND 
 (NOT libpoppler0c2~2(c)) AND 
 (NOT liblocale-maketext-fuzzy-perl~1(c)) AND 
 (NOT libextractor-dbg~2(c)) AND 
 (NOT scantv~2(c)) AND 
 (NOT vigor~1(c)) AND 
 (NOT xpenguins-applet~2(c)) AND 
 (NOT python-dsv~2(c)) AND 
 (NOT octave-missing-functions~2(c)) AND 
 (NOT broffice.org~1(c)) AND 
 (NOT libopenexr-dev~5(c)) AND 
 (NOT libmoosex-async-perl~1(c)) AND 
 (NOT librrdp-perl~1(c)) AND 
 (NOT uucpsend~2(c)) AND 
 (NOT kdelibs-dbg~3(c)) AND 
 (erubis~1(c) IMPLIES ruby1.8(c) AND liberubis-ruby1.8(c)) AND 
 (NOT gjiten~1(c)) AND 
 (NOT libcoveb1-headers~1(c)) AND 
 (NOT libsmbclient-dev~4(c)) AND 
 (NOT epic4~3(c)) AND 
 (NOT python-twisted-snmp~1(c)) AND 
 (NOT sdm-terminal~1(c)) AND 
 (NOT libosgcal-dev~1(c)) AND 
 (NOT systemtap-server~1(c)) AND 
 (NOT libunistring-dev~1(c)) AND 
 (NOT libsoup2.2-dev~3(c)) AND 
 (NOT libx11-6~6(c)) AND 
 (NOT dictionaries-common~20(c)) AND 
 (NOT junior-kde~1(c)) AND 
 (NOT libnetclasses-dev~1(c)) AND 
 (NOT phpunit~1(c)) AND 
 (NOT libdata-random-perl~3(c)) AND 
 (NOT libopenafs-dev~2(c)) AND 
 (NOT php5-sqlite~3(c)) AND 
 (NOT cupt~1(c)) AND 
 (NOT openoffice.org-l10n-xh~4(c)) AND 
 (NOT libslp1~2(c)) AND 
 (NOT xmms2-plugin-modplug~3(c)) AND 
 (NOT pike7.6-gl~1(c)) AND 
 (NOT debian-edu-doc~2(c)) AND 
 (NOT openoffice.org-l10n-ml-in~2(c)) AND 
 (libhtml-simpleparse-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT xmp-x11~1(c)) AND 
 (NOT libmysqld-pic~1(c)) AND 
 (NOT libshisa-dev~2(c)) AND 
 (NOT maildrop~1(c)) AND 
 (NOT libwebauth1~2(c)) AND 
 (NOT dvi2ps-fontdata-n2a~1(c)) AND 
 (NOT libmoosex-app-cmd-perl~1(c)) AND 
 (doclifter~2(c) IMPLIES python~22(c)) AND 
 (NOT libdbd-sqlite2-perl~2(c)) AND 
 (NOT mecab-utils~3(c)) AND 
 (NOT synce-trayicon~1(c)) AND 
 (NOT eclipse-common-nls~1(c)) AND 
 (NOT libnewt0.52~4(c)) AND 
 (NOT avscan~2(c)) AND 
 (NOT linux-headers-2.6.26-bpo.2-all~1(c)) AND 
 (NOT xpostit~2(c)) AND 
 (NOT haskell-devscripts~2(c)) AND 
 (NOT libgdcm2.0~4(c)) AND 
 (NOT libtntnet-dev~2(c)) AND 
 (libnbio2-java~1(c) IMPLIES gcj-4.4-jre~2(c) AND java-common(c)) AND 
 (libphp-serialization-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT pymetrics~1(c)) AND 
 (NOT libqyotoshared1~4(c)) AND 
 (NOT gromit~1(c)) AND 
 (NOT cl-clue~1(c)) AND 
 (NOT libmojito-dev~1(c)) AND 
 (NOT libyadis-ruby~1(c)) AND 
 (NOT amanda-client~1(c)) AND 
 (mediawiki-extensions~2(c) IMPLIES mediawiki(c)) AND 
 (iceweasel-l10n-bn-bd~1(c) IMPLIES iceweasel~16(c) AND iceweasel~5(c)) AND 
 (NOT aiksaurus~1(c)) AND 
 (libode0-dev~1(c) IMPLIES libode0c2(c)) AND 
 (NOT bouml~3(c)) AND 
 (NOT gnome-themes~3(c)) AND 
 (NOT geany-plugin-gdb~2(c)) AND 
 (NOT vlc-plugin-sdl~2(c)) AND 
 (NOT libf2c2~1(c)) AND 
 (NOT cmatrix~1(c)) AND 
 (NOT sendpage-server~2(c)) AND 
 (NOT timemachine~1(c)) AND 
 (NOT libcollectdclient0~2(c)) AND 
 (NOT libarchive1~2(c)) AND 
 (NOT ltsp-utils~1(c)) AND 
 (NOT ejabberd~1(c)) AND 
 (NOT gnomemeeting~1(c)) AND 
 (NOT libgsmme1c2a~2(c)) AND 
 (NOT awn-applets-python-extras~1(c)) AND 
 (NOT libtokyocabinet-ruby1.9~1(c)) AND 
 (NOT liblua5.1-sql-sqlite3-dev~1(c)) AND 
 (NOT libtokyocabinet-ruby1.8~1(c)) AND 
 (NOT openoffice.org-l10n-vi~4(c)) AND 
 (NOT python-egenix-mxstack~1(c)) AND 
 (NOT cfengine3~1(c)) AND 
 (NOT fetchmail~2(c)) AND 
 (NOT subunit~1(c)) AND 
 (NOT cfengine2~1(c)) AND 
 (libnet-whois-ripe-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT libgsm1-dev~1(c)) AND 
 (NOT linux-image-2.6.26-bpo.1-amd64~1(c)) AND 
 (NOT openoffice.org-l10n-ve~4(c)) AND 
 (vlc-dbg~1(c) IMPLIES vlc-nox~4(c)) AND 
 (NOT xiphos~1(c)) AND 
 (NOT guile-cairo-dev~1(c)) AND 
 (NOT konversation~3(c)) AND 
 (iceweasel-scrapbook~1(c) IMPLIES (iceweasel~16(c) OR iceweasel~5(c))) AND 
 (NOT libpocoxml8-dbg~1(c)) AND 
 (NOT ctsim~3(c)) AND 
 (liboping-dev~1(c) IMPLIES liboping0~6(c)) AND 
 (NOT egoboo~1(c)) AND 
 (cl-hyperobject~2(c) IMPLIES common-lisp-controller~17(c) AND cl-kmrcl(c) AND cl-rt(c)) AND 
 (NOT liblouis0~1(c)) AND 
 (NOT geany-plugin-addons~2(c)) AND 
 (NOT bigloo~4(c)) AND 
 (NOT libgtk2-trayicon-perl~2(c)) AND 
 (NOT libocamlnet-ssl-ocaml~2(c)) AND 
 (NOT grafx2~1(c)) AND 
 (NOT libgcgi-dev~1(c)) AND 
 (icedove-attachmentreminder~1(c) IMPLIES (icedove~13(c) OR icedove~5(c))) AND 
 (NOT xfce4-mailwatch-plugin~2(c)) AND 
 (NOT openoffice.org-l10n-uk~4(c)) AND 
 (NOT agave~1(c)) AND 
 (NOT extract~3(c)) AND 
 (NOT spamoracle~2(c)) AND 
 (NOT libghc6-http-prof~1(c)) AND 
 (NOT libkate1~2(c)) AND 
 (NOT libcojets2-dev~1(c)) AND 
 (libpostscript-file-perl~2(c) IMPLIES perl(c)) AND 
 (NOT libggzdmodpp0~2(c)) AND 
 (NOT libxsettings0-dbg~1(c)) AND 
 (NOT newt-tcl~2(c)) AND 
 (NOT selinux-basics~2(c)) AND 
 (NOT libs3d2~3(c)) AND 
 (NOT libvideo-fourcc-info-perl~1(c)) AND 
 (NOT libggzdmod++-dev~1(c)) AND 
 (NOT ethereal~3(c)) AND 
 (NOT pdf2svg~1(c)) AND 
 (NOT gausssum~1(c)) AND 
 (NOT openoffice.org-l10n-ts~4(c)) AND 
 (NOT openoffice.org-l10n-tr~4(c)) AND 
 (NOT mplayerthumbs~1(c)) AND 
 (NOT ibverbs-utils~1(c)) AND 
 (NOT gnumail.app~2(c)) AND 
 (NOT kdeadmin~2(c)) AND 
 (NOT openoffice.org-l10n-tn~4(c)) AND 
 (NOT libnjb-examples~2(c)) AND 
 (NOT lib32v4l-dev~2(c)) AND 
 (NOT ttf-telugu-fonts~2(c)) AND 
 (libsyntax-highlight-perl-improved-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT libview2-dbg~1(c)) AND 
 (NOT libcv0.9.7-0~1(c)) AND 
 (NOT libjhdf4-java~1(c)) AND 
 (NOT libpng12-0~8(c)) AND 
 (python-doc~2(c) IMPLIES python2.5-doc~3(c)) AND 
 (NOT openoffice.org-l10n-th~4(c)) AND 
 (NOT libgsf-gnome-1-dev~2(c)) AND 
 (NOT mozilla-opensc~3(c)) AND 
 (NOT openoffice.org-l10n-tg~4(c)) AND 
 (phpwiki~2(c) IMPLIES (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c)) AND (lighttpd~4(c) OR cherokee~4(c) OR lighttpd~5(c) OR apache-ssl~6(c) OR apache2-mpm-prefork~6(c) OR lighttpd~4(c) OR cherokee~4(c) OR lighttpd~5(c) OR apache-ssl~6(c) OR apache2-mpm-prefork~6(c) OR fnord~2(c) OR webfs~1(c) OR mini-httpd~1(c) OR aolserver4-daemon~1(c) OR ebhttpd~1(c) OR apache2(c) OR apache2-mpm-prefork~6(c) OR apache2-mpm-prefork~6(c)) AND libapache2-mod-php5(c) AND php-db(c) AND (php5-sqlite(c) OR php5-pgsql(c)) AND ucf~13(c) AND dbconfig-common~13(c)) AND 
 (liblwp-authen-wsse-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT dvdbackup~2(c)) AND 
 (NOT mimedefang~2(c)) AND 
 (NOT nethack-qt~2(c)) AND 
 (NOT libapache-mod-backhand~1(c)) AND 
 (NOT thelastripper~1(c)) AND 
 (NOT openoffice.org-l10n-sv~4(c)) AND 
 (NOT gobject-introspection-freedesktop~2(c)) AND 
 (NOT openoffice.org-l10n-st~4(c)) AND 
 (NOT libitext-java-gcj~2(c)) AND 
 (NOT openoffice.org-l10n-ss~4(c)) AND 
 (libxerces2-java~5(c) IMPLIES (gcj-4.4-jre-headless~3(c) OR gcj-4.4-jre-headless~3(c) OR gcj-4.4-jre-headless~3(c) OR gcj-4.4-jre-headless~3(c)) AND libjaxp1.3-java(c)) AND 
 (NOT gnurobbo~1(c)) AND 
 (NOT opie-client~1(c)) AND 
 (NOT rman~3(c)) AND 
 (NOT libtracker-gtk0~2(c)) AND 
 (NOT mono-jay~3(c)) AND 
 (NOT openoffice.org-l10n-sl~4(c)) AND 
 (NOT unadf~1(c)) AND 
 (NOT libslang2-dev~2(c)) AND 
 (NOT openoffice.org-l10n-sk~4(c)) AND 
 (NOT texlive-lang-indic~5(c)) AND 
 (NOT usepackage~1(c)) AND 
 (libhook-lexwrap-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT zope-stripogram~1(c)) AND 
 (NOT libboost-signals1.35.0~1(c)) AND 
 (NOT ctrlproxy~2(c)) AND 
 (NOT openssl-blacklist-extra~2(c)) AND 
 (NOT wipl-client-exec~1(c)) AND 
 (NOT gobjc++-4.4-multilib~1(c)) AND 
 (libregexp-java~4(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c) OR gcj-4.4-jre-headless~3(c) OR gcj-4.4-jre-headless~3(c))) AND 
 (NOT libapt-pkg-perl~4(c)) AND 
 (NOT openoffice.org-l10n-rw~4(c)) AND 
 (NOT libiphone-dev~1(c)) AND 
 (NOT openoffice.org-l10n-ru~4(c)) AND 
 (NOT clara~1(c)) AND 
 (NOT kde-i18n-engb~2(c)) AND 
 (NOT gnupg-agent~1(c)) AND 
 (NOT linux-headers-2.6-vserver-amd64~1(c)) AND 
 (NOT rep-gtk-gnome~1(c)) AND 
 (NOT libyate1.0.0~1(c)) AND 
 (NOT seyon~2(c)) AND 
 (NOT yagiuda~3(c)) AND 
 (NOT libcelt0~4(c)) AND 
 (NOT nanourl~2(c)) AND 
 (libdata-format-html-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT libmudflap0-4.2-dev~1(c)) AND 
 (NOT gpe-announce~1(c)) AND 
 (epylog~1(c) IMPLIES python~22(c) AND python-support~7(c) AND python-libxml2(c)) AND 
 (NOT easypg~2(c)) AND 
 (NOT unace~1(c)) AND 
 (NOT libfltk1.1~8(c)) AND 
 (NOT libpam-krb5~5(c)) AND 
 (libzip-ruby1.8~1(c) IMPLIES libruby1.8~5(c)) AND 
 (NOT libaudio-flac-header-perl~1(c)) AND 
 (libgsm1-dbg~1(c) IMPLIES libgsm1~6(c)) AND 
 (NOT lirc-svga~2(c)) AND 
 (NOT mock~2(c)) AND 
 (NOT libghc6-cgi-dev~1(c)) AND 
 (libsnmp-mib-compiler-perl~1(c) IMPLIES perl~69(c) AND libdata-compare-perl~2(c)) AND 
 (NOT libmrss0-dev~1(c)) AND 
 (NOT mailfront~1(c)) AND 
 (NOT ncurses-base~3(c)) AND 
 (NOT filler~1(c)) AND 
 (NOT libpopt-dev~4(c)) AND 
 (NOT ibp~4(c)) AND 
 (NOT firedns~2(c)) AND 
 (NOT textpattern~1(c)) AND 
 (NOT libgtkada2-bin~2(c)) AND 
 (NOT libxmlrpc-ruby~3(c)) AND 
 (NOT moaggedit~1(c)) AND 
 (NOT libmozjs2d-dbg~1(c)) AND 
 (NOT twiki~1(c)) AND 
 (NOT libextractor-java0~2(c)) AND 
 (NOT python-twisted-web~10(c)) AND 
 (NOT libitpp6-dbg~1(c)) AND 
 (nwatch~1(c) IMPLIES perl~69(c) AND libnet-pcap-perl(c) AND (ndiff(c) OR nmap~7(c))) AND 
 (NOT ksplash~2(c)) AND 
 (NOT gir1.0-notify-0.4~1(c)) AND 
 (NOT clanbomber~2(c)) AND 
 (NOT gnokii-smsd~1(c)) AND 
 (NOT xdiskusage~1(c)) AND 
 (NOT mas-utils~1(c)) AND 
 (libpango1-ruby1.8-dbg~2(c) IMPLIES libpango1-ruby1.8~2(c)) AND 
 (NOT egroupware-sambaadmin~2(c)) AND 
 (NOT openoffice.org-l10n-pt~4(c)) AND 
 (NOT libfile-mimeinfo-perl~2(c)) AND 
 (NOT perl~69(c)) AND 
 (NOT libsdl-mixer1.2~3(c)) AND 
 (NOT highlight~1(c)) AND 
 (libmath-fibonacci-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT ticgit~1(c)) AND 
 (iceweasel-dbg~1(c) IMPLIES iceweasel~5(c)) AND 
 (libclass-dbi-fromcgi-perl~1(c) IMPLIES perl~69(c) AND libclass-dbi-perl~8(c) AND libcgi-untaint-perl~3(c)) AND 
 (NOT sysfsutils~1(c)) AND 
 (NOT 9base~3(c)) AND 
 (NOT openoffice.org-l10n-pl~4(c)) AND 
 (NOT libsoundtouch-ocaml-dev~1(c)) AND 
 (NOT ps2eps~2(c)) AND 
 (NOT libapache2-svn~1(c)) AND 
 (NOT libsdl-console~2(c)) AND 
 (ttcn-el~1(c) IMPLIES (emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs~1(c) OR xemacs21-mule-canna-wnn~2(c) OR xemacs21-mule-canna-wnn~2(c))) AND 
 (NOT libdx4~2(c)) AND 
 (netenv~2(c) IMPLIES (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c)) AND dialog~8(c)) AND 
 (NOT libgempc430~3(c)) AND 
 (NOT libgeo-coordinates-utm-perl~2(c)) AND 
 (NOT linux-source-2.6.24~14(c)) AND 
 (NOT python-gobject-dbg~1(c)) AND 
 (NOT sbcl~7(c)) AND 
 (NOT aiccu~2(c)) AND 
 (NOT ipppd~3(c)) AND 
 (NOT libace-flreactor5.4.7c2a~2(c)) AND 
 (python-matplotlib-data~3(c) IMPLIES ttf-lyx(c)) AND 
 (NOT shogun-octave-modular~1(c)) AND 
 (NOT libxcb-shm0-dev~1(c)) AND 
 (NOT gnubik~2(c)) AND 
 (NOT gnome-sudoku~1(c)) AND 
 (NOT tinyerp-client~1(c)) AND 
 (libtext-tabulardisplay-perl~1(c) IMPLIES perl(c)) AND 
 (libtext-wrapper-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT libxml++2.6-2~4(c)) AND 
 (NOT libdevmapper1.02~2(c)) AND 
 (NOT mhddfs~2(c)) AND 
 (NOT libxmltooling-dev~2(c)) AND 
 (NOT libxslt1-dev~6(c)) AND 
 (NOT gocr-tk~1(c)) AND 
 (NOT libitpp6gf~2(c)) AND 
 (libsmdkim-dev~3(c) IMPLIES libsmdkim2~3(c)) AND 
 (NOT colrdx~2(c)) AND 
 (NOT kxstitch~1(c)) AND 
 (NOT libbogl0~2(c)) AND 
 (NOT zsh-static~1(c)) AND 
 (libghc6-irc-doc~1(c) IMPLIES ghc6-doc(c)) AND 
 (NOT logcheck~4(c)) AND 
 (NOT root-portal~1(c)) AND 
 (NOT python-creoleparser~1(c)) AND 
 (NOT libnbio0~1(c)) AND 
 (help2man~1(c) IMPLIES perl~69(c)) AND 
 (NOT omega-rpg~2(c)) AND 
 (NOT libdbm-ruby1.9~2(c)) AND 
 (NOT libdbm-ruby1.8~2(c)) AND 
 (libdbus-glib-1-2-dbg~1(c) IMPLIES libdbus-glib-1-2~6(c)) AND 
 (NOT openoffice.org-l10n-ns~4(c)) AND 
 (NOT datapacker~1(c)) AND 
 (NOT kbibtex~1(c)) AND 
 (NOT openoffice.org-l10n-nr~4(c)) AND 
 (NOT daemontools~2(c)) AND 
 (NOT libosmesa6~3(c)) AND 
 (NOT python-cupsutils~1(c)) AND 
 (NOT gargoyle-free~1(c)) AND 
 (NOT openoffice.org-l10n-nn~4(c)) AND 
 (NOT tree-ppuzzle~2(c)) AND 
 (NOT vala-utils~1(c)) AND 
 (NOT pam-dbus-notify~1(c)) AND 
 (NOT openoffice.org-l10n-nl~4(c)) AND 
 (NOT libcommons-launcher-java~2(c)) AND 
 (NOT libxcb-shm0~1(c)) AND 
 (NOT xserver-xorg-video-ivtv~1(c)) AND 
 (libatk1-ruby~3(c) IMPLIES libatk1-ruby1.8(c)) AND 
 (NOT cpphs~1(c)) AND 
 (NOT libdv4~2(c)) AND 
 (NOT libmrss0-dbg~1(c)) AND 
 (NOT libgempc410~3(c)) AND 
 (NOT mdetect~2(c)) AND 
 (NOT openoffice.org-l10n-ne~4(c)) AND 
 (NOT libsundials-cvodes1~1(c)) AND 
 (NOT libauthen-krb5-admin-perl~1(c)) AND 
 (NOT urlwatch~1(c)) AND 
 (NOT libecal1.2-6~3(c)) AND 
 (NOT openoffice.org-l10n-nb~4(c)) AND 
 (NOT apt-dater~2(c)) AND 
 (NOT libxmlrpc3-server-java~1(c)) AND 
 (lives-data~1(c) IMPLIES python(c)) AND 
 (pdfposter~1(c) IMPLIES python~22(c) AND python-central~22(c) AND python-pypdf~2(c)) AND 
 (NOT python-dhm~2(c)) AND 
 (NOT libghc6-hdbc-odbc-dev~5(c)) AND 
 (NOT kopete-silc-plugin~2(c)) AND 
 (libjgrapht-java~1(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c))) AND 
 (NOT hamfax~3(c)) AND 
 (NOT libcommandline-ruby1.8~1(c)) AND 
 (tex4ht-common~2(c) IMPLIES texlive-base-bin(c)) AND 
 (NOT openoffice.org-l10n-mk~4(c)) AND 
 (libipc-signal-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT xawtv-plugins~1(c)) AND 
 (NOT libprotobuf-dev~3(c)) AND 
 (NOT libgdal1-1.3.2-dev~1(c)) AND 
 (NOT xmms2-plugin-wma~1(c)) AND 
 (NOT libvdk2-dev~4(c)) AND 
 (junit~3(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c) OR gcj-4.4-jre~2(c))) AND 
 (NOT bdii4~2(c)) AND 
 (NOT openoffice.org-l10n-lv~4(c)) AND 
 (NOT xbatt~2(c)) AND 
 (NOT openoffice.org-l10n-lt~4(c)) AND 
 (NOT libflickrnet2.2-cil~1(c)) AND 
 (NOT fp-units-net~1(c)) AND 
 (NOT mpich-mpd-bin~2(c)) AND 
 (NOT ncmpc~1(c)) AND 
 (NOT gkrellmitime~1(c)) AND 
 (NOT openoffice.org-l10n-lo~4(c)) AND 
 (NOT libgenders0-dev~1(c)) AND 
 (NOT hdapsd~1(c)) AND 
 (NOT libmimelib1c2a~2(c)) AND 
 (NOT pawserv~2(c)) AND 
 (NOT libtrang-java~1(c)) AND 
 (NOT libnss3-dev~4(c)) AND 
 (NOT gnarwl~2(c)) AND 
 (libsnmp-ruby~2(c) IMPLIES libsnmp-ruby1.8(c)) AND 
 (NOT xfonts-knickers~2(c)) AND 
 (NOT libfusionsound-dev~1(c)) AND 
 (NOT python-tp-client~2(c)) AND 
 (libgetopt-tabular-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT cscope~2(c)) AND 
 (NOT timidity-daemon~1(c)) AND 
 (libxcb-shm0-dbg~1(c) IMPLIES libxcb-shm0~1(c)) AND 
 (NOT udhcpc~4(c)) AND 
 (NOT libgnome2-ruby1.8-dbg~2(c)) AND 
 (NOT stgit-contrib~2(c)) AND 
 (NOT libpcap-ruby1.8~2(c)) AND 
 (libclone-pp-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT libglobus-gsi-cert-utils-dev~4(c)) AND 
 (NOT r-cran-mnp~2(c)) AND 
 (NOT ttf-umefont~1(c)) AND 
 (NOT libgsasl7~1(c)) AND 
 (NOT gnomeradio~1(c)) AND 
 (NOT l7-filter-userspace~1(c)) AND 
 (NOT libapq-common-dev~1(c)) AND 
 (NOT openoffice.org-l10n-ku~4(c)) AND 
 (NOT doc-rfc~1(c)) AND 
 (NOT gtk2.0-examples~3(c)) AND 
 (NOT epiphany-gecko~2(c)) AND 
 (NOT libnotify1~2(c)) AND 
 (libdtdparser-java~1(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c) OR gij(c))) AND 
 (NOT libffi5-dbg~1(c)) AND 
 (NOT openoffice.org-l10n-ko~4(c)) AND 
 (NOT kpercentage~1(c)) AND 
 (NOT gadmin-squid~1(c)) AND 
 (NOT openoffice.org-l10n-km~4(c)) AND 
 (NOT x11-xfs-utils~1(c)) AND 
 (xmltoman~2(c) IMPLIES libxml-parser-perl(c)) AND 
 (NOT liferea-xulrunner~1(c)) AND 
 (python-cxx~2(c) IMPLIES python~22(c) AND python~22(c) AND python-central~22(c)) AND 
 (ruby1.9-elisp~3(c) IMPLIES (emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs~1(c))) AND 
 (NOT xmms2~3(c)) AND 
 (hearse~1(c) IMPLIES (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c)) AND perl(c) AND (libmd5-perl(c) OR perl~69(c) OR perl~69(c)) AND libwww-perl(c) AND (nethack-console~2(c) OR nethack-qt~2(c) OR nethack-x11~2(c) OR nethack-console~2(c) OR nethack-qt~2(c) OR nethack-x11~2(c))) AND 
 (NOT docbook5-xml~2(c)) AND 
 (NOT libitl0~2(c)) AND 
 (libaspect-perl~1(c) IMPLIES perl~69(c)) AND 
 (cl-grt~1(c) IMPLIES common-lisp-controller~17(c) AND cl-sdl(c)) AND 
 (NOT python-mediaprofiles~2(c)) AND 
 (NOT lcdproc~2(c)) AND 
 (NOT libxcb-dpms0~1(c)) AND 
 (NOT erlang-corba~1(c)) AND 
 (NOT git-cvs~2(c)) AND 
 (NOT openoffice.org-l10n-ka~4(c)) AND 
 (NOT tv-fonts~1(c)) AND 
 (NOT kdebase-dbg~1(c)) AND 
 (NOT libspring-core-2.5-java~1(c)) AND 
 (NOT lcdf-typetools~1(c)) AND 
 (NOT libiw29~2(c)) AND 
 (NOT ax25-tools~2(c)) AND 
 (NOT v4l-conf~3(c)) AND 
 (NOT ibam~3(c)) AND 
 (NOT libiw28~2(c)) AND 
 (NOT mozilla-firefox-locale-pt-br~2(c)) AND 
 (NOT kttsd-contrib-plugins~2(c)) AND 
 (NOT libpcd-dev~1(c)) AND 
 (NOT libpoe-component-irc-perl~2(c)) AND 
 (libarchive-ar-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT libsidplay1~3(c)) AND 
 (openoffice.org-thesaurus-sk~1(c) IMPLIES openoffice.org-core~34(c) AND (dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c))) AND 
 (NOT varnish~4(c)) AND 
 (NOT autodia~2(c)) AND 
 (NOT sam2p~2(c)) AND 
 (NOT user-he~1(c)) AND 
 (NOT libgucharmap4-dev~1(c)) AND 
 (NOT python-pygame~11(c)) AND 
 (link-monitor-applet-common~1(c) IMPLIES gconf2~7(c)) AND 
 (NOT ruby-pkg-tools~2(c)) AND 
 (NOT python-gtkmozembed~3(c)) AND 
 (NOT libcrypt-rijndael-perl~1(c)) AND 
 (NOT xfce4-cpufreq-plugin~2(c)) AND 
 (libdatapager-perl~1(c) IMPLIES perl~69(c)) AND 
 (liblivejournal-perl~1(c) IMPLIES perl~69(c) AND libwww-perl(c)) AND 
 (NOT alsa-tools-gui~2(c)) AND 
 (NOT python-chardet~3(c)) AND 
 (NOT python-twisted-runner~2(c)) AND 
 (NOT tkcvs~2(c)) AND 
 (NOT uim-anthy~1(c)) AND 
 (hunspell-de-de-frami~1(c) IMPLIES (dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c))) AND 
 (NOT autofs-ldap~2(c)) AND 
 (NOT cynthiune.app~2(c)) AND 
 (NOT vtk-doc~2(c)) AND 
 (NOT openoffice.org-l10n-it~4(c)) AND 
 (NOT openoffice.org-l10n-ja~4(c)) AND 
 (NOT xmms2-plugin-html~2(c)) AND 
 (NOT cwcp~2(c)) AND 
 (NOT libopenscenegraph56~2(c)) AND 
 (NOT libboost-program-options1.35-dev~1(c)) AND 
 (NOT mrpt-apps~2(c)) AND 
 (NOT hpodder~3(c)) AND 
 (NOT lilo-config~1(c)) AND 
 (NOT pipenightdreams~3(c)) AND 
 (NOT iasl~3(c)) AND 
 (openoffice.org-thesaurus-ro~1(c) IMPLIES openoffice.org-core~34(c) AND (dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c))) AND 
 (libiconv-hook-dev~2(c) IMPLIES libiconv-hook1~2(c)) AND 
 (NOT autoconf~10(c)) AND 
 (NOT openoffice.org-l10n-in~4(c)) AND 
 (NOT python-nevow~3(c)) AND 
 (NOT gnu-smalltalk-browser~1(c)) AND 
 (NOT libmoblin-panel-dev~1(c)) AND 
 (NOT embassy-domainatrix~1(c)) AND 
 (cl-rt~2(c) IMPLIES common-lisp-controller~17(c)) AND 
 (NOT libclass-returnvalue-perl~3(c)) AND 
 (NOT nethack-console~2(c)) AND 
 (NOT xserver-xorg-input-synaptics~2(c)) AND 
 (NOT libgdata1.2-1~2(c)) AND 
 (NOT libtulip-2.0-dev~1(c)) AND 
 (liblwp-protocol-http-socketunix-perl~2(c) IMPLIES perl~69(c) AND libwww-perl(c)) AND 
 (NOT fldigi~2(c)) AND 
 (NOT libboost-wave-dev~3(c)) AND 
 (lltag~1(c) IMPLIES perl~69(c)) AND 
 (bittornado~1(c) IMPLIES python(c) AND python-support~7(c)) AND 
 (NOT brltty-x11~2(c)) AND 
 (NOT radsecproxy~1(c)) AND 
 (vim-perl~3(c) IMPLIES vim-gtk~4(c)) AND 
 (NOT ldaptor-webui~1(c)) AND 
 (NOT libgraphite3-dbg~1(c)) AND 
 (NOT clamav-milter~2(c)) AND 
 (NOT asunder~1(c)) AND 
 (NOT libglpk-java~1(c)) AND 
 (NOT finch-dev~1(c)) AND 
 (NOT libqt4-core~6(c)) AND 
 (NOT openoffice.org-l10n-hu~4(c)) AND 
 (NOT libavformat-dev~4(c)) AND 
 (NOT libnet-z3950-zoom-perl~1(c)) AND 
 (NOT libpcap0.8~2(c)) AND 
 (NOT hypermail~1(c)) AND 
 (NOT libstk0-dev~2(c)) AND 
 (NOT libtao-foxresource-dev~1(c)) AND 
 (NOT liblocale-ruby1.8~2(c)) AND 
 (NOT ruby1.9~2(c)) AND 
 (treeline~1(c) IMPLIES python~22(c) AND python-support~7(c) AND python-qt3(c)) AND 
 (NOT openoffice.org-l10n-hr~4(c)) AND 
 (NOT python-numeric-tutorial~1(c)) AND 
 (NOT revelation~2(c)) AND 
 (NOT gnuboy-svga~2(c)) AND 
 (python-crypto~3(c) IMPLIES python~22(c) AND python~22(c) AND python-central~22(c)) AND 
 (NOT spamassassin~7(c)) AND 
 (pyblosxom~1(c) IMPLIES (lighttpd~4(c) OR cherokee~4(c) OR lighttpd~5(c) OR apache-ssl~6(c) OR apache2-mpm-prefork~6(c) OR lighttpd~4(c) OR cherokee~4(c) OR lighttpd~5(c) OR apache-ssl~6(c) OR apache2-mpm-prefork~6(c) OR fnord~2(c) OR webfs~1(c) OR mini-httpd~1(c) OR aolserver4-daemon~1(c) OR ebhttpd~1(c) OR apache2(c) OR apache2-mpm-prefork~6(c) OR apache2-mpm-prefork~6(c)) AND python-support~7(c)) AND 
 (NOT libauthen-dechpwd-perl~2(c)) AND 
 (NOT nunit-gui~1(c)) AND 
 (NOT texlive-fonts-extra-doc~2(c)) AND 
 (NOT debian-reference-pl~2(c)) AND 
 (mozilla-firefox-locale-uk~2(c) IMPLIES iceweasel-l10n-uk-ua(c)) AND 
 (NOT libsexymm2~1(c)) AND 
 (NOT talkd~2(c)) AND 
 (NOT libieee1284-3~2(c)) AND 
 (NOT k3b~4(c)) AND 
 (NOT cdparanoia~2(c)) AND 
 (NOT fldiff~2(c)) AND 
 (NOT libapq-common-dbg~1(c)) AND 
 (NOT openoffice.org-l10n-he~4(c)) AND 
 (NOT libghc6-stm-dev~2(c)) AND 
 (NOT libgtkextramm0.9-12c2~1(c)) AND 
 (NOT texlive-lang-manju~4(c)) AND 
 (NOT gauche-gdbm~2(c)) AND 
 (NOT proftpd-mod-mysql~2(c)) AND 
 (NOT libwww-perl~20(c)) AND 
 (NOT libmath-calculus-differentiate-perl~1(c)) AND 
 (NOT frescobaldi~2(c)) AND 
 (NOT libglobus-rsl-assist-dev~1(c)) AND 
 (NOT python-magic-dbg~2(c)) AND 
 (NOT tdfsb~1(c)) AND 
 (NOT nethack-el~2(c)) AND 
 (NOT python-pprocess~1(c)) AND 
 (NOT libghc6-pandoc-dev~1(c)) AND 
 (NOT libxvmc1~1(c)) AND 
 (NOT kdepimlibs-dbg~1(c)) AND 
 (NOT ldirectord~3(c)) AND 
 (openoffice.org-thesaurus-pl~1(c) IMPLIES openoffice.org-core~34(c) AND (dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c))) AND 
 (NOT libecore-file-svn-03~2(c)) AND 
 (NOT geoclue-manual~1(c)) AND 
 (NOT pmidi~1(c)) AND 
 (NOT linsmith~1(c)) AND 
 (NOT tcpspy~1(c)) AND 
 (NOT syslog-summary~2(c)) AND 
 (NOT dctc~2(c)) AND 
 (NOT evolution~16(c)) AND 
 (NOT snowdrop~2(c)) AND 
 (NOT librra-tools~1(c)) AND 
 (NOT drscheme~2(c)) AND 
 (myspell-en-za~2(c) IMPLIES (dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c)) AND myspell-en-gb(c)) AND 
 (NOT openoffice.org-l10n-ga~4(c)) AND 
 (NOT zygrib~1(c)) AND 
 (NOT routeplanner-gnome~1(c)) AND 
 (cl-pg~2(c) IMPLIES common-lisp-controller~17(c)) AND 
 (NOT libsqlite3-0~5(c)) AND 
 (NOT openoffice.org-l10n-fr~4(c)) AND 
 (NOT libsms-send-perl~1(c)) AND 
 (NOT opendchub~2(c)) AND 
 (NOT libvips-dev~1(c)) AND 
 (NOT geda-gsymcheck~3(c)) AND 
 (NOT libgv-python~1(c)) AND 
 (NOT phppgadmin~1(c)) AND 
 (NOT stardict-plugin-festival~1(c)) AND 
 (NOT libpocoodbc8-dbg~1(c)) AND 
 (NOT openoffice.org-l10n-fi~4(c)) AND 
 (NOT libghc6-irc-dev~1(c)) AND 
 (NOT python-hulahop~1(c)) AND 
 (NOT libjifty-plugin-authentication-cas-perl~2(c)) AND 
 (NOT cvsd~2(c)) AND 
 (libpty-ruby~1(c) IMPLIES libruby1.8~5(c)) AND 
 (NOT python-rsvg~2(c)) AND 
 (NOT gnome-icon-theme-nuovo~2(c)) AND 
 (NOT pfqueue-dbg~2(c)) AND 
 (NOT libsdl-image1.2-dev~5(c)) AND 
 (NOT kgeography~2(c)) AND 
 (claws-mail-tools~1(c) IMPLIES claws-mail~2(c) AND perl(c) AND python(c)) AND 
 (NOT adtool~1(c)) AND 
 (NOT libenchant1c2a~1(c)) AND 
 (NOT bible-kjv~3(c)) AND 
 (NOT mozilla-firefox-locale-en-gb~2(c)) AND 
 (NOT openoffice.org-l10n-et~4(c)) AND 
 (NOT openoffice.org-l10n-fa~4(c)) AND 
 (NOT aufs-modules-2.6.30-2-amd64~1(c)) AND 
 (NOT openoffice.org-l10n-es~4(c)) AND 
 (NOT libxtst6-dbg~2(c)) AND 
 (NOT libgail-common~5(c)) AND 
 (NOT camping~1(c)) AND 
 (NOT libopenais-legacy-2~1(c)) AND 
 (NOT multex-bin~3(c)) AND 
 (NOT openoffice.org-l10n-eo~4(c)) AND 
 (NOT mt-daapd~1(c)) AND 
 (NOT cfingerd~2(c)) AND 
 (NOT xulrunner-1.9~8(c)) AND 
 (NOT openoffice.org-l10n-el~4(c)) AND 
 (NOT xpilot-client-rplay~1(c)) AND 
 (NOT kview~1(c)) AND 
 (NOT cantlr~1(c)) AND 
 (NOT libsp-gxmlcpp1c2a~2(c)) AND 
 (NOT libcompress-bzip2-perl~2(c)) AND 
 (NOT linux-patch-exec-shield~1(c)) AND 
 (NOT openoffice.org-l10n-dz~4(c)) AND 
 (NOT burgerspace~3(c)) AND 
 (NOT libffcall1~1(c)) AND 
 (NOT libdm0~2(c)) AND 
 (NOT python-turbojson~4(c)) AND 
 (NOT libjpeg62~2(c)) AND 
 (NOT lp-solve~1(c)) AND 
 (NOT minbif-common~1(c)) AND 
 (NOT xautomation~2(c)) AND 
 (NOT gir1.0-gtk-2.0~2(c)) AND 
 (NOT xball~2(c)) AND 
 (libnetaddr-ip-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT squirrelmail-secure-login~1(c)) AND 
 (NOT libwxbase2.6-dev~1(c)) AND 
 (NOT python-pyepl~1(c)) AND 
 (NOT libomnithread3c2~3(c)) AND 
 (NOT libgl1-mesa-glx~3(c)) AND 
 (NOT openoffice.org-l10n-cy~4(c)) AND 
 (NOT openbabel~1(c)) AND 
 (NOT openoffice.org-l10n-de~4(c)) AND 
 (NOT protobuf-compiler~1(c)) AND 
 (NOT libpod-xhtml-perl~1(c)) AND 
 (NOT isdnactivecards~3(c)) AND 
 (kdetoys-dbg~2(c) IMPLIES kdelibs-dbg(c)) AND 
 (NOT openoffice.org-l10n-da~4(c)) AND 
 (NOT openoffice.org-l10n-cs~4(c)) AND 
 (libhugs-uulib~1(c) IMPLIES (hugs~2(c) OR hugs~5(c))) AND 
 (NOT cyrus-nntpd-2.2~2(c)) AND 
 (NOT mimefilter~1(c)) AND 
 (s3d-dbg~2(c) IMPLIES (kism3d~2(c) OR s3dx11gate~2(c) OR libs3dw2~3(c) OR libs3d2~3(c))) AND 
 (NOT libroot-bindings-python-dev~1(c)) AND 
 (NOT python-jabberbot~1(c)) AND 
 (NOT yardradius~1(c)) AND 
 (NOT libdb4.6-tcl~2(c)) AND 
 (NOT libavfilter0~2(c)) AND 
 (NOT libgnome-pilot2~2(c)) AND 
 (NOT faqomatic~1(c)) AND 
 (NOT libglobus-gridftp-server0~1(c)) AND 
 (liblocale-po-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT cyrus-dev-2.2~1(c)) AND 
 (NOT netpipe-pvm~1(c)) AND 
 (NOT gnustep-back0.16-art~1(c)) AND 
 (NOT php5-apache2-mod-bt~2(c)) AND 
 (libglobus-rls-client-doc~2(c) IMPLIES libglobus-rls-client-dev~1(c)) AND 
 (NOT libg20~2(c)) AND 
 (cl-ptester~1(c) IMPLIES common-lisp-controller~17(c)) AND 
 (NOT libsufary-ruby1.8~1(c)) AND 
 (libjboss-webservices-java~1(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c) OR gcj-4.4-jre~2(c))) AND 
 (NOT vectoroids~2(c)) AND 
 (NOT ggzcore-bin~5(c)) AND 
 (NOT libgd2-noxpm-dev~2(c)) AND 
 (NOT macchanger~2(c)) AND 
 (NOT openoffice.org-l10n-ca~4(c)) AND 
 (NOT openoffice.org-wiki-publisher~2(c)) AND 
 (NOT openoffice.org-l10n-bs~4(c)) AND 
 (NOT prj2make-sharp~1(c)) AND 
 (NOT unison-gtk~2(c)) AND 
 (NOT dchroot-dsa~2(c)) AND 
 (NOT casper~1(c)) AND 
 (NOT openoffice.org-l10n-br~4(c)) AND 
 (NOT thunar-media-tags-plugin~1(c)) AND 
 (tkcon~2(c) IMPLIES (tk8.5~3(c) OR tk8.5~3(c) OR tk8.4~5(c) OR tk~4(c))) AND 
 (libjcode-pm-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT fcheck~2(c)) AND 
 (NOT libdmx-dev~3(c)) AND 
 (NOT python-pysqlite1.1~1(c)) AND 
 (NOT libgl2ps0-dbg~2(c)) AND 
 (NOT wsoundserver~1(c)) AND 
 (NOT xmms-cdread~1(c)) AND 
 (NOT openoffice.org-l10n-bn~4(c)) AND 
 (kdelibs-data~6(c) IMPLIES hicolor-icon-theme(c)) AND 
 (gpc-doc~3(c) IMPLIES gpc-4.1-doc~2(c)) AND 
 (NOT wireshark~5(c)) AND 
 (NOT stumpwm~2(c)) AND 
 (NOT sugar-session-0.86~1(c)) AND 
 (NOT xserver-xorg-video-intel-dbg~1(c)) AND 
 (NOT osm2navit~1(c)) AND 
 (NOT vlc-plugin-svgalib~1(c)) AND 
 (NOT libclone-perl~7(c)) AND 
 (NOT openoffice.org-l10n-bg~4(c)) AND 
 (NOT openoffice.org-presentation-minimizer~2(c)) AND 
 (NOT typespeed~1(c)) AND 
 (NOT sgmlspl~1(c)) AND 
 (NOT libnet-sftp2-ruby~1(c)) AND 
 (NOT debian-reference-it~2(c)) AND 
 (NOT debian-reference-ja~2(c)) AND 
 (NOT ap-utils~1(c)) AND 
 (NOT kghostview~4(c)) AND 
 (NOT python-yaml~3(c)) AND 
 (NOT bidiv~2(c)) AND 
 (NOT gstreamer0.8-gtk~2(c)) AND 
 (NOT libcairo-directfb2-dev~2(c)) AND 
 (NOT mono-tools-devel~2(c)) AND 
 (NOT chiark-really~1(c)) AND 
 (NOT g++~9(c)) AND 
 (NOT libax25-dev~3(c)) AND 
 (NOT aqbanking-tool~1(c)) AND 
 (NOT spectemu-svga~1(c)) AND 
 (NOT libtiff4-dev~3(c)) AND 
 (NOT postgresql-filedump-8.3~1(c)) AND 
 (NOT texlive-base-bin-doc~4(c)) AND 
 (libxdelta2-dev~2(c) IMPLIES libxdelta2~3(c)) AND 
 (NOT postgresql-filedump-8.1~1(c)) AND 
 (NOT libnetfilter-queue1~1(c)) AND 
 (NOT libdb4.7-tcl~1(c)) AND 
 (libmono-cecil0.5-cil~3(c) IMPLIES (libmono-corlib2.0-cil~6(c) OR libmono-corlib2.0-cil~10(c)) AND libmono-system2.0-cil~13(c)) AND 
 (NOT libglade2-0~4(c)) AND 
 (NOT libsigcperl-dev~1(c)) AND 
 (NOT aribas~2(c)) AND 
 (NOT libpcp-mmv1-dev~1(c)) AND 
 (NOT openoffice.org-l10n-af~4(c)) AND 
 (libhugs-convertible~1(c) IMPLIES hugs~5(c)) AND 
 (NOT xmakemol-gl~2(c)) AND 
 (NOT gstreamer0.8-gsm~2(c)) AND 
 (NOT whysynth~1(c)) AND 
 (NOT libfreefem-dev~1(c)) AND 
 (libconvert-binhex-perl~3(c) IMPLIES perl~69(c)) AND 
 (NOT cmap-adobe-cns1~2(c)) AND 
 (openoffice.org-thesaurus-it~1(c) IMPLIES openoffice.org-core~34(c) AND (dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c))) AND 
 (NOT pterm~2(c)) AND 
 (NOT x11proto-resource-dev~2(c)) AND 
 (NOT blobwars~3(c)) AND 
 (NOT bibclean~2(c)) AND 
 (tcl8.5-dev~2(c) IMPLIES tcl8.5~3(c)) AND 
 (bsfilter~2(c) IMPLIES ruby1.8(c)) AND 
 (NOT liboil0.3-dev~1(c)) AND 
 (NOT members~1(c)) AND 
 (NOT libqhull-dev~1(c)) AND 
 (NOT syslinux~2(c)) AND 
 (NOT libkonq4~6(c)) AND 
 (sysv-rc-conf~1(c) IMPLIES libcurses-ui-perl(c) AND sysv-rc(c)) AND 
 (NOT libwmf-bin~1(c)) AND 
 (NOT libwxbase2.6-dbg~1(c)) AND 
 (NOT conserver-server~2(c)) AND 
 (NOT libsm-dev~3(c)) AND 
 (NOT sineshaper~1(c)) AND 
 (NOT irqbalance~1(c)) AND 
 (NOT libogg-ocaml~2(c)) AND 
 (NOT eruby~2(c)) AND 
 (NOT libglpk-dev~1(c)) AND 
 (NOT libxinerama-dev~3(c)) AND 
 (NOT xfonts-cronyx-cp1251-100dpi~1(c)) AND 
 (libodbc-ruby1.8-dbg~1(c) IMPLIES libodbc-ruby1.8~2(c)) AND 
 (NOT myspell-tools~1(c)) AND 
 (NOT ssystem~1(c)) AND 
 (NOT libgssdp-1.0-2~2(c)) AND 
 (NOT libgssdp-1.0-1~2(c)) AND 
 (NOT libode1sp~1(c)) AND 
 (NOT libtaoframework-devil1.6-cil~1(c)) AND 
 (NOT libbio-ruby~1(c)) AND 
 (NOT r-cran-rpvm~2(c)) AND 
 (NOT fping~3(c)) AND 
 (libsyntax-highlight-engine-kate-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT libgit-ruby~1(c)) AND 
 (NOT kworldclock~2(c)) AND 
 (NOT esteidutil~1(c)) AND 
 (NOT libqt3-mt-odbc~1(c)) AND 
 (NOT libparagui1.0c2a~3(c)) AND 
 (libsetools-java~1(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c)) AND libsetools-jni~1(c) AND libsetools-jni~1(c)) AND 
 (NOT libdbd-odbc-ruby1.8~1(c)) AND 
 (NOT bcron-run~1(c)) AND 
 (dh-lisp~2(c) IMPLIES debhelper~31(c) AND perl(c)) AND 
 (NOT libxalan110~2(c)) AND 
 (NOT imaprowl~1(c)) AND 
 (NOT debian-reference-fr~2(c)) AND 
 (NOT libspectre1-dbg~1(c)) AND 
 (NOT python-tegaki~3(c)) AND 
 (NOT itagalog~1(c)) AND 
 (NOT libcwd~2(c)) AND 
 (NOT python-tclink~1(c)) AND 
 (NOT digikam-doc~1(c)) AND 
 (NOT zmakebas~1(c)) AND 
 (NOT libtemplate-multilingual-perl~2(c)) AND 
 (NOT libsoci-core-gcc-dev~1(c)) AND 
 (NOT libboost-program-options-dev~2(c)) AND 
 (NOT gcc-doc~2(c)) AND 
 (NOT libanthy-dev~1(c)) AND 
 (NOT zope-linguaplone~4(c)) AND 
 (NOT ktimetracker~2(c)) AND 
 (NOT libmgl-wx5~1(c)) AND 
 (NOT moodbar~1(c)) AND 
 (NOT popa3d~2(c)) AND 
 (NOT libcdg123-0~1(c)) AND 
 (NOT xen-utils-unstable~1(c)) AND 
 (NOT xfonts-thai-poonlap~1(c)) AND 
 (NOT batman-adv-source~2(c)) AND 
 (NOT intel2gas~1(c)) AND 
 (NOT linux-patch-evms~1(c)) AND 
 (NOT mixer.app~1(c)) AND 
 (NOT synaptic~4(c)) AND 
 (NOT libdb4.4-java~1(c)) AND 
 (NOT linux-image-2.6.26-2-vserver-amd64~1(c)) AND 
 (NOT verbiste-gnome~1(c)) AND 
 (liblocale-us-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT debian-reference-es~2(c)) AND 
 (NOT pathfinder-utils~1(c)) AND 
 (NOT pessulus~1(c)) AND 
 (NOT patchage~1(c)) AND 
 (NOT libobparser21~1(c)) AND 
 (NOT workrave~1(c)) AND 
 (NOT yeahconsole~2(c)) AND 
 (NOT debian-reference-en~2(c)) AND 
 (linux-image-2.6-vserver-em64t-p4-smp~1(c) IMPLIES linux-image-2.6-vserver-amd64(c)) AND 
 (NOT scim-chinese~3(c)) AND 
 (NOT libbtf1.1.0~2(c)) AND 
 (iceweasel-l10n-es-mx~1(c) IMPLIES iceweasel~16(c) AND iceweasel~5(c)) AND 
 (libkate1-dbg~1(c) IMPLIES libkate1~2(c)) AND 
 (NOT htmldoc~3(c)) AND 
 (NOT libroxen-sqlcounter~1(c)) AND 
 (NOT ctie~1(c)) AND 
 (NOT mksh~1(c)) AND 
 (parsewiki~1(c) IMPLIES perl(c)) AND 
 (iceweasel-downthemall~1(c) IMPLIES iceweasel(c)) AND 
 (NOT darcs~3(c)) AND 
 (NOT libsigc++-2.0-dev~3(c)) AND 
 (NOT marote~3(c)) AND 
 (NOT wine~4(c)) AND 
 (NOT ipopd~3(c)) AND 
 (NOT libobparser16~1(c)) AND 
 (NOT xserver-xorg-video-cirrus~2(c)) AND 
 (NOT liboil0.3-dbg~1(c)) AND 
 (iceowl-l10n-gl-es~1(c) IMPLIES iceowl~3(c) AND iceowl~3(c)) AND 
 (freealchemist~1(c) IMPLIES python-pygame(c)) AND 
 (NOT libieee1284-3-dev~2(c)) AND 
 (NOT xmltv~3(c)) AND 
 (liblog-agent-logger-perl~2(c) IMPLIES perl~69(c) AND libgetargs-long-perl(c) AND liblog-agent-perl(c)) AND 
 (NOT wesnoth-did~1(c)) AND 
 (NOT texlive-xetex~2(c)) AND 
 (NOT egroupware-registration~1(c)) AND 
 (NOT gdc-4.2~2(c)) AND 
 (NOT wzdftpd-back-pgsql~1(c)) AND 
 (NOT libwine-ldap-unstable~1(c)) AND 
 (NOT libdbd-sqlrelay-perl~2(c)) AND 
 (NOT xfce4-wmdock-plugin~1(c)) AND 
 (NOT xgnokii~2(c)) AND 
 (NOT libktexteditor4.1-cil~1(c)) AND 
 (NOT gcj-4.4-jre-headless~3(c)) AND 
 (NOT libsvnqt6~2(c)) AND 
 (gnus-bonus-el~1(c) IMPLIES (emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs~1(c)) AND (xemacs21-mule-canna-wnn~2(c) OR xemacs21-mule-canna-wnn~2(c))) AND 
 (NOT multitee~1(c)) AND 
 (NOT webcit-dbg~1(c)) AND 
 (NOT debian-reference-de~2(c)) AND 
 (NOT libsvnqt3~2(c)) AND 
 (NOT octave-vrml~2(c)) AND 
 (NOT libxfcegui4-4~3(c)) AND 
 (libboost-serialization-dev~2(c) IMPLIES libboost-dev~9(c)) AND 
 (NOT libgnomecanvas2-ruby~4(c)) AND 
 (fai-server~3(c) IMPLIES fai-client(c) AND debootstrap(c)) AND 
 (NOT libgstreamer-plugins-base0.10-0~5(c)) AND 
 (NOT hpcc~1(c)) AND 
 (NOT gtimelog~2(c)) AND 
 (NOT tcpser~1(c)) AND 
 (NOT mono-utils~2(c)) AND 
 (python-pysnmp4-mibs~1(c) IMPLIES python~22(c) AND python-support~7(c) AND python-pysnmp4(c)) AND 
 (NOT libmono-oracle2.0-cil~3(c)) AND 
 (NOT gri~4(c)) AND 
 (NOT mbrola-nl2~1(c)) AND 
 (NOT plplot9-driver-wxwidgets~2(c)) AND 
 (NOT plucker~2(c)) AND 
 (NOT fglrx-glx-ia32~4(c)) AND 
 (NOT ktoblzcheck~1(c)) AND 
 (NOT torcs~2(c)) AND 
 (NOT liblablgtksourceview-ocaml~3(c)) AND 
 (NOT slice2vb~1(c)) AND 
 (NOT libopenalpp-cvs-dev~1(c)) AND 
 (NOT regionset~2(c)) AND 
 (NOT mn-fit-dev~2(c)) AND 
 (NOT libpurple-dev~1(c)) AND 
 (openoffice.org-thesaurus-de~1(c) IMPLIES openoffice.org-core~34(c) AND (dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c))) AND 
 (NOT simplyhtml~1(c)) AND 
 (NOT tcputils~1(c)) AND 
 (NOT inform-mode~2(c)) AND 
 (NOT libopenexr6~4(c)) AND 
 (NOT gobject-introspection~1(c)) AND 
 (NOT libtest-dependencies-perl~2(c)) AND 
 (NOT libiw-dev~1(c)) AND 
 (NOT liblua50~4(c)) AND 
 (NOT libpulse-mainloop-glib0-dbg~1(c)) AND 
 (NOT liblua5.1-sql-postgres-dev~1(c)) AND 
 (NOT prelink~1(c)) AND 
 (NOT libsoci-core-gcc-dbg~1(c)) AND 
 (NOT nomarch~2(c)) AND 
 (openoffice.org-thesaurus-cs~1(c) IMPLIES openoffice.org-core~34(c) AND (dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c))) AND 
 (NOT python-chm~2(c)) AND 
 (libcgi-xmlapplication-perl~1(c) IMPLIES perl~69(c) AND libcgi-perl(c) AND libxml-libxml-perl(c) AND libxml-libxslt-perl(c)) AND 
 (attal-themes-medieval~1(c) IMPLIES attal(c)) AND 
 (NOT libxft2~2(c)) AND 
 (NOT libdbix-password-perl~3(c)) AND 
 (NOT spfquery~2(c)) AND 
 (NOT wavsplit~1(c)) AND 
 (NOT libtsk-dev~1(c)) AND 
 (NOT ocaml-base~3(c)) AND 
 (NOT kdelibs-bin~3(c)) AND 
 (NOT libgdchart-gd2-xpm~1(c)) AND 
 (libschedule-ratelimiter-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT libnet-jabber-perl~1(c)) AND 
 (NOT naist-jdic-utf8~1(c)) AND 
 (NOT wsynth-dssi~1(c)) AND 
 (libhtml-tagset-perl~4(c) IMPLIES perl~69(c)) AND 
 (NOT gnucash~5(c)) AND 
 (NOT libclass-accessor-perl~5(c)) AND 
 (NOT mirrormagic~2(c)) AND 
 (NOT vuze~1(c)) AND 
 (NOT libphp-redis~1(c)) AND 
 (NOT gpstrans~1(c)) AND 
 (NOT cl-ftp~1(c)) AND 
 (openoffice.org-thesaurus-ca~1(c) IMPLIES openoffice.org-core~34(c) AND (dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c))) AND 
 (libpulse-browse0-dbg~1(c) IMPLIES libpulse-browse0~3(c)) AND 
 (stardic~3(c) IMPLIES stardict-gtk~4(c)) AND 
 (NOT libcrypt-smbhash-perl~1(c)) AND 
 (NOT xmms2-core~5(c)) AND 
 (NOT host~1(c)) AND 
 (gtrayicon-dbg~1(c) IMPLIES gtrayicon~1(c)) AND 
 (NOT vlc~8(c)) AND 
 (NOT libpeercast0-dev~1(c)) AND 
 (NOT freepops-updater-fltk~1(c)) AND 
 (NOT qgis-plugin-grass~1(c)) AND 
 (NOT tuxpaint-data~2(c)) AND 
 (NOT blast2~3(c)) AND 
 (libstderesi0-dev~1(c) IMPLIES libelfsh0(c)) AND 
 (python-wxversion~3(c) IMPLIES python~22(c) AND python~22(c) AND python-central~22(c) AND python-wxgtk2.8~3(c)) AND 
 (NOT gpc~4(c)) AND 
 (NOT libavahi-common-dev~3(c)) AND 
 (NOT libct3~2(c)) AND 
 (NOT dpkg-dev-el~3(c)) AND 
 (NOT libsearchclient0~1(c)) AND 
 (NOT xchat-xsys~2(c)) AND 
 (NOT gfortran-doc~2(c)) AND 
 (NOT mozilla-firefox-locale-eu~2(c)) AND 
 (NOT libmime-lite-perl~3(c)) AND 
 (NOT libb-utils-perl~1(c)) AND 
 (NOT pavucontrol~3(c)) AND 
 (NOT libgfortran2-dbg~1(c)) AND 
 (NOT computer-janitor-gtk~1(c)) AND 
 (NOT tstools~1(c)) AND 
 (NOT gbdfed~1(c)) AND 
 (NOT easychem~1(c)) AND 
 (NOT gir1.0-wnck-1.0~1(c)) AND 
 (NOT libvncserver0-dbg~2(c)) AND 
 (NOT python-pyorbit-dev~2(c)) AND 
 (NOT rdate~1(c)) AND 
 (gadmin-squid-dbg~2(c) IMPLIES gadmin-squid~2(c)) AND 
 (NOT liberuby-dev~2(c)) AND 
 (NOT libgstreamer-gconf0.8-0~3(c)) AND 
 (gqview~3(c) IMPLIES geeqie(c)) AND 
 (NOT yaird~4(c)) AND 
 (NOT ctdb~1(c)) AND 
 (NOT libsmokeplasma2~4(c)) AND 
 (NOT dact~1(c)) AND 
 (NOT ctcs~1(c)) AND 
 (NOT libgcj10-dev~1(c)) AND 
 (feed2imap~1(c) IMPLIES ruby(c) AND ruby1.8(c) AND librmail-ruby1.8(c) AND libfeedparser-ruby1.8(c)) AND 
 (NOT linux-headers-2.6-openvz-amd64~1(c)) AND 
 (NOT mpich-shmem-bin~1(c)) AND 
 (NOT tilecache~1(c)) AND 
 (libqt4-ruby~3(c) IMPLIES libqt4-ruby1.8(c)) AND 
 (NOT pachi~2(c)) AND 
 (NOT xsane~1(c)) AND 
 (NOT libplayererror2-dev~1(c)) AND 
 (NOT libdmtx0a~2(c)) AND 
 (NOT kweather~4(c)) AND 
 (NOT weex~2(c)) AND 
 (NOT libskinlf-java~1(c)) AND 
 (NOT ftpcopy~2(c)) AND 
 (NOT xfonts-dosemu~1(c)) AND 
 (NOT chiark-rwbuffer~1(c)) AND 
 (NOT icomlib1~2(c)) AND 
 (NOT libplasma-ruby~2(c)) AND 
 (NOT recite~1(c)) AND 
 (NOT libaa1-dev~2(c)) AND 
 (NOT libopenais3~4(c)) AND 
 (NOT libvorbisfile3~5(c)) AND 
 (NOT libatlas-cpp-0.6-1-dbg~1(c)) AND 
 (NOT kalign~1(c)) AND 
 (NOT remake~1(c)) AND 
 (libtest-deep-perl~1(c) IMPLIES perl~69(c) AND libtest-tester-perl(c)) AND 
 (NOT libopenct1-dev~2(c)) AND 
 (NOT libpulse-browse0~3(c)) AND 
 (NOT znc~3(c)) AND 
 (NOT libhildondesktop0~2(c)) AND 
 (libsparkline-php~1(c) IMPLIES php5-gd(c)) AND 
 (NOT libzn-poly-dev~1(c)) AND 
 (NOT mp3val~1(c)) AND 
 (NOT network-manager~6(c)) AND 
 (NOT libkeyutils-dev~2(c)) AND 
 (NOT bsdcpio~1(c)) AND 
 (NOT linux-image-2.6.26-2-openvz-amd64~1(c)) AND 
 (NOT libgadu3~4(c)) AND 
 (NOT pstoedit~1(c)) AND 
 (NOT libgalago-gtk1~1(c)) AND 
 (NOT libgcrypt11~5(c)) AND 
 (NOT libsvn-notify-mirror-perl~1(c)) AND 
 (NOT otf-ipafont~1(c)) AND 
 (NOT libatlas-cpp-0.6-dev~4(c)) AND 
 (NOT libgnome-bluetooth2~2(c)) AND 
 (NOT scalapack1-lam~3(c)) AND 
 (NOT libghc6-xmonad-contrib-prof~1(c)) AND 
 (NOT gsfonts-wadalab-gothic~1(c)) AND 
 (libnewmat10-dev~1(c) IMPLIES libnewmat10~1(c)) AND 
 (NOT ample~2(c)) AND 
 (NOT slice2py~1(c)) AND 
 (NOT libmodule-install-perl~1(c)) AND 
 (NOT libasound2-plugins~2(c)) AND 
 (NOT asmixer~2(c)) AND 
 (NOT python-dulwich~3(c)) AND 
 (NOT python-pysqlite2~7(c)) AND 
 (NOT python-cdd~2(c)) AND 
 (NOT gambas2-gb-pcre~1(c)) AND 
 (NOT docbook2odf~1(c)) AND 
 (NOT libdbd-sqlite3-perl~5(c)) AND 
 (NOT ndtpd~4(c)) AND 
 (NOT ttf-paktype~2(c)) AND 
 (NOT doxymacs~1(c)) AND 
 (NOT mp4h~2(c)) AND 
 (NOT fortunes-es-off~1(c)) AND 
 (NOT libreadline6-dev~1(c)) AND 
 (NOT listadmin~2(c)) AND 
 (NOT texlive-lang-norwegian~4(c)) AND 
 (NOT libdb4.4++-dev~1(c)) AND 
 (NOT mozilla-firefox-locale-ca~2(c)) AND 
 (NOT wesnoth-dbg~1(c)) AND 
 (NOT vdr-plugin-sky~1(c)) AND 
 (NOT python-pypcap~1(c)) AND 
 (NOT ksirtet~1(c)) AND 
 (NOT pdns-backend-pgsql~1(c)) AND 
 (NOT libglade2-ruby1.8-dbg~1(c)) AND 
 (NOT libntfs-3g-dev~1(c)) AND 
 (NOT libkdepim1-dev~1(c)) AND 
 (NOT flex-old~2(c)) AND 
 (NOT libperl5.8~4(c)) AND 
 (NOT minidjvu~1(c)) AND 
 (NOT smbfs~3(c)) AND 
 (iceweasel-l10n-es-es~1(c) IMPLIES (iceweasel~16(c) OR iceweasel~5(c)) AND iceweasel~5(c)) AND 
 (NOT diff~5(c)) AND 
 (NOT libcommons-vfs-java~1(c)) AND 
 (NOT daptup~1(c)) AND 
 (zonecheck~1(c) IMPLIES ruby~8(c) AND iputils-ping(c)) AND 
 (NOT libemail-find-perl~1(c)) AND 
 (NOT wmakerconf~3(c)) AND 
 (NOT libgmime-2.0-2-dev~2(c)) AND 
 (NOT gnochm~1(c)) AND 
 (NOT xdesktopwaves~2(c)) AND 
 (NOT libsigsegv-dev~2(c)) AND 
 (NOT cksfv~1(c)) AND 
 (NOT libsdl-sge-dev~1(c)) AND 
 (t-prot~2(c) IMPLIES (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c)) AND perl~69(c) AND libgetopt-mixed-perl(c) AND liblocale-gettext-perl(c)) AND 
 (NOT cadabra~1(c)) AND 
 (NOT memtester~2(c)) AND 
 (NOT autodns-dhcp~1(c)) AND 
 (NOT libqpol1~3(c)) AND 
 (libsmtpguard-dev~1(c) IMPLIES libsmtpguard1~2(c)) AND 
 (NOT kernel-package~3(c)) AND 
 (NOT mp3diags~1(c)) AND 
 (rt3.6-apache2~1(c) IMPLIES (apache2(c) OR apache2-mpm-prefork~6(c) OR apache2-mpm-prefork~6(c)) AND (libapache2-mod-fastcgi(c) OR libapache2-mod-perl2~11(c)) AND libapache2-mod-perl2~11(c) AND (libapache2-mod-fastcgi(c) OR libapache-dbi-perl~4(c))) AND 
 (NOT scim-chewing~4(c)) AND 
 (NOT lmemory~2(c)) AND 
 (NOT mmass~1(c)) AND 
 (NOT debhelper~31(c)) AND 
 (NOT ibus-table-quick~1(c)) AND 
 (NOT libeb7-dev~1(c)) AND 
 (NOT dibbler-server~1(c)) AND 
 (NOT libexchange-storage1.2-dev~2(c)) AND 
 (NOT libgcj10-dbg~1(c)) AND 
 (NOT cssc~1(c)) AND 
 (NOT adun.app~1(c)) AND 
 (NOT planner-dev~2(c)) AND 
 (NOT gtk-doc-tools~4(c)) AND 
 (libjgoodies-forms-java~2(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c) OR gcj-4.4-jre~2(c))) AND 
 (NOT texlive-latex-extra~6(c)) AND 
 (NOT wmressel~1(c)) AND 
 (NOT xtightvncviewer~1(c)) AND 
 (NOT ax25-apps~2(c)) AND 
 (NOT libnet-dns-sec-perl~1(c)) AND 
 (NOT linux-image-2.6-amd64~2(c)) AND 
 (NOT cdbackup~1(c)) AND 
 (NOT librrdp-perl~2(c)) AND 
 (NOT kmymoney2-plugin-aqbanking~1(c)) AND 
 (NOT libofx-dev~2(c)) AND 
 (NOT liboping0~6(c)) AND 
 (NOT jspwiki~1(c)) AND 
 (NOT lib32bz2-1.0~3(c)) AND 
 (NOT r-cran-fgarch~4(c)) AND 
 (NOT bbmail~1(c)) AND 
 (NOT gerris~1(c)) AND 
 (NOT sdm-terminal~2(c)) AND 
 (NOT libextlib-ocaml-dev~2(c)) AND 
 (NOT libobby-0.4-0-dbg~1(c)) AND 
 (libimage-math-constrain-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT c2man~1(c)) AND 
 (NOT libopenct1-dbg~2(c)) AND 
 (NOT gravitation~1(c)) AND 
 (NOT postgresql-8.3-hstore-new~1(c)) AND 
 (NOT libgconf2-ruby1.8~2(c)) AND 
 (NOT libicexml33~2(c)) AND 
 (libtime-duration-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT cmml-tools~1(c)) AND 
 (NOT gnome-power-manager~4(c)) AND 
 (NOT openoffice.org-pdfimport~2(c)) AND 
 (libmysqlcppconn-dev~1(c) IMPLIES libmysqlcppconn4~1(c)) AND 
 (NOT plasma-widget-lancelot~1(c)) AND 
 (NOT gtkmorph-example~1(c)) AND 
 (NOT eukleides~1(c)) AND 
 (NOT libverbiste-0.1-0~2(c)) AND 
 (brasero-common~2(c) IMPLIES gconf2~7(c)) AND 
 (iceweasel-l10n-es-cl~1(c) IMPLIES iceweasel~16(c) AND iceweasel~5(c)) AND 
 (NOT vnc-common~3(c)) AND 
 (NOT libsamizdat-ruby~2(c)) AND 
 (NOT libnusoap-php~2(c)) AND 
 (NOT libvdkxdb2-dev~2(c)) AND 
 (NOT adept~2(c)) AND 
 (NOT libtemplate-plugin-clickable-perl~1(c)) AND 
 (NOT gnome-pilot-conduits~3(c)) AND 
 (NOT cl-memoization~1(c)) AND 
 (NOT firebird2-utils-super~1(c)) AND 
 (NOT gij~4(c)) AND 
 (cl-f2cl~1(c) IMPLIES common-lisp-controller~17(c)) AND 
 (gazpacho~2(c) IMPLIES python2.4(c) AND python-support~7(c) AND python-gtk2~27(c) AND python-kiwi(c)) AND 
 (NOT noiz2sa~1(c)) AND 
 (NOT libocamlodbc-ocaml-dev~3(c)) AND 
 (NOT curl~2(c)) AND 
 (NOT libconfig-model-itself-perl~1(c)) AND 
 (NOT libmrpt-core0.7~1(c)) AND 
 (NOT lib32gcc1-dbg~2(c)) AND 
 (NOT ragel~2(c)) AND 
 (NOT libmrpt-core0.6~1(c)) AND 
 (NOT python-gnuradio-qtgui~1(c)) AND 
 (NOT fonttools-eexecop~1(c)) AND 
 (NOT libk3b-dev~1(c)) AND 
 (NOT libmpfi-dev~2(c)) AND 
 (NOT libreadline6-dbg~1(c)) AND 
 (NOT apt-show-versions~1(c)) AND 
 (NOT debian-edu-artwork~2(c)) AND 
 (NOT libfribidi0~4(c)) AND 
 (NOT libnewmat10~1(c)) AND 
 (NOT fspanel~2(c)) AND 
 (libnumber-compare-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT autopkgtest-xenlvm~1(c)) AND 
 (NOT education-geography~3(c)) AND 
 (NOT gadmin-bind~1(c)) AND 
 (libsort-versions-perl~3(c) IMPLIES perl~69(c)) AND 
 (NOT digikam-dbg~1(c)) AND 
 (NOT libwebauth-perl~2(c)) AND 
 (NOT libledit-ocaml-dev~1(c)) AND 
 (NOT libnjb-dev~2(c)) AND 
 (NOT inventor-demo~2(c)) AND 
 (NOT toppler~1(c)) AND 
 (NOT libroxen-expires~1(c)) AND 
 (NOT telepathy-butterfly~1(c)) AND 
 (NOT libghc6-safe-dev~1(c)) AND 
 (weechat-common~3(c) IMPLIES base-files~10(c)) AND 
 (NOT libphysfs-1.0-0~1(c)) AND 
 (NOT pngcrush~2(c)) AND 
 (NOT uuid-dev~1(c)) AND 
 (NOT gnomemeeting~2(c)) AND 
 (NOT libbit-vector-perl~4(c)) AND 
 (NOT libgsmme1c2a~3(c)) AND 
 (NOT samidare~2(c)) AND 
 (NOT libgbf-1-dev~1(c)) AND 
 (iceweasel-l10n-es-ar~1(c) IMPLIES (iceweasel~16(c) OR iceweasel~5(c)) AND iceweasel~5(c)) AND 
 (NOT libapache2-mod-fastcgi~1(c)) AND 
 (NOT cpufreqd~2(c)) AND 
 (NOT spl-xml~1(c)) AND 
 (NOT libssh2-1-dev~1(c)) AND 
 (NOT x11proto-composite-dev~1(c)) AND 
 (NOT dictionaries-common~15(c)) AND 
 (NOT libbeid2~4(c)) AND 
 (develock-el~1(c) IMPLIES (emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs~1(c))) AND 
 (NOT cupt~2(c)) AND 
 (NOT cpp-doc~2(c)) AND 
 (NOT konversation~4(c)) AND 
 (NOT xfonts-intl-japanese-big~2(c)) AND 
 (NOT xpm2wico~1(c)) AND 
 (liboping-dev~2(c) IMPLIES liboping0~6(c)) AND 
 (NOT libglib1.2-dev~2(c)) AND 
 (NOT libglobus-gfork0~1(c)) AND 
 (NOT videolink~1(c)) AND 
 (libparse-mediawikidump-perl~1(c) IMPLIES perl~69(c) AND libxml-parser-perl(c)) AND 
 (NOT cowbuilder~1(c)) AND 
 (NOT mono-mjs~1(c)) AND 
 (NOT sparse~1(c)) AND 
 (aswiki~2(c) IMPLIES ruby1.8(c) AND (libamrita-ruby1.8~3(c) OR libamrita-ruby1.8~2(c)) AND libalgorithm-diff-ruby1.8(c) AND libruby1.8~5(c) AND libdbm-ruby1.8(c)) AND 
 (NOT libnet-scp-perl~2(c)) AND 
 (NOT python-pydot~1(c)) AND 
 (NOT sphinx2-bin~2(c)) AND 
 (NOT transfig~2(c)) AND 
 (latex-ucs-contrib~1(c) IMPLIES texlive-latex-recommended~6(c)) AND 
 (NOT libxcb-icccm1~3(c)) AND 
 (NOT libclips-dev~1(c)) AND 
 (NOT mlton~1(c)) AND 
 (NOT libhtml-wikiconverter-perl~8(c)) AND 
 (NOT python-scientific-doc~1(c)) AND 
 (NOT mindi~4(c)) AND 
 (NOT libclaw-net-dev~1(c)) AND 
 (harden-clients~2(c) IMPLIES (debconf~35(c) OR debconf~38(c))) AND 
 (NOT python-nwsserver~1(c)) AND 
 (NOT libgtk-perl~4(c)) AND 
 (NOT libroxen-trimpath~1(c)) AND 
 (NOT libmono0-dbg~1(c)) AND 
 (NOT gfxboot-examples~1(c)) AND 
 (NOT libghc6-hgl-prof~2(c)) AND 
 (libtest-longstring-perl~2(c) IMPLIES libtest-simple-perl(c) AND perl~69(c)) AND 
 (libhttp-body-perl~2(c) IMPLIES perl~69(c) AND libyaml-perl(c) AND libpath-class-perl(c) AND libwww-perl(c)) AND 
 (NOT egroupware-addressbook~2(c)) AND 
 (NOT gitosis~2(c)) AND 
 (python-support~7(c) IMPLIES python~22(c)) AND 
 (libamrita-ruby1.8~2(c) IMPLIES libruby1.8(c) AND libruby1.8~5(c)) AND 
 (NOT libgdome2-xslt-ocaml~1(c)) AND 
 (mozilla-diggler~3(c) IMPLIES iceweasel(c)) AND 
 (kmfl-keyboards-mywin~1(c) IMPLIES scim-kmfl-imengine(c) AND kmflcomp(c)) AND 
 (NOT turqstat~1(c)) AND 
 (NOT krb5-ftpd~1(c)) AND 
 (NOT libsqlite3-gst~1(c)) AND 
 (libtie-toobject-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT libcherokee-config0-dev~2(c)) AND 
 (NOT gforge-mta-exim4~3(c)) AND 
 (NOT bubbros~1(c)) AND 
 (NOT libsigc++-dev~3(c)) AND 
 (libyaml-perl~7(c) IMPLIES perl~69(c)) AND 
 (cedar-backup2~2(c) IMPLIES python~22(c) AND python-support~7(c)) AND 
 (NOT pyjamas-ui~1(c)) AND 
 (NOT libview2-dbg~2(c)) AND 
 (NOT libapp-daemon-perl~1(c)) AND 
 (libcomerr2-dbg~1(c) IMPLIES libcomerr2~6(c)) AND 
 (NOT xwota~1(c)) AND 
 (NOT lineak-kdeplugins~3(c)) AND 
 (NOT libsyslog-ruby~3(c)) AND 
 (myspell-en-au~2(c) IMPLIES dictionaries-common~20(c)) AND 
 (NOT wdg-html-validator~1(c)) AND 
 (NOT libplayertcp2-dev~1(c)) AND 
 (NOT zimpl~1(c)) AND 
 (NOT gcc-4.4-source~1(c)) AND 
 (NOT tclxml~2(c)) AND 
 (NOT python-samba~1(c)) AND 
 (NOT xfce4~4(c)) AND 
 (fileutils~6(c) IMPLIES coreutils(c)) AND 
 (NOT r-cran-vgam~1(c)) AND 
 (NOT fso-abyss~1(c)) AND 
 (NOT libformula-java~1(c)) AND 
 (NOT xfce4-clipman~2(c)) AND 
 (NOT kdepimlibs5-dev~3(c)) AND 
 (NOT gnome-breakout~1(c)) AND 
 (NOT libstyx2~6(c)) AND 
 (NOT libstdc++6-4.1-doc~2(c)) AND 
 (NOT libcoin60-dev~1(c)) AND 
 (NOT libsensors-dev~2(c)) AND 
 (libglobus-gsi-callback-doc~1(c) IMPLIES libglobus-gsi-callback-dev~1(c)) AND 
 (NOT libsysadm-install-perl~2(c)) AND 
 (NOT python2.5-minimal~4(c)) AND 
 (NOT libg2-dev~2(c)) AND 
 (NOT pcb-gtk~2(c)) AND 
 (NOT hwinfo~2(c)) AND 
 (NOT liblualib50-dev~1(c)) AND 
 (NOT ldapdiff~2(c)) AND 
 (NOT libgmp3-dev~5(c)) AND 
 (NOT libtinymail-1.0-0-dbg~1(c)) AND 
 (NOT libgnome2-ruby~5(c)) AND 
 (NOT fail2ban~3(c)) AND 
 (NOT libmono2.0-cil~11(c)) AND 
 (NOT libvorbis0a~8(c)) AND 
 (NOT gmailfs~3(c)) AND 
 (libtvanytimeapi-java~1(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c) OR gcj-4.4-jre~2(c))) AND 
 (NOT libdbd-odbc-perl~1(c)) AND 
 (NOT gnuchess~3(c)) AND 
 (NOT ipw2100-modules-2.6-amd64~1(c)) AND 
 (NOT ivtv-source~1(c)) AND 
 (NOT libtelepathy-farsight0-dbg~1(c)) AND 
 (NOT libaqbanking29~3(c)) AND 
 (NOT libflac-dev~5(c)) AND 
 (NOT libchart-strip-perl~1(c)) AND 
 (NOT libqgis0~1(c)) AND 
 (mysqltuner~2(c) IMPLIES perl(c)) AND 
 (NOT libapache2-mod-musicindex~3(c)) AND 
 (openoffice.org-help-hi-in~3(c) IMPLIES openoffice.org-writer(c) AND openoffice.org-l10n-hi-in(c)) AND 
 (NOT skyeye~1(c)) AND 
 (NOT eldav~1(c)) AND 
 (NOT libssh2-1-dbg~1(c)) AND 
 (NOT libcontextual-return-perl~1(c)) AND 
 (NOT libopenipmi0~2(c)) AND 
 (NOT gtk2-engines-nodoka~1(c)) AND 
 (NOT plee-the-bear~1(c)) AND 
 (NOT libboost-signals1.33.1~1(c)) AND 
 (xword~1(c) IMPLIES python(c) AND python-gtk2(c)) AND 
 (libclass-dbi-plugin-perl~2(c) IMPLIES perl~69(c) AND libclass-dbi-perl~8(c)) AND 
 (NOT nss-updatedb~1(c)) AND 
 (NOT trac-spamfilter~1(c)) AND 
 (NOT libaiksaurusgtk-1.2-0c2a~2(c)) AND 
 (NOT libperlmenu-perl~1(c)) AND 
 (NOT python-plplot~2(c)) AND 
 (NOT libhtml-embperl-perl~1(c)) AND 
 (NOT liblwp-dev~1(c)) AND 
 (NOT libbrlapi-dev~1(c)) AND 
 (NOT ncurses-base~4(c)) AND 
 (NOT libapron-ocaml-dev~1(c)) AND 
 (NOT libopencascade-modeling-6.3.0~1(c)) AND 
 (NOT libroot-roofit5.24~1(c)) AND 
 (NOT r-cran-lpsolve~2(c)) AND 
 (NOT libpano12-0~2(c)) AND 
 (NOT python-turbomail~1(c)) AND 
 (NOT libxmlsec1-dev~1(c)) AND 
 (NOT libgdcm2.0~2(c)) AND 
 (NOT gcj~4(c)) AND 
 (NOT libpam-smbpass~4(c)) AND 
 (NOT krb5-auth-dialog~1(c)) AND 
 (NOT min12xxw~2(c)) AND 
 (NOT python-biggles~1(c)) AND 
 (NOT gkrellm-ibam~1(c)) AND 
 (NOT python-zope.interface-dbg~2(c)) AND 
 (NOT libaqbanking16~3(c)) AND 
 (NOT claws-mail-feeds-reader~1(c)) AND 
 (NOT librfxswf-dev~1(c)) AND 
 (NOT ayttm~1(c)) AND 
 (libitpp6-dbg~2(c) IMPLIES libitpp6gf~2(c)) AND 
 (NOT yudit~2(c)) AND 
 (linuxdoc-tools-latex~3(c) IMPLIES linuxdoc-tools(c) AND tetex-base(c) AND texlive-base-bin(c) AND texlive-latex-recommended(c)) AND 
 (NOT python-foomatic~1(c)) AND 
 (NOT lunar-applet~1(c)) AND 
 (NOT openhpi-plugin-sysfs~1(c)) AND 
 (NOT e-uae~1(c)) AND 
 (NOT icnsutils~1(c)) AND 
 (NOT libxml-sablot-perl~1(c)) AND 
 (mmake~1(c) IMPLIES (perl~69(c) OR perl~69(c)) AND java-common(c) AND findutils~10(c)) AND 
 (NOT totem~9(c)) AND 
 (gtk2-engines-highcontrast~3(c) IMPLIES gtk2-engines~11(c)) AND 
 (NOT kshutdown~2(c)) AND 
 (NOT pcscd~8(c)) AND 
 (NOT libapache-mod-layout~1(c)) AND 
 (cl-rsm-rand~1(c) IMPLIES common-lisp-controller~17(c)) AND 
 (NOT gpe-edit~1(c)) AND 
 (kunststoff~1(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c) OR gcj-4.4-jre~2(c))) AND 
 (NOT postgresql-8.4-prefix~1(c)) AND 
 (NOT spf-milter-python~1(c)) AND 
 (ca-certificates~2(c) IMPLIES openssl(c) AND (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c))) AND 
 (NOT zope2.10~4(c)) AND 
 (NOT libblacs-mpi1~1(c)) AND 
 (libcarp-datum-perl~2(c) IMPLIES perl(c) AND liblog-agent-perl(c) AND libgetargs-long-perl(c)) AND 
 (libjmock-java~1(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c) OR gcj-4.4-jre~2(c))) AND 
 (NOT libmudflap0-4.3-dev~1(c)) AND 
 (NOT inadyn~2(c)) AND 
 (NOT winbind~1(c)) AND 
 (NOT libkrb5support0~2(c)) AND 
 (NOT libdata-structure-util-perl~2(c)) AND 
 (NOT ftp~4(c)) AND 
 (NOT libftdi1~4(c)) AND 
 (NOT libboost-dev~9(c)) AND 
 (NOT libavifile-0.7-dev~2(c)) AND 
 (NOT python-liblcms~2(c)) AND 
 (iceweasel-webdeveloper~1(c) IMPLIES (iceweasel~16(c) OR iceweasel~5(c)) AND iceweasel~5(c)) AND 
 (NOT postgresql-plpython-8.4~1(c)) AND 
 (NOT postgresql-plpython-8.3~1(c)) AND 
 (NOT libgtkhtml3.16-cil~2(c)) AND 
 (NOT postgresql-plpython-8.1~1(c)) AND 
 (NOT libceguiogrerenderer-1.6.4~1(c)) AND 
 (libbarcode-code128-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT octave2.9~5(c)) AND 
 (NOT selinux-policy-default~2(c)) AND 
 (NOT tclex~3(c)) AND 
 (NOT xtide~4(c)) AND 
 (NOT libglide3-dev~1(c)) AND 
 (NOT lighttpd~5(c)) AND 
 (NOT xtoolwait~2(c)) AND 
 (NOT libevocosm-3.1-1~1(c)) AND 
 (NOT libfreeze33~1(c)) AND 
 (NOT einstein~1(c)) AND 
 (NOT libqdaccolib-dev~1(c)) AND 
 (NOT gravitywars~1(c)) AND 
 (NOT libfreeze31~1(c)) AND 
 (NOT ircmarkers~2(c)) AND 
 (octave2.9-headers~3(c) IMPLIES octave3.0-headers(c)) AND 
 (NOT common-lisp-controller~17(c)) AND 
 (NOT mathtex~1(c)) AND 
 (NOT traverso~1(c)) AND 
 (NOT libemail-mime-creator-perl~5(c)) AND 
 (NOT monodoc~2(c)) AND 
 (libmp3-info-perl~3(c) IMPLIES perl~69(c) AND libunicode-string-perl(c)) AND 
 (NOT knotes~3(c)) AND 
 (NOT dares-qt~2(c)) AND 
 (NOT v-sim-plugins~2(c)) AND 
 (libswingx-java~1(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c))) AND 
 (NOT sdparm~2(c)) AND 
 (libtext-unidecode-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT liblscp~1(c)) AND 
 (NOT tree-puzzle~3(c)) AND 
 (NOT ttf-gfs-neohellenic~1(c)) AND 
 (NOT asiya24-vfont~3(c)) AND 
 (NOT orage~1(c)) AND 
 (NOT eekboek~1(c)) AND 
 (NOT libghc6-glut-dev~3(c)) AND 
 (NOT fossology-agents~2(c)) AND 
 (NOT auth2db~2(c)) AND 
 (NOT libpng12-0~6(c)) AND 
 (NOT python-simplejson~11(c)) AND 
 (NOT gpscorrelate-gui~1(c)) AND 
 (NOT tree-ppuzzle~3(c)) AND 
 (NOT libclirr-maven-plugin-java~1(c)) AND 
 (NOT libatk1-ruby1.8~1(c)) AND 
 (NOT libupsclient1~1(c)) AND 
 (NOT slice2cs~1(c)) AND 
 (libatk1-ruby~4(c) IMPLIES libatk1-ruby1.8(c)) AND 
 (NOT libpt-1.10.10~3(c)) AND 
 (NOT mozilla-plugin-pcmanx~1(c)) AND 
 (NOT python-django-debug-toolbar~1(c)) AND 
 (NOT libcupsdriver1~3(c)) AND 
 (NOT httptunnel~2(c)) AND 
 (NOT libqglviewer-dev~3(c)) AND 
 (NOT gnome-volume-manager~4(c)) AND 
 (NOT crystalspace-dev~1(c)) AND 
 (pkglist~1(c) IMPLIES (perl~69(c) OR perl~69(c) OR perl(c))) AND 
 (NOT libpngwriter0-dev~1(c)) AND 
 (NOT clustalx~2(c)) AND 
 (NOT gmanedit~3(c)) AND 
 (NOT clustalw~2(c)) AND 
 (NOT libtelepathy-dev~1(c)) AND 
 (NOT balsa~3(c)) AND 
 (NOT r-cran-tseries~3(c)) AND 
 (NOT kdesdk-kio-plugins~5(c)) AND 
 (NOT gmpc-dev~2(c)) AND 
 (NOT pilot-qof~2(c)) AND 
 (NOT texlive-lang-greek~2(c)) AND 
 (NOT txtreader~1(c)) AND 
 (NOT gregoriotex~1(c)) AND 
 (libjzlib-java~1(c) IMPLIES gcj-4.4-jre~2(c)) AND 
 (NOT uim-ipa-x-sampa~3(c)) AND 
 (NOT libcupt-perl~1(c)) AND 
 (ruby~8(c) IMPLIES ruby1.8(c)) AND 
 (NOT libkpgp4~1(c)) AND 
 (NOT erlang-test-server~1(c)) AND 
 (NOT poppassd~2(c)) AND 
 (libsdl-console-dev~1(c) IMPLIES libsdl-console~2(c) AND libsdl-image1.2-dev(c)) AND 
 (NOT ocamlweb~1(c)) AND 
 (wapua~2(c) IMPLIES libhtml-parser-perl(c) AND libwww-perl(c) AND perl~69(c) AND perl-tk(c)) AND 
 (NOT libkiten4~4(c)) AND 
 (NOT libudunits2-dev~1(c)) AND 
 (NOT gforge-plugin-scmsvn~3(c)) AND 
 (NOT atlantikdesigner~2(c)) AND 
 (python-ecasound2.2~1(c) IMPLIES python-support~7(c)) AND 
 (NOT jokosher~1(c)) AND 
 (libgetopt-argvfile-perl~4(c) IMPLIES perl~69(c)) AND 
 (libmaven-embedder-java~1(c) IMPLIES maven2(c)) AND 
 (NOT zhone-illume-glue~1(c)) AND 
 (NOT exiftags~2(c)) AND 
 (NOT libhttp-recorder-perl~1(c)) AND 
 (NOT automake1.7~1(c)) AND 
 (NOT manpages-posix-dev~1(c)) AND 
 (NOT teem-apps~1(c)) AND 
 (NOT kde-core~1(c)) AND 
 (gok-doc~1(c) IMPLIES (epiphany-browser~10(c) OR xemacs21-mule-canna-wnn~2(c) OR epiphany-gecko~2(c) OR iceweasel~5(c) OR dillo~2(c) OR epiphany-browser~10(c) OR xemacs21-mule-canna-wnn~2(c) OR epiphany-gecko~2(c) OR iceweasel~5(c) OR dillo~2(c) OR konqueror~13(c) OR midori~2(c) OR iceweasel~16(c) OR netrik~2(c) OR netsurf-linuxfb~1(c) OR netsurf-gtk~1(c))) AND 
 (NOT pacman~1(c)) AND 
 (NOT automake1.4~1(c)) AND 
 (NOT geoclue-examples~1(c)) AND 
 (NOT gkrellmitime~2(c)) AND 
 (NOT sweep~1(c)) AND 
 (NOT libpam-heimdal~3(c)) AND 
 (NOT gnome-screensaver~9(c)) AND 
 (NOT libprima-perl~1(c)) AND 
 (NOT canna-utils~1(c)) AND 
 (post-el~1(c) IMPLIES (emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs~1(c))) AND 
 (pyflakes~1(c) IMPLIES python-central~22(c) AND python(c)) AND 
 (NOT liblasso3-dev~1(c)) AND 
 (NOT libkozo0~1(c)) AND 
 (NOT libxml++2.6-doc~2(c)) AND 
 (NOT python-jinja-dbg~2(c)) AND 
 (NOT xenstore-utils~3(c)) AND 
 (NOT git-buildpackage~1(c)) AND 
 (NOT jmeter-tcp~1(c)) AND 
 (NOT wayv~1(c)) AND 
 (NOT libghc6-arrows-dev~3(c)) AND 
 (NOT lemonldap-ng~1(c)) AND 
 (liblingua-pt-stemmer-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT guile-gnome2-gnome-ui~1(c)) AND 
 (NOT libdoxia-maven-plugin-java~1(c)) AND 
 (NOT uucpsend~1(c)) AND 
 (NOT libcconv0~1(c)) AND 
 (cl-rsm-memo~1(c) IMPLIES common-lisp-controller~17(c)) AND 
 (NOT libcamel1.2-8~2(c)) AND 
 (NOT grsync~1(c)) AND 
 (NOT libgtk-mozembed-ruby1.8-dbg~2(c)) AND 
 (NOT libghc6-haxml-dev~3(c)) AND 
 (NOT libsamplerate0-dev~3(c)) AND 
 (NOT libenet1-dev~2(c)) AND 
 (NOT libmarble4~6(c)) AND 
 (NOT libplayerc++2-dev~1(c)) AND 
 (NOT newspost~1(c)) AND 
 (NOT gadmin-squid~2(c)) AND 
 (NOT gossip~1(c)) AND 
 (nvidia-glx-legacy-ia32~1(c) IMPLIES nvidia-kernel-legacy-2.6.18-4-amd64~1(c) AND ia32-libs(c)) AND 
 (NOT rawdog~2(c)) AND 
 (cl-fad~1(c) IMPLIES common-lisp-controller~17(c)) AND 
 (libuniversal-moniker-perl~3(c) IMPLIES perl~69(c)) AND 
 (NOT libxml-libxslt-perl~2(c)) AND 
 (NOT mrtg~5(c)) AND 
 (NOT libnautilusburn2.20-cil~1(c)) AND 
 (NOT python-opensync~2(c)) AND 
 (NOT r-cran-design~3(c)) AND 
 (NOT fop~4(c)) AND 
 (libparse-yapp-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT xemacs21-mule-canna-wnn~2(c)) AND 
 (NOT libdecoration0-dev~1(c)) AND 
 (NOT libxcb-dpms0~2(c)) AND 
 (NOT libxcb-composite0-dev~1(c)) AND 
 (NOT libroxen-telnetproxy~1(c)) AND 
 (NOT python-nautilusburn~1(c)) AND 
 (carmetal~1(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR openjdk-6-jre(c))) AND 
 (libxml-twig-perl~6(c) IMPLIES perl~69(c) AND libxml-parser-perl(c)) AND 
 (NOT python-pydds~1(c)) AND 
 (NOT libroot-montecarlo-eg-dev~1(c)) AND 
 (NOT libonig2-dbg~1(c)) AND 
 (NOT freetype2-demos~3(c)) AND 
 (NOT libglobus-gsi-callback-dev~1(c)) AND 
 (NOT libmemchan-tcl-dev~1(c)) AND 
 (NOT plasma-widget-folderview~1(c)) AND 
 (NOT libtelepathy-dbg~1(c)) AND 
 (NOT nvidia-settings~2(c)) AND 
 (NOT pcopy~1(c)) AND 
 (NOT hplip~3(c)) AND 
 (NOT libnotifymm-doc~1(c)) AND 
 (NOT libnmz7~2(c)) AND 
 (NOT bluetooth~1(c)) AND 
 (NOT mlterm-im-scim~1(c)) AND 
 (NOT libatm1-dev~1(c)) AND 
 (NOT db4.7-util~1(c)) AND 
 (NOT libghc6-uulib-prof~1(c)) AND 
 (NOT libwine~7(c)) AND 
 (NOT libxml-security-c15~1(c)) AND 
 (NOT r-cran-gtools~2(c)) AND 
 (NOT tmispell-voikko~1(c)) AND 
 (libfam0c102~2(c) IMPLIES libfam0~2(c)) AND 
 (NOT libxml-security-c14~1(c)) AND 
 (NOT phpgroupware~5(c)) AND 
 (xul-ext-flashgot~1(c) IMPLIES curl(c)) AND 
 (NOT python-wnck~2(c)) AND 
 (dict-wn~3(c) IMPLIES (serpento~1(c) OR dictd~4(c) OR dictd(c))) AND 
 (NOT libxml-security-c12~1(c)) AND 
 (NOT ctwm~2(c)) AND 
 (NOT libjakarta-poi-java~3(c)) AND 
 (NOT upstart~1(c)) AND 
 (NOT python-nevow~4(c)) AND 
 (NOT libsys-cpuload-perl~2(c)) AND 
 (cl-base64~1(c) IMPLIES common-lisp-controller~17(c) AND cl-kmrcl(c)) AND 
 (NOT mingw32~5(c)) AND 
 (NOT magpierss~1(c)) AND 
 (NOT openssh-blacklist-extra~1(c)) AND 
 (NOT freecraft~2(c)) AND 
 (myspell-el-gr~1(c) IMPLIES (dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c))) AND 
 (NOT libtest-tap-htmlmatrix-perl~1(c)) AND 
 (NOT gconf2~7(c)) AND 
 (NOT harden-remoteaudit~2(c)) AND 
 (NOT libpango1-ruby1.8~2(c)) AND 
 (NOT libosmesa6~1(c)) AND 
 (NOT python-awn~2(c)) AND 
 (NOT libzbargtk0~1(c)) AND 
 (NOT potracegui~1(c)) AND 
 (NOT txt2pdbdoc~1(c)) AND 
 (NOT ttf-sil-doulos~1(c)) AND 
 (NOT libfilesys-statvfs-perl~2(c)) AND 
 (NOT spamassassin~8(c)) AND 
 (NOT libcomplearn-ruby1.8~1(c)) AND 
 (NOT avahi-discover~2(c)) AND 
 (NOT xchat~5(c)) AND 
 (NOT epwutil~1(c)) AND 
 (NOT bacula-director-pgsql~3(c)) AND 
 (NOT libtelepathy-glib0~13(c)) AND 
 (NOT r-cran-rcmdr~1(c)) AND 
 (rmligs-german~2(c) IMPLIES perl(c)) AND 
 (NOT libcorelinux-dev~2(c)) AND 
 (NOT ssh-askpass-fullscreen~1(c)) AND 
 (NOT hlint~1(c)) AND 
 (NOT kinput2-wnn~2(c)) AND 
 (NOT kdepim-kio-plugins~1(c)) AND 
 (NOT hlins~1(c)) AND 
 (NOT kvirc2~1(c)) AND 
 (NOT mm3d~1(c)) AND 
 (libjdom0-java~1(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c) OR gcj-4.4-jre~2(c))) AND 
 (NOT emdebian-qa~1(c)) AND 
 (NOT kpartloader~1(c)) AND 
 (NOT libclutter-gst-0.10-dev~1(c)) AND 
 (NOT pyaimt~1(c)) AND 
 (NOT python-zopeinterface~6(c)) AND 
 (NOT libqt4-test~4(c)) AND 
 (NOT libxtrap6~1(c)) AND 
 (NOT bplay~1(c)) AND 
 (NOT newt-tcl~1(c)) AND 
 (NOT tdiary-plugin~2(c)) AND 
 (NOT libxfixes3~2(c)) AND 
 (NOT ethereal~2(c)) AND 
 (NOT libgnome-media-dev~2(c)) AND 
 (NOT libgv-lua~1(c)) AND 
 (fusd-kor-source~1(c) IMPLIES bzip2(c) AND debhelper(c) AND kernel-package(c)) AND 
 (NOT vtun~1(c)) AND 
 (NOT cwcp~3(c)) AND 
 (NOT poppler-utils~2(c)) AND 
 (NOT libploticus0~1(c)) AND 
 (NOT libnjb-cil~2(c)) AND 
 (liblingua-en-namecase-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT zatacka~2(c)) AND 
 (NOT libxcb-composite0-dbg~1(c)) AND 
 (NOT python-codespeak-lib~1(c)) AND 
 (NOT egroupware-etemplate~1(c)) AND 
 (NOT webauth-weblogin~2(c)) AND 
 (NOT libavc1394-dev~2(c)) AND 
 (NOT gtkguitune~2(c)) AND 
 (NOT python-poker-stats~1(c)) AND 
 (NOT wbar~1(c)) AND 
 (NOT libboost-signals1.40-dev~2(c)) AND 
 (NOT libxxf86vm-dev~2(c)) AND 
 (NOT gnome-settings-daemon-dev~2(c)) AND 
 (libfltk1.1-dev~4(c) IMPLIES (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c)) AND libfltk1.1~8(c) AND libx11-dev(c)) AND 
 (libwx11-dev~1(c) IMPLIES libwx11-0~1(c)) AND 
 (NOT libstdc++6-4.1-dbg~2(c)) AND 
 (NOT g2p-sk~1(c)) AND 
 (NOT gforge-mta-postfix~1(c)) AND 
 (nvidia-cg-toolkit~3(c) IMPLIES (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c)) AND perl(c) AND libwww-perl(c) AND (perl~69(c) OR perl~69(c))) AND 
 (NOT libgv-python~2(c)) AND 
 (NOT libvtk-java~1(c)) AND 
 (libmono-corlib1.0-cil~3(c) IMPLIES (mono-jit~7(c) OR mono-jit~4(c)) AND mono-jit~4(c)) AND 
 (NOT mono-jay~2(c)) AND 
 (NOT libvdk2-2c2~2(c)) AND 
 (NOT python-bugbuddy~4(c)) AND 
 (NOT peercast-geekast~1(c)) AND 
 (NOT qt3-linguist~2(c)) AND 
 (NOT dfu-util~1(c)) AND 
 (libdbicx-testdatabase-perl~1(c) IMPLIES perl~69(c) AND libsql-translator-perl(c) AND libdbd-sqlite3-perl(c)) AND 
 (NOT cl-readline~1(c)) AND 
 (NOT libjpeg7~1(c)) AND 
 (NOT apertium-tolk~1(c)) AND 
 (NOT hpoj~2(c)) AND 
 (NOT python-gamera-dev~1(c)) AND 
 (NOT fte-xwindow~2(c)) AND 
 (NOT linux-image-xen-amd64~2(c)) AND 
 (NOT libenet2-dbg~1(c)) AND 
 (NOT openoffice.org-l10n-pa-in~1(c)) AND 
 (NOT python-pykaraoke~3(c)) AND 
 (NOT tclx8.4~2(c)) AND 
 (NOT postfix-gld~2(c)) AND 
 (NOT ttf-punjabi-fonts~3(c)) AND 
 (NOT libktnef1-dev~1(c)) AND 
 (libcli-dev~1(c) IMPLIES libcli1~1(c)) AND 
 (NOT libremctl1~3(c)) AND 
 (bootcd-ia64~1(c) IMPLIES bootcd~2(c) AND elilo(c)) AND 
 (NOT link-monitor-applet~1(c)) AND 
 (NOT sipcalc~1(c)) AND 
 (NOT xmms2-scrobbler~2(c)) AND 
 (NOT dash~2(c)) AND 
 (NOT hdparm~1(c)) AND 
 (NOT ocaml-base-nox~4(c)) AND 
 (libhtmlparser-java~1(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c))) AND 
 (kvm-dbg~1(c) IMPLIES kvm~4(c)) AND 
 (NOT helium~2(c)) AND 
 (libxml-mini-perl~2(c) IMPLIES perl(c)) AND 
 (NOT liborange0~4(c)) AND 
 (icedove-l10n-es-es~1(c) IMPLIES icedove~13(c) AND (icedove~13(c) OR icedove~5(c))) AND 
 (libboost-system-dev~1(c) IMPLIES libboost-system1.40-dev(c)) AND 
 (NOT libplasmaclock4~4(c)) AND 
 (NOT libjmagick6-jni~2(c)) AND 
 (NOT swig1.3~2(c)) AND 
 (NOT gcalctool~2(c)) AND 
 (gnustep-back-doc~2(c) IMPLIES (gnustep-common~5(c) OR gnustep-common~5(c))) AND 
 (NOT xtux-server~3(c)) AND 
 (NOT trac-ja-resource~2(c)) AND 
 (NOT libportaudio-dev~2(c)) AND 
 (NOT libppi-xs-perl~1(c)) AND 
 (NOT melting-gui~3(c)) AND 
 (NOT ibus-chewing~2(c)) AND 
 (NOT display-dhammapada~2(c)) AND 
 (NOT libdaemons-ruby~1(c)) AND 
 (NOT gpredict~3(c)) AND 
 (NOT fruit~2(c)) AND 
 (NOT murmur~1(c)) AND 
 (NOT tclodbc~1(c)) AND 
 (NOT liblapack3gf~1(c)) AND 
 (libparse-debcontrol-perl~1(c) IMPLIES perl~69(c) AND libio-stringy-perl(c) AND (perl~69(c) OR perl~69(c)) AND libwww-perl(c)) AND 
 (NOT libclutter-gst-0.10-dbg~1(c)) AND 
 (NOT libdbd-ldap-perl~2(c)) AND 
 (NOT libxine1-x~2(c)) AND 
 (kdesdk-scripts~6(c) IMPLIES perl(c) AND python(c)) AND 
 (NOT ttf-hanazono~1(c)) AND 
 (NOT kdepim-wizards~2(c)) AND 
 (NOT python-pyepl~2(c)) AND 
 (NOT ripperx~1(c)) AND 
 (NOT libhugs-regex-base~2(c)) AND 
 (NOT libpion-net-plugins~1(c)) AND 
 (NOT libgtkgl2.0-1~2(c)) AND 
 (NOT libmailutils1~2(c)) AND 
 (NOT libmoosex-types-path-class-perl~2(c)) AND 
 (NOT liblasi0~2(c)) AND 
 (NOT zope-cookiecrumbler~2(c)) AND 
 (NOT eperl~3(c)) AND 
 (libhdf4g-dev~3(c) IMPLIES libhdf4-dev(c)) AND 
 (NOT liba52-0.7.4~1(c)) AND 
 (NOT globus-gram-client-tools~1(c)) AND 
 (NOT klone~1(c)) AND 
 (mozilla-stumbleupon~1(c) IMPLIES mozilla-browser~4(c)) AND 
 (NOT kttsd~5(c)) AND 
 (NOT libcamlimages-ocaml~2(c)) AND 
 (NOT libdate-simple-perl~1(c)) AND 
 (NOT gobjc++-4.3~3(c)) AND 
 (NOT libigstk4-dev~1(c)) AND 
 (NOT desktop-base~4(c)) AND 
 (NOT libircclient-dev~1(c)) AND 
 (NOT scim-modules-socket~1(c)) AND 
 (NOT libsasl2-2~4(c)) AND 
 (NOT kbstate~2(c)) AND 
 (NOT libxmmsclient-ruby1.8~1(c)) AND 
 (NOT libusb++-0.1-4c2~1(c)) AND 
 (NOT libdb4.8++~1(c)) AND 
 (NOT liblash2~2(c)) AND 
 (NOT python-extractor~2(c)) AND 
 (NOT libxsettings-client0-dbg~1(c)) AND 
 (NOT python-zope.interface~2(c)) AND 
 (NOT recover~1(c)) AND 
 (libm17n-dev~1(c) IMPLIES libm17n-0~1(c) AND libxml2-dev(c)) AND 
 (NOT ice33-services~2(c)) AND 
 (NOT entity~1(c)) AND 
 (NOT libproducer-dev~1(c)) AND 
 (NOT irb1.9.1~1(c)) AND 
 (NOT libclass-c3-xs-perl~1(c)) AND 
 (NOT pouetchess~1(c)) AND 
 (NOT libcurses-widgets-perl~1(c)) AND 
 (NOT libxml-validate-perl~1(c)) AND 
 (NOT kimagemapeditor~1(c)) AND 
 (mzscheme~6(c) IMPLIES plt-scheme(c)) AND 
 (NOT libbogl0~1(c)) AND 
 (NOT libcorosync-dev~1(c)) AND 
 (NOT libtest-kwalitee-perl~1(c)) AND 
 (NOT python-gamera-dbg~1(c)) AND 
 (NOT rsh-redone-client~2(c)) AND 
 (NOT cpad-kernel-source~2(c)) AND 
 (NOT python-tables~1(c)) AND 
 (NOT qmk-groundstation~1(c)) AND 
 (NOT libasedrive-serial~2(c)) AND 
 (libgnomedb3-4-dbg~1(c) IMPLIES libgnomedb3-4~1(c)) AND 
 (NOT offlineimap~3(c)) AND 
 (NOT ppp~13(c)) AND 
 (NOT kdeutils~6(c)) AND 
 (NOT ldirectord~1(c)) AND 
 (tangerine-icon-theme~1(c) IMPLIES gnome-icon-theme(c)) AND 
 (NOT libgcj9-src~1(c)) AND 
 (NOT gbackground~1(c)) AND 
 (NOT mahara~2(c)) AND 
 (ginspector~1(c) IMPLIES libginspx0~1(c)) AND 
 (NOT mixxx~2(c)) AND 
 (NOT sql-ledger~2(c)) AND 
 (NOT unclutter~1(c)) AND 
 (NOT libtiff4-dev~4(c)) AND 
 (NOT graphdefang~2(c)) AND 
 (NOT librsvg2-ruby1.8~2(c)) AND 
 (NOT libdb4.7-tcl~2(c)) AND 
 (NOT libtag1-dev~1(c)) AND 
 (libfrontier-rpc-perl~2(c) IMPLIES perl~69(c) AND libxml-parser-perl(c) AND libwww-perl(c)) AND 
 (NOT libnotifymm-dev~1(c)) AND 
 (icedove-l10n-es-ar~1(c) IMPLIES icedove~13(c) AND (icedove~13(c) OR icedove~5(c))) AND 
 (NOT libssl-ocaml-dev~5(c)) AND 
 (NOT libmx4j-java~2(c)) AND 
 (libclass-accessor-classy-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT libsmbclient~5(c)) AND 
 (libhugs-hlist~2(c) IMPLIES hugs~5(c)) AND 
 (NOT r-cran-bayesm~1(c)) AND 
 (NOT libmmap-ruby~1(c)) AND 
 (NOT monodevelop-versioncontrol~1(c)) AND 
 (NOT gqcam~1(c)) AND 
 (NOT shiki-colors-metacity-theme~1(c)) AND 
 (NOT haxml~3(c)) AND 
 (NOT addresses-goodies-for-gnustep~1(c)) AND 
 (NOT libqhull-dev~2(c)) AND 
 (sysv-rc-conf~2(c) IMPLIES libcurses-ui-perl(c) AND sysv-rc(c)) AND 
 (libprogressbar-ruby1.8~1(c) IMPLIES libruby1.8(c)) AND 
 (NOT xtrkcad~3(c)) AND 
 (NOT libggi-target-emu~4(c)) AND 
 (NOT xmms2-plugin-tta~1(c)) AND 
 (NOT kitty~2(c)) AND 
 (NOT wmx10~1(c)) AND 
 (NOT libzeroc-ice-java~1(c)) AND 
 (pdumpfs~1(c) IMPLIES ruby~8(c)) AND 
 (NOT libboost-regex1.40-dev~2(c)) AND 
 (NOT oinkmaster~1(c)) AND 
 (NOT mozilla-openoffice.org~1(c)) AND 
 (NOT bugzilla~1(c)) AND 
 (NOT zabbix-server-mysql~1(c)) AND 
 (NOT gstreamer0.8-esd~2(c)) AND 
 (NOT inetutils-talk~1(c)) AND 
 (NOT python-dbus~13(c)) AND 
 (NOT fai-nfsroot~2(c)) AND 
 (NOT mysqmail-courier-logger~1(c)) AND 
 (NOT libblas-test~1(c)) AND 
 (NOT lybniz~1(c)) AND 
 (python-pyfits~1(c) IMPLIES python(c) AND python-support~7(c) AND python-numarray(c)) AND 
 (NOT ladccad~2(c)) AND 
 (NOT heartbeat-2-dev~3(c)) AND 
 (NOT openoffice.org-gnome~3(c)) AND 
 (NOT librunapp-perl~1(c)) AND 
 (NOT libauthen-passphrase-perl~1(c)) AND 
 (NOT libdb4.8-tcl~1(c)) AND 
 (NOT rpc2-dbg~1(c)) AND 
 (libhe5-hdfeos-dev~1(c) IMPLIES libhe5-hdfeos0~1(c)) AND 
 (NOT thttpd-util~2(c)) AND 
 (NOT libwww-wikipedia-perl~1(c)) AND 
 (libpragmatic-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT inputlirc~1(c)) AND 
 (NOT gmessage~1(c)) AND 
 (NOT qterm~2(c)) AND 
 (liblockfile-ruby~2(c) IMPLIES ruby(c)) AND 
 (NOT libanthy-dev~2(c)) AND 
 (NOT tunapie~2(c)) AND 
 (NOT uutraf~1(c)) AND 
 (NOT dkimproxy~2(c)) AND 
 (NOT libming-util~1(c)) AND 
 (NOT avahi-dnsconfd~3(c)) AND 
 (NOT libapache-mod-auth-radius~1(c)) AND 
 (NOT mono-gac~3(c)) AND 
 (NOT libode0c2~1(c)) AND 
 (xmltoman~1(c) IMPLIES libxml-parser-perl(c)) AND 
 (NOT gtk-engines-lighthouseblue~1(c)) AND 
 (NOT libapache2-mod-removeip~1(c)) AND 
 (NOT yorick-dev~3(c)) AND 
 (NOT knetdockapp~1(c)) AND 
 (NOT dnet-common~3(c)) AND 
 (NOT abcde~1(c)) AND 
 (iceweasel-l10n-pa-in~1(c) IMPLIES (iceweasel~16(c) OR iceweasel~5(c)) AND iceweasel~5(c)) AND 
 (pdftohtml~1(c) IMPLIES poppler-utils~2(c)) AND 
 (NOT python-all~2(c)) AND 
 (libpurple-bin~1(c) IMPLIES libpurple0(c) AND python(c) AND python-dbus(c)) AND 
 (NOT i810switch~1(c)) AND 
 (NOT libmixin-linewise-perl~1(c)) AND 
 (NOT libopenscap0-dbg~2(c)) AND 
 (NOT xfce4-smartbookmark-plugin~2(c)) AND 
 (klone-package~2(c) IMPLIES klone~3(c)) AND 
 (NOT v4l-conf~2(c)) AND 
 (hyperspec~2(c) IMPLIES (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c)) AND wget(c)) AND 
 (NOT yaz~3(c)) AND 
 (gnustep-back0.16~2(c) IMPLIES (gnustep-back0.16-art~1(c) OR gnustep-back0.16-art~1(c) OR gnustep-back0.16-art(c)) AND (gnustep-common~5(c) OR gnustep-common~5(c))) AND 
 (NOT libboost-math1.40.0~2(c)) AND 
 (NOT xutils~8(c)) AND 
 (NOT ktimer~1(c)) AND 
 (NOT s3dosm~1(c)) AND 
 (NOT xtv~3(c)) AND 
 (NOT libgearman-server0~1(c)) AND 
 (NOT libxrandr2-dbg~1(c)) AND 
 (NOT bristol~3(c)) AND 
 (NOT gnustep-back0.11~2(c)) AND 
 (NOT kdegraphics-kfile-plugins~1(c)) AND 
 (monodoc-avahi-manual~2(c) IMPLIES monodoc-manual(c)) AND 
 (NOT crip~1(c)) AND 
 (NOT libxcb-dpms0-dev~1(c)) AND 
 (NOT imagemagick-dbg~1(c)) AND 
 (NOT libmblock-dev~1(c)) AND 
 (NOT libgeo-postcode-perl~1(c)) AND 
 (NOT postgresql-plpython-7.4~1(c)) AND 
 (NOT librpc2-5~1(c)) AND 
 (libsphinx-search-perl~1(c) IMPLIES perl~69(c) AND libfile-searchpath-perl(c) AND libpath-class-perl(c)) AND 
 (NOT libdbd-sqlite3-ruby1.9~1(c)) AND 
 (NOT librpc2-4~1(c)) AND 
 (NOT libdbd-sqlite3-ruby1.8~1(c)) AND 
 (NOT libjuman4~1(c)) AND 
 (NOT php5-common~4(c)) AND 
 (NOT doom-package~1(c)) AND 
 (NOT ladcca2~2(c)) AND 
 (NOT klogd~1(c)) AND 
 (NOT gda2-mysql~1(c)) AND 
 (NOT libgpevtype1~1(c)) AND 
 (NOT python-zope.hookable~1(c)) AND 
 (stardict-english-czech~1(c) IMPLIES (sdcv~1(c) OR sdcv~2(c))) AND 
 (NOT autoconf~9(c)) AND 
 (NOT libgpevtype0~1(c)) AND 
 (mueller7-dict~1(c) IMPLIES (serpento~1(c) OR dictd~4(c) OR dictd~4(c))) AND 
 (NOT libgdchart-gd2-xpm-dev~1(c)) AND 
 (NOT cherokee~4(c)) AND 
 (NOT kghostview~2(c)) AND 
 (NOT pvm-examples~1(c)) AND 
 (NOT bcrelay~1(c)) AND 
 (NOT lzma-source~2(c)) AND 
 (NOT gtkcookie~2(c)) AND 
 (NOT preview.app~1(c)) AND 
 (NOT vim-perl~2(c)) AND 
 (education-main-server~2(c) IMPLIES education-tasks~2(c)) AND 
 (NOT goldendict~1(c)) AND 
 (yatex~2(c) IMPLIES (emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs~1(c))) AND 
 (NOT libepc-ui-1.0-2~2(c)) AND 
 (NOT miro~1(c)) AND 
 (NOT gnustep-netclasses~1(c)) AND 
 (NOT emacs23-el~2(c)) AND 
 (NOT langdrill~1(c)) AND 
 (NOT libghc6-magic-dev~3(c)) AND 
 (NOT libxmlrpc3-server-java-gcj~2(c)) AND 
 (libgeo-metar-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT python-gnome2-dev~5(c)) AND 
 (libscope-guard-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT libdvilib2-16~2(c)) AND 
 (NOT mksh~2(c)) AND 
 (NOT dia-libs~2(c)) AND 
 (NOT librplay3~2(c)) AND 
 (eclipse-jdt-nls~1(c) IMPLIES eclipse-jdt~3(c) AND eclipse-common-nls(c)) AND 
 (NOT libyaml-syck-perl~7(c)) AND 
 (NOT libshout-ocaml-dev~1(c)) AND 
 (NOT libjasper1~3(c)) AND 
 (NOT libax25~3(c)) AND 
 (NOT libsvg-ruby~2(c)) AND 
 (NOT fglrx-control~3(c)) AND 
 (libstring-parity-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT wine~5(c)) AND 
 (NOT kcheckers~1(c)) AND 
 (NOT libstruts1.2-java~2(c)) AND 
 (NOT libapache2-mod-vhost-hash-alias~1(c)) AND 
 (education-desktop-gnome~2(c) IMPLIES education-tasks~2(c)) AND 
 (NOT libnanohttp-dev~1(c)) AND 
 (NOT python-pycha~1(c)) AND 
 (NOT python-wadllib~2(c)) AND 
 (remuco-vlc~1(c) IMPLIES remuco-base~1(c) AND vlc~8(c) AND python~22(c)) AND 
 (NOT sisu-sqlite~2(c)) AND 
 (NOT libktoblzcheck-bin~1(c)) AND 
 (NOT gtkglarea5-dev~1(c)) AND 
 (NOT libqttestrunner1c2a~2(c)) AND 
 (NOT python-parsedatetime~1(c)) AND 
 (NOT nfs-common~4(c)) AND 
 (bluez-pcmcia-support~2(c) IMPLIES pcmciautils(c)) AND 
 (librpc2-dev~1(c) IMPLIES librpc2-4~1(c)) AND 
 (libgnomedb2-doc~1(c) IMPLIES (epiphany-browser~10(c) OR xemacs21-mule-canna-wnn~2(c) OR epiphany-gecko~2(c) OR iceweasel~5(c) OR dillo~2(c) OR epiphany-browser~10(c) OR xemacs21-mule-canna-wnn~2(c) OR epiphany-gecko~2(c) OR iceweasel~5(c) OR dillo~2(c) OR konqueror~13(c) OR midori~2(c) OR iceweasel~16(c) OR netrik~2(c) OR netsurf-linuxfb~1(c) OR netsurf-gtk~1(c))) AND 
 (NOT libapache2-mod-antiloris~1(c)) AND 
 (libaddresses-dev~2(c) IMPLIES libaddresses0~4(c) AND libgnustep-base-dev(c)) AND 
 (NOT ksnapshot~3(c)) AND 
 (NOT tryton-modules-stock-location-sequence~1(c)) AND 
 (NOT libkpimexchange1~2(c)) AND 
 (NOT libmono-sqlite1.0-cil~6(c)) AND 
 (NOT debmirror~2(c)) AND 
 (NOT snowdrop~1(c)) AND 
 (libcgi-session-expiresessions-perl~2(c) IMPLIES perl~69(c) AND libcgi-session-perl(c)) AND 
 (NOT vim-runtime~5(c)) AND 
 (wgalician-minimos~1(c) IMPLIES (dictionaries-common~20(c) OR dictionaries-common~15(c)) AND (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c))) AND 
 (NOT libghc6-pcre-light-prof~1(c)) AND 
 (NOT libpq-dev~8(c)) AND 
 (NOT urjtag~1(c)) AND 
 (NOT ifupdown-scripts-zg2~2(c)) AND 
 (NOT libmono-firebirdsql1.7-cil~1(c)) AND 
 (NOT xqf~3(c)) AND 
 (NOT mipe~1(c)) AND 
 (smlnj~1(c) IMPLIES smlnj-runtime~1(c)) AND 
 (libxcb-dpms0-dbg~1(c) IMPLIES libxcb-dpms0~1(c)) AND 
 (NOT aircrack-ng~1(c)) AND 
 (NOT mapivi~1(c)) AND 
 (NOT libghc6-haskelldb-prof~2(c)) AND 
 (NOT libvtk5-qt3-dev~1(c)) AND 
 (NOT rubberband-cli~1(c)) AND 
 (NOT sylpheed-claws-gtk2-pgpmime~1(c)) AND 
 (NOT gabedit~1(c)) AND 
 (phpgroupware-hr~1(c) IMPLIES (phpgroupware~2(c) OR phpgroupware~5(c))) AND 
 (libtie-regexphash-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT cupsys~14(c)) AND 
 (NOT smtpguard~1(c)) AND 
 (NOT wmpomme~1(c)) AND 
 (libbcprov-java~1(c) IMPLIES libgcj-common~8(c) AND (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c))) AND 
 (NOT libgtop2-7~7(c)) AND 
 (NOT xbattle~1(c)) AND 
 (NOT kde-i18n-wa~2(c)) AND 
 (NOT dircproxy~2(c)) AND 
 (NOT libstfl-spl~2(c)) AND 
 (NOT libmp3splt0~2(c)) AND 
 (NOT python-djvu~2(c)) AND 
 (NOT netpbm~7(c)) AND 
 (NOT obexd-client~1(c)) AND 
 (libhtml-clean-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT luola~3(c)) AND 
 (NOT gambas2-script~2(c)) AND 
 (NOT cfingerd~1(c)) AND 
 (NOT postfix-policyd-spf-python~3(c)) AND 
 (NOT rrdtool-tcl~2(c)) AND 
 (NOT swscanner~1(c)) AND 
 (NOT xfce4-power-manager~4(c)) AND 
 (NOT zope-cmfsetup1.6~1(c)) AND 
 (NOT kde-i18n-uz~2(c)) AND 
 (NOT plplot9-driver-gnome2~2(c)) AND 
 (NOT xmms-goom~1(c)) AND 
 (NOT libgcj10-dev~2(c)) AND 
 (libnarray-ruby1.9.1-dbg~1(c) IMPLIES libnarray-ruby1.9.1~1(c)) AND 
 (libglobus-openssl~1(c) IMPLIES libssl0.9.8(c)) AND 
 (NOT libdmx4linux-dev~1(c)) AND 
 (NOT libgtkdatabox-0.9.0-1-dev~1(c)) AND 
 (NOT dosfstools~2(c)) AND 
 (NOT logjam~2(c)) AND 
 (libhibernate-entitymanager-java~1(c) IMPLIES (openjdk-6-jre~8(c) OR openjdk-6-jre~8(c) OR gcj-4.4-jre~2(c))) AND 
 (NOT i3lock~1(c)) AND 
 (NOT libcamel1.2-14~4(c)) AND 
 (NOT vamps~2(c)) AND 
 (NOT xserver-xorg-video-radeonhd~1(c)) AND 
 (NOT mrtgutils~2(c)) AND 
 (NOT cuyo~3(c)) AND 
 (NOT libcommons-launcher-java~1(c)) AND 
 (NOT kde-i18n-uk~2(c)) AND 
 (NOT mrtg-rrd~2(c)) AND 
 (NOT powersaved~2(c)) AND 
 (NOT epiphany-browser~10(c)) AND 
 (NOT libglobus-libtool~1(c)) AND 
 (NOT dictfmt~2(c)) AND 
 (NOT libzorp2-dev~1(c)) AND 
 (NOT libplexus-component-metadata-java~1(c)) AND 
 (NOT libgupnp-ui-1.0-0~2(c)) AND 
 (NOT hp-search-mac~1(c)) AND 
 (NOT libnws-dev~2(c)) AND 
 (NOT tclgeoip~1(c)) AND 
 (NOT librenaissance0-dev~1(c)) AND 
 (NOT deluge-console~1(c)) AND 
 (libmono-corlib2.0-cil~10(c) IMPLIES mono-jit~7(c) AND (mono-jit~7(c) OR mono-jit~4(c))) AND 
 (NOT kdebase-workspace-data~7(c)) AND 
 (phpgroupware-bookmarks~1(c) IMPLIES (phpgroupware~2(c) OR phpgroupware~5(c))) AND 
 (NOT libsasl2-modules~3(c)) AND 
 (NOT kde-i18n-tr~2(c)) AND 
 (NOT libboost-serialization1.38-dev~1(c)) AND 
 (NOT xboing~1(c)) AND 
 (NOT dodgindiamond2~2(c)) AND 
 (NOT sshproxy-backend-mysql~1(c)) AND 
 (NOT libguile-ltdl-1~2(c)) AND 
 (NOT libgfortran3-dbg~1(c)) AND 
 (NOT iceape-chatzilla~1(c)) AND 
 (NOT matroxset~1(c)) AND 
 (openoffice.org-help-sv~2(c) IMPLIES openoffice.org-writer(c) AND openoffice.org-l10n-sv(c)) AND 
 (NOT otags~2(c)) AND 
 (NOT xmms2-plugin-curl~2(c)) AND 
 (dict-gcide~1(c) IMPLIES (serpento~1(c) OR dictd~4(c) OR dictd(c))) AND 
 (NOT bacula-console-wx~2(c)) AND 
 (NOT libboost-system1.39.0~2(c)) AND 
 (NOT docbook~4(c)) AND 
 (python-central~22(c) IMPLIES python~22(c)) AND 
 (NOT libpsiconv6~2(c)) AND 
 (NOT kde-i18n-th~2(c)) AND 
 (NOT sdate~1(c)) AND 
 (fai-server~1(c) IMPLIES fai-client(c) AND debootstrap(c)) AND 
 (libparse-pidl-perl~1(c) IMPLIES perl(c) AND libparse-yapp-perl(c)) AND 
 (NOT libfam-ruby~2(c)) AND 
 (NOT kde-i18n-tg~2(c)) AND 
 (NOT xpenguins~2(c)) AND 
 (NOT libhttp-dav-perl~2(c)) AND 
 (NOT dblatex~2(c)) AND 
 (NOT ttf-kacst~2(c)) AND 
 (NOT libgcj10-awt~1(c)) AND 
 (NOT libgtk2-ex-podviewer-perl~2(c)) AND 
 (NOT kdeartwork~6(c)) AND 
 (NOT sharutils~3(c)) AND 
 (NOT wysihtml-el~1(c)) AND 
 (NOT dact~2(c)) AND 
 (NOT kde-i18n-sv~2(c)) AND 
 (openoffice.org-help-sl~2(c) IMPLIES openoffice.org-writer(c) AND openoffice.org-l10n-sl(c)) AND 
 (NOT xmp~3(c)) AND 
 (NOT dhcp3-dev~2(c)) AND 
 (sqwebmail-de~1(c) IMPLIES sqwebmail(c)) AND 
 (NOT inetutils-telnet~1(c)) AND 
 (NOT libmarble-dev~1(c)) AND 
 (NOT kde-i18n-ta~2(c)) AND 
 (NOT libasm0-dev~2(c)) AND 
 (NOT gpsd-dbg~2(c)) AND 
 (NOT ballz-dbg~1(c)) AND 
 (NOT kde-i18n-ss~2(c)) AND 
 (NOT xruskb~1(c)) AND 
 (NOT libmail-thread-perl~1(c)) AND 
 (NOT libproc-processtable-perl~1(c)) AND 
 (NOT bootcd-hppa~1(c)) AND 
 (NOT kde-i18n-sr~2(c)) AND 
 (NOT libace-rmcast5.4.7c2a~1(c)) AND 
 (libmaruku-ruby1.8~1(c) IMPLIES ruby1.8(c)) AND 
 (NOT capiutils~2(c)) AND 
 (NOT lyskom-server~2(c)) AND 
 (NOT vserver-debiantools~2(c)) AND 
 (NOT iptables-dev~3(c)) AND 
 (NOT fretsonfire~1(c)) AND 
 (NOT ghc6-doc~8(c)) AND 
 (NOT libcgi0~1(c)) AND 
 (NOT shiki-wine-theme~1(c)) AND 
 (NOT latex-cjk-japanese-wadalab~2(c)) AND 
 (NOT python-gtop~1(c)) AND 
 (NOT libvcs-rcs-perl~1(c)) AND 
 (NOT libavahi-core-dev~2(c)) AND 
 (NOT libgraphicsmagick3~2(c)) AND 
 (NOT librenaissance0~4(c)) AND 
 (NOT eclipse-rcp-gcj~2(c)) AND 
 (NOT kde-i18n-sl~2(c)) AND 
 (openoffice.org-help-ru~2(c) IMPLIES openoffice.org-writer(c) AND openoffice.org-l10n-ru(c)) AND 
 (NOT kde-i18n-sk~2(c)) AND 
 (libtpm-unseal-dev~1(c) IMPLIES libtpm-unseal0~1(c)) AND 
 (NOT wmtop~1(c)) AND 
 (NOT xpilot-ng-utils~3(c)) AND 
 (ntp-refclock~2(c) IMPLIES ntp~4(c)) AND 
 (NOT scilab-bin~3(c)) AND 
 (NOT gracie~1(c)) AND 
 (NOT gapcmon~2(c)) AND 
 (NOT specter-pgsql~1(c)) AND 
 (NOT hashalot~3(c)) AND 
 (NOT libwebkit-dev~2(c)) AND 
 (NOT bacula-sd-sqlite3~1(c)) AND 
 (gstreamer0.10-plugins-base-apps~1(c) IMPLIES perl(c) AND gstreamer0.10-tools(c)) AND 
 (NOT libmono-npgsql2.0-cil~5(c)) AND 
 (NOT kde-i18n-se~2(c)) AND 
 (NOT libxbsql0c2~2(c)) AND 
 (NOT kde-i18n-rw~2(c)) AND 
 (NOT libsqlrelay-tcl~1(c)) AND 
 (NOT libgnuradio-core0c2a~1(c)) AND 
 (NOT kde-i18n-ru~2(c)) AND 
 (NOT halibut~2(c)) AND 
 (NOT texgd~2(c)) AND 
 (NOT autodns-dhcp~2(c)) AND 
 (NOT libroot-bindings-ruby5.24~1(c)) AND 
 (NOT stressapptest~1(c)) AND 
 (NOT gpiv-mpi~1(c)) AND 
 (phpgroupware-dj~1(c) IMPLIES (phpgroupware~2(c) OR phpgroupware~5(c))) AND 
 (NOT emacs23~1(c)) AND 
 (NOT libgirepository1.0-dev~3(c)) AND 
 (NOT libmowgli1-dbg~1(c)) AND 
 (NOT kde-i18n-ro~2(c)) AND 
 (NOT xli~3(c)) AND 
 (NOT libmeanwhile1~2(c)) AND 
 (NOT libfwbuilder8-dbg~1(c)) AND 
 (NOT png2html~1(c)) AND 
 (libdate-convert-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT libgoogle-perftools-dev~1(c)) AND 
 (libglib2.0-0-dbg~1(c) IMPLIES libglib2.0-0~5(c)) AND 
 (libicee-dev~2(c) IMPLIES libicee12~1(c)) AND 
 (NOT ratbox-services-pgsql~1(c)) AND 
 (NOT libtunepimp-dev~1(c)) AND 
 (NOT libatlas-cpp-0.6-0c2a-dbg~1(c)) AND 
 (NOT libglusterfs0~1(c)) AND 
 (NOT libgcj10-dbg~2(c)) AND 
 (NOT php5-curl~1(c)) AND 
 (NOT wmtime~2(c)) AND 
 (NOT broffice.org~3(c)) AND 
 (NOT sshmenu~1(c)) AND 
 (NOT wget~4(c)) AND 
 (NOT libusrp0c2a-dbg~1(c)) AND 
 (NOT libgrafx11-1-gfortran~1(c)) AND 
 (NOT libavahi1.0-cil~2(c)) AND 
 (NOT ekiga~3(c)) AND 
 (NOT mp4h~3(c)) AND 
 (NOT xmhtml1~1(c)) AND 
 (NOT cl-quick-arrays~1(c)) AND 
 (NOT libpcp-gui2-dev~1(c)) AND 
 (NOT krb5-admin-server~3(c)) AND 
 (NOT libcanberra-gtk0-dbg~1(c)) AND 
 (NOT nagios-nrpe-server~2(c)) AND 
 (NOT ora2pg~1(c)) AND 
 (NOT python-pythonmagick~1(c)) AND 
 (NOT dancer-xml~1(c)) AND 
 (latex-xft-fonts~1(c) IMPLIES ttf-lyx(c)) AND 
 (NOT bibclean~1(c)) AND 
 (bsfilter~1(c) IMPLIES ruby1.8(c)) AND 
 (NOT mnogosearch-pgsql~2(c)) AND 
 (NOT uim-fep~2(c)) AND 
 (libalgorithm-diff-ruby1.8~2(c) IMPLIES libruby1.8(c)) AND 
 (NOT libkonq5~5(c)) AND 
 (openoffice.org-help-pt~2(c) IMPLIES openoffice.org-writer(c) AND openoffice.org-l10n-pt(c)) AND 
 (NOT syslinux~1(c)) AND 
 (NOT libtinymailui-gtk-1.0-0~2(c)) AND 
 (NOT libao2~2(c)) AND 
 (NOT speech-tools-doc~2(c)) AND 
 (NOT libhtml-mason-perl~9(c)) AND 
 (NOT armagetronad-dedicated~1(c)) AND 
 (NOT python-pastescript~2(c)) AND 
 (NOT adesklets~1(c)) AND 
 (NOT libcairo-directfb2-dev~6(c)) AND 
 (diff~6(c) IMPLIES diffutils(c)) AND 
 (openoffice.org-help-pl~2(c) IMPLIES openoffice.org-writer(c) AND openoffice.org-l10n-pl(c)) AND 
 (NOT libpolkit-backend-1-0~3(c)) AND 
 (NOT libdumbnet-dev~1(c)) AND 
 (NOT kde-i18n-pt~2(c)) AND 
 (NOT libracc-runtime-ruby~3(c)) AND 
 (NOT libmail-gnupg-perl~2(c)) AND 
 (NOT libreadonly-xs-perl~1(c)) AND 
 (python-distutils-extra~1(c) IMPLIES python(c) AND python-central~22(c) AND intltool(c)) AND 
 (NOT shorewall-lite~1(c)) AND 
 (NOT dialog~8(c)) AND 
 (NOT fprobe-ulog~1(c)) AND 
 (NOT libart2-ruby1.8~1(c)) AND 
 (NOT python-ldaptor~1(c)) AND 
 (NOT nethogs~1(c)) AND 
 (vinetto~1(c) IMPLIES python(c) AND python-support~7(c)) AND 
 (NOT ntfs-3g~2(c)) AND 
 (NOT kde-i18n-pl~2(c)) AND 
 (NOT libmono-wcf3.0-cil~2(c)) AND 
 (NOT libaiksaurus-1.2-dev~1(c)) AND 
 (nexuiz-server-dbg~1(c) IMPLIES nexuiz-server~3(c)) AND 
 (NOT python-rpy2~2(c)) AND 
 (NOT ibus-table-array30~1(c)) AND 
 (NOT phpgroupware-0.9.16-notes~1(c)) AND 
 (NOT libtemplate-timer-perl~1(c)) AND 
 (NOT libqd2c2a~1(c)) AND 
 (NOT libnet-dns-resolver-programmable-perl~2(c)) AND 
 (NOT libbackgroundrb-ruby1.8~1(c)) AND 
 (NOT libclass-accessor-lvalue-perl~1(c)) AND 
 (NOT mlview~1(c)) AND 
 (NOT libgdbm-ruby1.9~1(c)) AND 
 (NOT kde-i18n-pa~2(c)) AND 
 (NOT libmoosex-types-structured-perl~4(c)) AND 
 (NOT libgdbm-ruby1.8~1(c)) AND 
 (NOT libldap-ruby1.8~3(c)) AND 
 (NOT gap-guava~1(c)) AND 
 (NOT netdisco-backend~1(c)) AND 
 (NOT hardware-monitor~2(c)) AND 
 (NOT keyutils~2(c)) AND 
 (NOT glunarclock~2(c)) AND 
 (libclass-inner-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT nessus-plugins~2(c)) AND 
 (NOT libisccc50~1(c)) AND 
 (NOT connect-proxy~2(c)) AND 
 (NOT libobby-0.4-1-dbg~1(c)) AND 
 (NOT libgnomedb2-dev~1(c)) AND 
 (NOT libshp1~2(c)) AND 
 (NOT msort~2(c)) AND 
 (NOT gtk2-engines-moblin~1(c)) AND 
 (NOT hermes1~2(c)) AND 
 (NOT pykaraoke-bin~3(c)) AND 
 (openoffice.org-help-nl~2(c) IMPLIES openoffice.org-writer(c) AND openoffice.org-l10n-nl(c)) AND 
 (NOT stl-manual~2(c)) AND 
 (NOT libpolkit-gnome0~2(c)) AND 
 (libmpg123-dev~1(c) IMPLIES libmpg123-0~3(c)) AND 
 (libpath-class-perl~3(c) IMPLIES perl~69(c)) AND 
 (NOT pixmap~2(c)) AND 
 (NOT simgear1.0.0~2(c)) AND 
 (NOT kiten~2(c)) AND 
 (NOT dovecot-imapd~1(c)) AND 
 (NOT tuxguitar~2(c)) AND 
 (NOT python-pydot~2(c)) AND 
 (NOT libvigraimpex2~1(c)) AND 
 (NOT kde-i18n-nn~2(c)) AND 
 (NOT nfqueue-bindings-perl~1(c)) AND 
 (NOT sysnews~2(c)) AND 
 (NOT cowdancer~1(c)) AND 
 (NOT libgegl-0.0-dev~1(c)) AND 
 (NOT kde-i18n-nl~2(c)) AND 
 (NOT python2.5-dbg~1(c)) AND 
 (NOT setpwc~2(c)) AND 
 (NOT libisccc40~1(c)) AND 
 (NOT libclips-dev~2(c)) AND 
 (NOT rdup~1(c)) AND 
 (NOT curl~3(c)) AND 
 (NOT libsemweb1.0-cil~1(c)) AND 
 (NOT compiz~3(c)) AND 
 (NOT dhcping~1(c)) AND 
 (NOT bacula-console-qt~2(c)) AND 
 (NOT libdb4.7++~1(c)) AND 
 (NOT gpodder~1(c)) AND 
 (NOT kde-i18n-nb~2(c)) AND 
 (NOT gkrellmwho2~1(c)) AND 
 (NOT libqt4-ruby1.8~2(c)) AND 
 (libmono0-dbg~2(c) IMPLIES libmono0~10(c)) AND 
 (NOT kde-i18n-ms~2(c)) AND 
 (NOT libxdamage1~1(c)) AND 
 (NOT libmimelib1-dev~4(c)) AND 
 (libtest-mockmodule-perl~1(c) IMPLIES perl~69(c)) AND 
 (libhtml-template-perl~3(c) IMPLIES perl~69(c)) AND 
 (NOT libfinance-quote-perl~3(c)) AND 
 (fckeditor~3(c) IMPLIES (lighttpd~4(c) OR cherokee~4(c) OR lighttpd~5(c) OR apache-ssl~6(c) OR apache2-mpm-prefork~6(c) OR lighttpd~4(c) OR cherokee~4(c) OR lighttpd~5(c) OR apache-ssl~6(c) OR apache2-mpm-prefork~6(c) OR fnord~2(c) OR webfs~1(c) OR mini-httpd~1(c) OR aolserver4-daemon~1(c) OR ebhttpd~1(c) OR apache2(c) OR apache2-mpm-prefork~6(c) OR apache2-mpm-prefork~6(c))) AND 
 (NOT lives~2(c)) AND 
 (NOT openoffice.org-qa-tools~3(c)) AND 
 (NOT xmms-xmmplayer~1(c)) AND 
 (NOT gstreamer0.8-dvd~2(c)) AND 
 (NOT kde-i18n-mn~2(c)) AND 
 (NOT mbrola-la1~1(c)) AND 
 (NOT libghc6-gnomevfs-dev~2(c)) AND 
 (libyaml-perl~8(c) IMPLIES perl~69(c)) AND 
 (NOT oftc-hybrid-respond~2(c)) AND 
 (NOT kde-i18n-mk~2(c)) AND 
 (NOT openoffice.org-java-common~16(c)) AND 
 (NOT freeradius-ldap~1(c)) AND 
 (libmono-cecil-private-cil~2(c) IMPLIES (libmono-corlib2.0-cil~6(c) OR libmono-corlib2.0-cil~10(c)) AND libmono-system2.0-cil~13(c)) AND 
 (NOT makeztxt~2(c)) AND 
 (NOT wesnoth-aoi~1(c)) AND 
 (NOT gtk-sharp2-examples~2(c)) AND 
 (NOT libwps-0.1-1~1(c)) AND 
 (NOT packit~1(c)) AND 
 (NOT radvd~2(c)) AND 
 (tex-common~7(c) IMPLIES ucf(c) AND (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c)) AND (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c))) AND 
 (NOT wireshark-dev~4(c)) AND 
 (NOT libthunar-vfs-1-2~7(c)) AND 
 (NOT kde-i18n-lv~2(c)) AND 
 (NOT gnbd-client~1(c)) AND 
 (NOT kmenuedit~2(c)) AND 
 (NOT cwirc~2(c)) AND 
 (NOT libdose2-ocaml-dev~1(c)) AND 
 (NOT kde-i18n-lt~2(c)) AND 
 (NOT xfm~3(c)) AND 
 (NOT gnubiff~2(c)) AND 
 (NOT dvswitch~1(c)) AND 
 (libmp3tag-ruby1.8~2(c) IMPLIES libruby1.8(c)) AND 
 (NOT gtimelog~1(c)) AND 
 (NOT rwall~1(c)) AND 
 (NOT python-samba~2(c)) AND 
 (NOT amule-emc~1(c)) AND 
 (NOT kde-i18n-ptbr~3(c)) AND 
 (NOT libtexttools-dev~1(c)) AND 
 (NOT libgnomecanvas2-dev~5(c)) AND 
 (openoffice.org-help-ko~2(c) IMPLIES openoffice.org-writer(c) AND openoffice.org-l10n-ko(c)) AND 
 (NOT libace-dev~4(c)) AND 
 (NOT fontconfig~5(c)) AND 
 (NOT libstdc++5-3.3-pic~1(c)) AND 
 (NOT pgpdump~1(c)) AND 
 (openoffice.org-help-km~2(c) IMPLIES openoffice.org-writer(c) AND openoffice.org-l10n-km(c)) AND 
 (NOT php-services-weather~2(c)) AND 
 (NOT pennmush-i18n~1(c)) AND 
 (NOT python-imdbpy~3(c)) AND 
 (NOT libpango1.0-common~4(c)) AND 
 (NOT python-psycopg2~3(c)) AND 
 (NOT liblua50~3(c)) AND 
 (NOT libgcj-doc~3(c)) AND 
 (NOT scalpel~1(c)) AND 
 (NOT kde-i18n-ko~2(c)) AND 
 (NOT glfer~1(c)) AND 
 (NOT cdcontrol~1(c)) AND 
 (NOT xmms2-plugin-wma~3(c)) AND 
 (iceowl-dev~2(c) IMPLIES iceowl~3(c) AND libnss3-dev(c)) AND 
 (NOT kde-i18n-km~2(c)) AND 
 (NOT libpolkit-grant2~2(c)) AND 
 (NOT python-alsaaudio~1(c)) AND 
 (NOT kde-i18n-kk~2(c)) AND 
 (NOT pilot-link~5(c)) AND 
 (NOT xdx~3(c)) AND 
 (education-desktop-other~2(c) IMPLIES education-tasks~2(c)) AND 
 (NOT libboost-python-dev~3(c)) AND 
 (texlive-metapost-doc~2(c) IMPLIES texlive-common~6(c)) AND 
 (NOT libopenipmi0~3(c)) AND 
 (NOT libgnomedesktop2.20-cil~2(c)) AND 
 (NOT libaspect0~1(c)) AND 
 (NOT nss-updatedb~2(c)) AND 
 (NOT libccolamd2.7.1~2(c)) AND 
 (NOT libroot-math-mathcore-dev~1(c)) AND 
 (NOT nbd-client~1(c)) AND 
 (NOT ttf-essays1743~1(c)) AND 
 (NOT vala-awn~1(c)) AND 
 (python-gadfly~1(c) IMPLIES python-central~22(c) AND python(c)) AND 
 (NOT octave2.9-forge~1(c)) AND 
 (NOT xdm~3(c)) AND 
 (NOT wwl~3(c)) AND 
 (libgeo-helmerttransform-perl~2(c) IMPLIES perl(c)) AND 
 (NOT pandoc~2(c)) AND 
 (NOT phpgroupware-0.9.16~1(c)) AND 
 (egroupware-notifications~1(c) IMPLIES egroupware-core~2(c)) AND 
 (libidna-punycode-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT gkrellm-ibam~2(c)) AND 
 (libnet-telnet-perl~3(c) IMPLIES perl~69(c)) AND 
 (NOT globus-proxy-utils~1(c)) AND 
 (NOT scim-bridge-el~1(c)) AND 
 (openoffice.org-help-it~2(c) IMPLIES openoffice.org-writer(c) AND openoffice.org-l10n-it(c)) AND 
 (openoffice.org-help-ja~2(c) IMPLIES openoffice.org-writer(c) AND openoffice.org-l10n-ja(c)) AND 
 (NOT jeuclid-cli~1(c)) AND 
 (NOT pvpgn~1(c)) AND 
 (NOT wesnoth-all~1(c)) AND 
 (NOT libvia0~1(c)) AND 
 (postgresql-client-common~4(c) IMPLIES (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c))) AND 
 (NOT squid3-common~3(c)) AND 
 (NOT libisajet758-3-dev~2(c)) AND 
 (NOT ygraph~1(c)) AND 
 (NOT debarchiver~1(c)) AND 
 (NOT libgksuui1.0-1~1(c)) AND 
 (NOT libdeps-renderer-tulip-perl~2(c)) AND 
 (libdata-javascript-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT xdg-user-dirs~1(c)) AND 
 (NOT libgnomemm-2.6-dev~2(c)) AND 
 (NOT libobjc-lf2~2(c)) AND 
 (NOT kde-i18n-it~2(c)) AND 
 (NOT kde-i18n-ja~2(c)) AND 
 (NOT kde-i18n-is~2(c)) AND 
 (NOT synergy~3(c)) AND 
 (NOT gccxml~1(c)) AND 
 (NOT monkeytail~1(c)) AND 
 (NOT linux-image-2.6.18-6-xen-vserver-amd64~1(c)) AND 
 (NOT python-remctl~1(c)) AND 
 (NOT audex~1(c)) AND 
 (NOT swig1.3-doc~1(c)) AND 
 (NOT gkrellm-mldonkey~1(c)) AND 
 (NOT libdb4.3-ruby1.9~1(c)) AND 
 (openoffice.org-help-hu~2(c) IMPLIES openoffice.org-writer(c) AND openoffice.org-l10n-hu(c)) AND 
 (NOT libdb4.3-ruby1.8~1(c)) AND 
 (monodoc-njb-manual~1(c) IMPLIES monodoc-manual(c)) AND 
 (NOT buffy~1(c)) AND 
 (NOT gtkpool~1(c)) AND 
 (libdata-float-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT root-system-bin~1(c)) AND 
 (NOT r-cran-its~2(c)) AND 
 (NOT encfs~2(c)) AND 
 (NOT libclaw-logger1~2(c)) AND 
 (NOT xcb~3(c)) AND 
 (NOT libgda3-mysql~1(c)) AND 
 (NOT memcached~2(c)) AND 
 (NOT speech-dispatcher~4(c)) AND 
 (NOT ucspi-tcp-src~1(c)) AND 
 (NOT python-mapnik~1(c)) AND 
 (NOT libaws-doc~2(c)) AND 
 (NOT libflickrnet-cil-dev~1(c)) AND 
 (NOT pyroman~2(c)) AND 
 (NOT bubblemon~2(c)) AND 
 (NOT copher~1(c)) AND 
 (NOT kde-i18n-hu~2(c)) AND 
 (NOT gvfs-backends~4(c)) AND 
 (NOT libgdome2-ocaml~3(c)) AND 
 (NOT libsoci-sqlite3-gcc~1(c)) AND 
 (NOT libtermios-ruby~1(c)) AND 
 (NOT python-reportlab-accel~2(c)) AND 
 (NOT kde-i18n-hr~2(c)) AND 
 (NOT multipath-tools-boot~1(c)) AND 
 (NOT gnuradio-examples~2(c)) AND 
 (NOT libkdeedu4~4(c)) AND 
 (libsort-fields-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT kweather~3(c)) AND 
 (NOT libsfml1.5-dbg~1(c)) AND 
 (NOT libnasl2~3(c)) AND 
 (NOT libtododb0-dev~1(c)) AND 
 (NOT iceowl~3(c)) AND 
 (NOT libghc6-hsql-dev~1(c)) AND 
 (NOT root-plugin-gui-fitpanel~1(c)) AND 
 (education-standalone~1(c) IMPLIES education-tasks(c)) AND 
 (NOT libsilc-1.1-2-dev~1(c)) AND 
 (libbreakpoint-ruby1.8~2(c) IMPLIES ruby(c)) AND 
 (NOT dkim-filter~2(c)) AND 
 (NOT liblzo2-2~3(c)) AND 
 (NOT obconf~3(c)) AND 
 (NOT libgretl1-dev~1(c)) AND 
 (libsyntax-highlight-engine-simple-languages-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT apt-zip~1(c)) AND 
 (NOT kde-i18n-hi~2(c)) AND 
 (NOT libgalago-gtk1.0-cil~1(c)) AND 
 (NOT libjava3d-java~1(c)) AND 
 (NOT kde-i18n-he~2(c)) AND 
 (NOT liblog4c-dev~1(c)) AND 
 (NOT libgutenprint-dev~2(c)) AND 
 (NOT moon-buggy~1(c)) AND 
 (NOT openoffice.org-help-gl~2(c)) AND 
 (NOT lua5.1~2(c)) AND 
 (NOT alpine-pico~3(c)) AND 
 (NOT rgmanager~1(c)) AND 
 (NOT libfam-dev~1(c)) AND 
 (NOT slang-gdbm~2(c)) AND 
 (NOT pnputils~2(c)) AND 
 (NOT libunwind-setjmp0~1(c)) AND 
 (NOT libuuid1~6(c)) AND 
 (libx11-protocol-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT libswt-glx-gtk-3.4-jni~1(c)) AND 
 (NOT emacs23-bin-common~2(c)) AND 
 (NOT libvc0~3(c)) AND 
 (NOT gstreamer0.10-plugins-bad-dbg~7(c)) AND 
 (phpgroupware-developer-tools~1(c) IMPLIES (phpgroupware~2(c) OR phpgroupware~5(c))) AND 
 (NOT libcppunit-1.12-1~1(c)) AND 
 (NOT torrus-apache~1(c)) AND 
 (NOT libcppunit-1.12-0~1(c)) AND 
 (phpbb2~3(c) IMPLIES (libapache-mod-php5(c) OR libapache2-mod-php5(c) OR php4-cgi(c)) AND (php5-sybase(c) OR php5-pgsql(c)) AND (lighttpd~4(c) OR cherokee~4(c) OR lighttpd~5(c) OR apache-ssl~6(c) OR apache2-mpm-prefork~6(c) OR lighttpd~4(c) OR cherokee~4(c) OR lighttpd~5(c) OR apache-ssl~6(c) OR apache2-mpm-prefork~6(c) OR fnord~2(c) OR webfs~1(c) OR mini-httpd~1(c) OR aolserver4-daemon~1(c) OR ebhttpd~1(c) OR apache2(c) OR apache2-mpm-prefork~6(c) OR apache2-mpm-prefork~6(c)) AND (debconf~38(c) OR debconf~38(c) OR debconf~35(c) OR debconf~35(c) OR debconf~38(c))) AND 
 (python-markdown~1(c) IMPLIES python~22(c) AND python-support~7(c)) AND 
 (NOT hdfview~1(c)) AND 
 (NOT sylpheed-i18n~2(c)) AND 
 (NOT kde-i18n-gl~2(c)) AND 
 (NOT linux-patch-bootsplash~1(c)) AND 
 (NOT mew-beta~3(c)) AND 
 (NOT deejayd-gstreamer~1(c)) AND 
 (education-desktop-sugar~1(c) IMPLIES education-tasks~2(c)) AND 
 (NOT fpc-source~1(c)) AND 
 (openoffice.org-help-fr~2(c) IMPLIES openoffice.org-writer(c) AND openoffice.org-l10n-fr(c)) AND 
 (NOT exonerate~1(c)) AND 
 (NOT gkrellm~13(c)) AND 
 (NOT kde-i18n-fy~2(c)) AND 
 (NOT openoffice.org-l10n-pa-in~4(c)) AND 
 (NOT xscreensaver-gl~3(c)) AND 
 (libcgi-session-serialize-yaml-perl~1(c) IMPLIES perl~69(c) AND libcgi-session-perl~4(c) AND (libyaml-perl(c) OR libyaml-syck-perl(c))) AND 
 (NOT libgl1-mesa-dev~3(c)) AND 
 (NOT zope-plonecollectorng~1(c)) AND 
 (NOT zope-ploneerrorreporting~2(c)) AND 
 (NOT wmmaiload~2(c)) AND 
 (NOT libconvert-pem-perl~1(c)) AND 
 (NOT phalanx~2(c)) AND 
 (sig2dot~1(c) IMPLIES perl(c)) AND 
 (NOT libmudflap0-4.4-dev~1(c)) AND 
 (NOT kde-i18n-ga~2(c)) AND 
 (NOT libsasl2-modules-gssapi-mit~2(c)) AND 
 (libqd-dev~1(c) IMPLIES libqd2c2a(c)) AND 
 (openoffice.org-help-fi~2(c) IMPLIES openoffice.org-writer(c) AND openoffice.org-l10n-fi(c)) AND 
 (NOT transset-df~1(c)) AND 
 (NOT kde-i18n-fr~2(c)) AND 
 (NOT multisync-tools~1(c)) AND 
 (NOT libmikmod2~2(c)) AND 
 (NOT ethtool~2(c)) AND 
 (icedove-l10n-pa-in~1(c) IMPLIES icedove~13(c) AND (icedove~13(c) OR icedove~5(c))) AND 
 (NOT glest~1(c)) AND 
 (NOT sun-java6-fonts~1(c)) AND 
 (NOT libconcord1-dev~1(c)) AND 
 (NOT education-tasks~2(c)) AND 
 (NOT plptools-dev~1(c)) AND 
 (NOT libboost-graph1.40.0~1(c)) AND 
 (NOT conntrackd~2(c)) AND 
 (NOT libkgantt0-dev~2(c)) AND 
 (NOT libgettext-ocaml~1(c)) AND 
 (NOT libconfig-model-perl~4(c)) AND 
 (NOT openoffice.org-help-eu~2(c)) AND 
 (NOT listen~1(c)) AND 
 (openoffice.org-help-et~2(c) IMPLIES openoffice.org-writer(c) AND openoffice.org-l10n-et(c)) AND 
 (NOT bochs-wx~3(c)) AND 
 (openoffice.org-help-es~2(c) IMPLIES openoffice.org-writer(c) AND openoffice.org-l10n-es(c)) AND 
 (NOT flex-old~1(c)) AND 
 (NOT kde-i18n-fi~2(c)) AND 
 (NOT netbeans-platform~1(c)) AND 
 (NOT wmsun~1(c)) AND 
 (NOT aolserver4-nsopenssl~2(c)) AND 
 (NOT rwalld~2(c)) AND 
 (openoffice.org-help-en~2(c) IMPLIES openoffice.org-help-en-us(c)) AND 
 (NOT vflib2-dev~1(c)) AND 
 (NOT cyrus-murder-2.2~2(c)) AND 
 (NOT monotone~4(c)) AND 
 (openoffice.org-help-el~2(c) IMPLIES openoffice.org-writer(c) AND openoffice.org-l10n-el(c)) AND 
 (NOT kdepim-dev~6(c)) AND 
 (NOT kde-i18n-eu~2(c)) AND 
 (NOT kde-i18n-et~2(c)) AND 
 (NOT kde-i18n-fa~2(c)) AND 
 (NOT kde-i18n-es~2(c)) AND 
 (NOT python-zope.configuration~1(c)) AND 
 (NOT libladspa-ocaml~2(c)) AND 
 (NOT gpe-confd~1(c)) AND 
 (openoffice.org-help-dz~2(c) IMPLIES openoffice.org-writer(c) AND openoffice.org-l10n-dz(c)) AND 
 (NOT subversion~8(c)) AND 
 (NOT libqmmpui0~2(c)) AND 
 (NOT libsafe-hole-perl~2(c)) AND 
 (NOT libxdb1~2(c)) AND 
 (NOT libftgl2~2(c)) AND 
 (NOT kde-i18n-eo~2(c)) AND 
 (NOT scummvm~3(c)) AND 
 (NOT libghc6-hscolour-dev~1(c)) AND 
 (NOT sufary-tcltk~1(c)) AND 
 (NOT g++-4.4~2(c)) AND 
 (NOT goobox~1(c)) AND 
 (NOT kde-i18n-el~2(c)) AND 
 (NOT libucl1~3(c)) AND 
 (NOT hugs~5(c)) AND 
 (NOT libcryptsetup1~1(c)) AND 
 (NOT libtest-email-perl~1(c)) AND 
 (NOT g++-4.1~2(c)) AND 
 (NOT pfsview~1(c)) AND 
 (NOT libsyncml0~1(c)) AND 
 (NOT tclvfs~2(c)) AND 
 (NOT python-xattr~1(c)) AND 
 (NOT libdbd-mysql-ruby1.9~1(c)) AND 
 (NOT dcoprss~1(c)) AND 
 (NOT coriander~1(c)) AND 
 (NOT libdbd-mysql-ruby1.8~1(c)) AND 
 (NOT licq-plugin-qt~2(c)) AND 
 (NOT transmission-cli~3(c)) AND 
 (NOT ttf-gfs-theokritos~1(c)) AND 
 (NOT libtododb0-dbg~1(c)) AND 
 (NOT tntnet-runtime~1(c)) AND 
 (NOT bacula-sd~5(c)) AND 
 (NOT libglib-cil~2(c)) AND 
 (NOT gambas2-gb-net-smtp~2(c)) AND 
 (libsilc-1.1-2-dbg~1(c) IMPLIES libsilc-1.1-2~2(c)) AND 
 (NOT linux-source-2.6.31~4(c)) AND 
 (NOT docbook2x~2(c)) AND 
 (NOT apertium~6(c)) AND 
 (openoffice.org-help-de~2(c) IMPLIES openoffice.org-writer(c) AND openoffice.org-l10n-de(c)) AND 
 (NOT sbcl~9(c)) AND 
 (NOT sfftobmp~3(c)) AND 
 (NOT libmrml1c2a~3(c)) AND 
 (NOT qtdmm~2(c)) AND 
 (NOT libgraph-readwrite-perl~1(c)) AND 
 (NOT balazarbrothers~1(c)) AND 
 (NOT kdepasswd~2(c)) AND 
 (openoffice.org-help-da~2(c) IMPLIES openoffice.org-writer(c) AND openoffice.org-l10n-da(c)) AND 
 (openoffice.org-help-cs~2(c) IMPLIES openoffice.org-writer(c) AND openoffice.org-l10n-cs(c)) AND 
 (NOT xmms2-plugin-smb~1(c)) AND 
 (NOT libpt2.6.5~2(c)) AND 
 (NOT kde-i18n-cy~2(c)) AND 
 (NOT libpt2.6.4~2(c)) AND 
 (NOT pybackpack~1(c)) AND 
 (NOT kde-i18n-de~2(c)) AND 
 (NOT euler~1(c)) AND 
 (NOT bochs-sdl~1(c)) AND 
 (tkdiff~2(c) IMPLIES tk8.4(c)) AND 
 (liblog-agent-logger-perl~1(c) IMPLIES perl~69(c) AND libgetargs-long-perl(c) AND liblog-agent-perl(c)) AND 
 (NOT wesnoth-server~2(c)) AND 
 (NOT hellanzb~1(c)) AND 
 (NOT kde-i18n-da~2(c)) AND 
 (NOT ilisp~1(c)) AND 
 (NOT kde-i18n-cs~2(c)) AND 
 (NOT libgd-perl~3(c)) AND 
 (NOT r-cran-lme4~1(c)) AND 
 (NOT byzanz~2(c)) AND 
 (NOT mono-runtime-dbg~2(c)) AND 
 (NOT openoffice.org-l10n-en-za~1(c)) AND 
 (NOT krb5-pkinit~1(c)) AND 
 (NOT libgdata-google1.2-1~4(c)) AND 
 (libclass-throwable-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT freetype1-tools~3(c)) AND 
 (NOT timidity~5(c)) AND 
 (NOT python-pydds~2(c)) AND 
 (iceweasel-l10n-uk-ua~1(c) IMPLIES (iceweasel~16(c) OR iceweasel~5(c)) AND iceweasel~5(c)) AND 
 (NOT libhe5-hdfeos0~1(c)) AND 
 (NOT libonig2-dbg~2(c)) AND 
 (openoffice.org-help-ca~2(c) IMPLIES openoffice.org-writer(c) AND openoffice.org-l10n-ca(c)) AND 
 (NOT libflexdock-java~1(c)) AND 
 (NOT gambas2-gb-gui~3(c)) AND 
 (cl-csv~1(c) IMPLIES common-lisp-controller~17(c)) AND 
 (NOT r-cran-rmpi~2(c)) AND 
 (NOT libgnutls26-dbg~3(c)) AND 
 (NOT wminput~1(c)) AND 
 (libdatetime-format-db2-perl~1(c) IMPLIES perl~69(c) AND libdatetime-perl(c) AND libdatetime-format-builder-perl(c)) AND 
 (NOT libnspr4-0d~3(c)) AND 
 (NOT kde-i18n-ca~2(c)) AND 
 (NOT sendmail-base~2(c)) AND 
 (NOT kde-i18n-bs~2(c)) AND 
 (NOT kde-i18n-br~2(c)) AND 
 (NOT wayv~2(c)) AND 
 (NOT python-gnuradio~1(c)) AND 
 (NOT python-twisted-web2~5(c)) AND 
 (NOT kinput2-canna-wnn~3(c)) AND 
 (NOT tdb-dev~1(c)) AND 
 (libtest-checkmanifest-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT plplot9-driver-wxwidgets~1(c)) AND 
 (NOT kde-i18n-bn~2(c)) AND 
 (NOT qwit~1(c)) AND 
 (libactivesupport-ruby~2(c) IMPLIES libactivesupport-ruby1.8(c)) AND 
 (NOT tethereal~3(c)) AND 
 (latex209-base~1(c) IMPLIES texlive-base-bin(c)) AND 
 (NOT gambas2-gb-gtk~3(c)) AND 
 (NOT libsublime1~2(c)) AND 
 (NOT kde-i18n-az~2(c)) AND 
 (NOT kde-i18n-bg~2(c)) AND 
 (NOT samidare~1(c)) AND 
 (NOT libvolume-id-dev~1(c)) AND 
 (NOT libunshield0~2(c)) AND 
 (NOT qwik~1(c)) AND 
 (NOT libglobus-duroc-control-dev~1(c)) AND 
 (NOT cpufreqd~1(c)) AND 
 (libtime-clock-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT rt3.6-db-postgresql~1(c)) AND 
 (NOT libghc6-ifelse-dev~1(c)) AND 
 (NOT kde-i18n-ar~2(c)) AND 
 (NOT gnome-session~2(c)) AND 
 (NOT libncurses-ruby~1(c)) AND 
 (NOT xbuffy~2(c)) AND 
 (NOT kicker-applets~1(c)) AND 
 (NOT libgnutls26~3(c)) AND 
 (NOT monodevelop-debugger-mdb~1(c)) AND 
 (NOT libmediastreamer-dev~1(c)) AND 
 (NOT php4-kadm5~1(c)) AND 
 (NOT spamassassin~9(c)) AND 
 (NOT lprng~3(c)) AND 
 (NOT weechat-curses~3(c)) AND 
 (NOT libboost-system1.38.0~2(c)) AND 
 (NOT libapache-mod-random~1(c)) AND 
 (NOT r-cran-rcmdr~2(c)) AND 
 (NOT parchive~1(c)) AND 
 (NOT python-pisock-dbg~1(c)) AND 
 (NOT spline~2(c)) AND 
 (NOT libglobus-rls-client-dev~1(c)) AND 
 (NOT libpam-musclecard~2(c)) AND 
 (NOT kde-i18n-af~2(c)) AND 
 (NOT ifile-gnus-el~1(c)) AND 
 (NOT wmgrabimage~1(c)) AND 
 (NOT vdr-plugin-bitstreamout~2(c)) AND 
 (NOT wdiff~1(c)) AND 
 (NOT kscreensaver-xsavers~2(c)) AND 
 (NOT atlantik-dev~1(c)) AND 
 (NOT uae-dbg~1(c)) AND 
 (NOT firebird2-common~1(c)) AND 
 (NOT coreutils~18(c)) AND 
 (NOT graph-includes~2(c)) AND 
 (NOT libquantum-dev~2(c)) AND 
 (NOT radio~2(c)) AND 
 (NOT libsoundgen0~1(c)) AND 
 (NOT libgda2-ruby~1(c)) AND 
 (NOT libgnutls13~3(c)) AND 
 (NOT xmms2-plugin-sid~1(c)) AND 
 (NOT ept-cache~2(c)) AND 
 (NOT cernlib-montecarlo~1(c)) AND 
 (NOT pspresent~2(c)) AND 
 (NOT festlex-ifd~1(c)) AND 
 (NOT vtwm~2(c)) AND 
 (NOT libxrender-dev~4(c)) AND 
 (NOT praat~1(c)) AND 
 (NOT osirisd~1(c)) AND 
 (NOT libcairomm-1.0-dev~3(c)) AND 
 (NOT apf-client~2(c)) AND 
 (NOT radare-common~1(c)) AND 
 (NOT zope-replacesupport~1(c)) AND 
 (NOT gui-apt-key~1(c)) AND 
 (NOT paw-static~2(c)) AND 
 (libdballe-dev~1(c) IMPLIES libdballe4~2(c)) AND 
 (NOT libpt-1.10.10-plugins-dc~1(c)) AND 
 (NOT libtest-http-server-simple-stashwarnings-perl~1(c)) AND 
 (cfengine2-dbg~1(c) IMPLIES cfengine2~3(c)) AND 
 (libecasoundc2.2-dev~2(c) IMPLIES libreadline5-dev(c)) AND 
 (NOT libperl6-form-perl~1(c)) AND 
 (NOT libxmu-dev~2(c)) AND 
 (vblade-persist~1(c) IMPLIES vblade(c) AND runit~7(c)) AND 
 (NOT libhx-dev~2(c)) AND 
 (NOT gaiksaurus~1(c)) AND 
 (NOT pente~2(c)) AND 
 (NOT python2.4-minimal~4(c)) AND 
 (NOT qt3-linguist~3(c)) AND 
 (NOT ldapdiff~1(c)) AND 
 (NOT libctl-dev~2(c)) AND 
 (NOT libpqxx-2.6.8~1(c)) AND 
 (NOT php4-mapscript~1(c)) AND 
 (NOT tweak~1(c)) AND 
 (NOT anon-proxy~2(c)) AND 
 (NOT libmarble4~4(c)) AND 
 (phpgroupware-soap~1(c) IMPLIES (phpgroupware~2(c) OR phpgroupware~5(c))) AND 
 (pulseaudio-module-lirc-dbg~3(c) IMPLIES pulseaudio-module-lirc~5(c)) AND 
 (NOT jpegpixi~2(c)) AND 
 (NOT libdebug0~3(c)) AND 
 (NOT dokuwiki~3(c)) AND 
 (NOT libwxbase2.6-dbg~3(c)) AND 
 (NOT fail2ban~2(c)) AND 
 (NOT linux-image-2.6.26-bpo.1-openvz-amd64~1(c)) AND 
 (cplay~1(c) IMPLIES python(c)) AND 
 (NOT knode~2(c)) AND 
 (jbibtex-base~1(c) IMPLIES tetex-base(c) AND texlive-base-bin(c)) AND 
 (NOT gnuchess~2(c)) AND 
 (NOT knoda~2(c)) AND 
 (NOT libmotif-dev~2(c)) AND 
 (NOT clisp-dev~3(c)) AND 
 (NOT vtun~2(c)) AND 
 (NOT liblockdev1-dev~1(c)) AND 
 (NOT vsag~1(c)) AND 
 (NOT audacity~2(c)) AND 
 (NOT libperlspeak-perl~1(c)) AND 
 (NOT xmltv-util~2(c)) AND 
 (NOT libgtksourceview1.0-0~4(c)) AND 
 (NOT libpacketdump3-dev~1(c)) AND 
 (NOT libnet-ipv6addr-perl~1(c)) AND 
 (NOT robot-player~1(c)) AND 
 (NOT qconf~1(c)) AND 
 (NOT libglobus-mp2~1(c)) AND 
 (NOT libvncserver0~1(c)) AND 
 (NOT ifenslave-2.6~1(c)) AND 
 (freeradius-dialupadmin~3(c) IMPLIES libapache2-mod-php5(c) AND (lighttpd~4(c) OR cherokee~4(c) OR lighttpd~5(c) OR apache-ssl~6(c) OR apache2-mpm-prefork~6(c) OR lighttpd~4(c) OR cherokee~4(c) OR lighttpd~5(c) OR apache-ssl~6(c) OR apache2-mpm-prefork~6(c) OR fnord~2(c) OR webfs~1(c) OR mini-httpd~1(c) OR aolserver4-daemon~1(c) OR ebhttpd~1(c) OR apache2-mpm-prefork(c))) AND 
 (NOT createfp~1(c)) AND 
 (NOT min12xxw~1(c)) AND 
 (NOT libnbtk-1.2-0-dbg~1(c)) AND 
 (NOT xtron~2(c)) AND 
 (NOT libxml-feed-perl~3(c)) AND 
 (NOT python-mako~5(c)) AND 
 (NOT xflip~2(c)) AND 
 (gnome-accessibility-themes~2(c) IMPLIES gtk2-engines(c)) AND 
 (NOT libtabe-dev~1(c)) AND 
 (NOT qvwm~1(c)) AND 
 (NOT fort77~2(c)) AND 
 (NOT parrot~2(c)) AND 
 (NOT libzeroc-ice33-dev~1(c)) AND 
 (NOT id3ren~1(c)) AND 
 (NOT python-minimal~2(c)) AND 
 (NOT ttf-arabeyes~1(c)) AND 
 (NOT linux-modules-xen-amd64~1(c)) AND 
 (NOT libbrlapi1-dev~1(c)) AND 
 (libhdf4g-dev~4(c) IMPLIES libhdf4-dev(c)) AND 
 (NOT hpoj~3(c)) AND 
 (libinline-ruby1.8~1(c) IMPLIES ruby1.8(c) AND ruby1.8-dev(c)) AND 
 (NOT liba52-0.7.4~2(c)) AND 
 (lookup-el~2(c) IMPLIES (xemacs21-gnome-mule-canna-wnn(c) OR xemacs21-mule-canna-wnn(c) OR emacs(c))) AND 
 (NOT dsbltesters~2(c)) AND 
 (NOT libtext-ocaml~1(c)) AND 
 (NOT dzen2~1(c)) AND 
 (libparallel-forkmanager-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT evince-gtk~4(c)) AND 
 (NOT libconfig-any-perl~1(c)) AND 
 (NOT cryptcat~2(c)) AND 
 (NOT smc-music~1(c)) AND 
 (NOT gnomebaker~2(c)) AND 
 (NOT console-setup-mini~5(c)) AND 
 (NOT simutrans~1(c)) AND 
 (NOT python-twisted-words~7(c)) AND 
 (NOT exim4-base~8(c)) AND 
 (NOT libmagic1~1(c)) AND 
 (NOT ggz-gtk-games-data~2(c)) AND 
 (NOT libboolstuff-0.1-0~1(c)) AND 
 (NOT jackd-firewire~1(c)) AND 
 (NOT libmultisync-plugin-irmc-bluetooth~2(c)) AND 
 (iceweasel-l10n-pt-pt~1(c) IMPLIES (iceweasel~16(c) OR iceweasel~5(c)) AND iceweasel~5(c)) AND 
 (NOT cdargs~2(c)) AND 
 (NOT libgnomeuimm-2.6-1c2a~3(c)) AND 
 (NOT libhildonthumbnail-dev~1(c)) AND 
 (NOT libast2~3(c)) AND 
 (NOT libspiff4~2(c)) AND 
 (NOT bibcursed~1(c)) AND 
 (NOT achims-guestbook~1(c)) AND 
 (NOT libpod-simple-perl~1(c)) AND 
 (python-pyscript~1(c) IMPLIES python~22(c) AND python-support~7(c)) AND 
 (NOT kedit~2(c)) AND 
 (NOT ipkungfu~2(c)) AND 
 (NOT gstreamer0.10-fluendo-mp3~1(c)) AND 
 (NOT cl-clg~1(c)) AND 
 (libtext-glob-perl~1(c) IMPLIES perl~69(c)) AND 
 (NOT libodbc-ruby1.8~2(c)) AND 
 (NOT umview-mod-umfuseext2~1(c)) AND 
 (NOT libdcmtk1-dev~2(c)) AND 
 (NOT ltp-disc-test~2(c)) AND 
 (NOT clamtk~1(c)) AND 
 (NOT liblua5.1-cgi-dev~1(c)) AND 
 (NOT python-couchdb~1(c)) AND 
 (NOT libfbembed2~3(c)) AND 
 (NOT libpoppler-qt4-3~2(c)) AND 
 (NOT lighttpd~4(c)) AND 
 (NOT musepack-tools~2(c)) AND 
 (NOT ethereal-common~3(c)) AND 
 (NOT libapache-modxslt~1(c)) AND 
 (NOT libgd-svg-perl~1(c)) AND 
 (NOT libdb4.6++~1(c)) AND 
 (NOT pidgin-awayonlock~1(c)) AND 
 (NOT libxkbfile1-dbg~1(c)) AND 
 (NOT python-setuptools~10(c)) AND 
 (NOT libvte-ruby1.8~2(c)) AND 
 (NOT dares-qt~1(c)) AND 
 (NOT libclutter-1.0-dev~3(c)) AND 
 (NOT tedia2sql~1(c)) AND 
 (NOT apt-file~1(c)) AND 
 (NOT libcsiro0~2(c)) AND 
 (NOT seahorse~8(c)) AND 
 (NOT liblockdev1-dbg~1(c)) AND 
 (NOT libghc6-edison-core-dev~1(c)) AND 
 (NOT ov511-source~1(c)) AND 
 (NOT tttview~1(c)) AND 
 (NOT dns-flood-detector~2(c)) AND 
 (NOT python-lockfile~1(c)) AND 
 (verilog-mode~1(c) IMPLIES (emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs23~1(c) OR xemacs21-mule-canna-wnn~2(c) OR emacs23-lucid~1(c) OR emacs~1(c))) AND 
 (NOT openoffice.org-pdfimport~1(c)) AND 
 (NOT zope3-sandbox~1(c)) AND 
 (NOT etherpuppet~1(c)) AND 
 (libm17n-0-dbg~1(c) IMPLIES libm17n-0~1(c)) AND 
 (NOT dvdauthor~1(c)) AND 
 (NOT libtelepathy-glib-dev~4(c)) AND 
 (NOT latex-cjk-xcjk~1(c)) AND 
 (NOT heartbeat~3(c)) AND 
 (NOT clustalx~1(c)) AND 
 (NOT cpudyn~1(c)) AND 
 (NOT gmanedit~2(c)) AND 
 (NOT libboost-date-time1.40.0~3(c)) AND 
 (NOT libsmbclient~6(c)) AND 
 (NOT clustalw~1(c)) AND 
 (NOT libcomedi-dev~2(c)) AND 
 (NOT devhelp-common~3(c)) AND 
 (NOT gmpc-dev~1(c)) AND 
 (NOT libmmap-ruby~2(c)) AND 
 (NOT gadmin-openvpn-client~2(c)) AND 
 (NOT batmand-gateway-modules-2.6-amd64~1(c)) AND 
 (NOT scim-prime~2(c)) AND 
 (NOT libpoppler-glib-ruby~1(c)) AND 
 (NOT libcurl4-gnutls-dev~5(c)) AND 
 (NOT libbobcat1-dev~1(c)) AND 
 (NOT libspring-beans-2.5-java~1(c)) AND 
 (NOT poppassd~1(c)) AND 
 (NOT ratpoison~3(c)) AND 
 (NOT xmms2-plugin-normalize~1(c)) AND 
 (NOT libzeroc-ice33-dbg~1(c)) AND 
 (NOT visitors~2(c)) AND 
 (NOT trueprint~1(c)) AND 
 (NOT python-pykcs11~1(c)) AND 
 (NOT libhk-classes-sqlite3~1(c)) AND 
 (NOT nexuiz-server~3(c)) AND 
 (NOT libcal3d11-dev~1(c)) AND 
 (libclass-contract-perl~2(c) IMPLIES perl~69(c)) AND 
 (NOT python-pycryptopp~1(c)) AND 
 (NOT libnet-bittorrent-libbt-tracker-perl~1(c)) AND 
 (NOT libranlip-dev~1(c)) AND 
 (NOT libxfontp1-dbg~1(c)) AND 
 (NOT libtext-charwidth-perl~1(c)) AND 
 (NOT cl-cil~1(c)) AND 
 (NOT ftnchek~2(c)) AND 
 (NOT libwxbase2.8-dev~1(c)) AND 
 (NOT exiftags~1(c)) AND 
 (NOT libremctl1~1(c)) AND 
 (NOT samba-ldb-tools~1(c)) AND 
 (NOT fbgrab~2(c)) AND 
 (NOT globus-scheduler-event-generator-progs~1(c)) AND 
 (NOT ccontrol~2(c)) AND 
 (NOT qdacco~1(c)) AND 
 (NOT g15macro~1(c)) AND 
 (NOT libcupsimage2-dev~1(c)) AND 
 (NOT libkexif1-dev~1(c)) AND 
 (NOT liborange0~2(c)) AND 
 (liberror-perl~3(c) IMPLIES perl~69(c)) AND 
 (openoffice.org-common~21(c) IMPLIES (dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c) OR dictionaries-common~20(c) OR dictionaries-common~20(c) OR dictionaries-common~15(c)) AND openoffice.org-style-andromeda(c)) AND 
 (NOT libunicode-string-perl~2(c)) AND 
 (NOT xmms2-plugin-rss~1(c)) AND 
 (NOT ebook-tools-dbg~1(c)) AND 
 (NOT cyrus-sasl2-heimdal-dbg~1(c)) AND 
 (NOT gstreamer0.10-plugins-ugly~3(c)) AND 
 (NOT libedata-book1.2-2~4(c)) AND 
 (NOT libterm-readline-gnu-perl~3(c)) AND 
 (NOT vrms~1(c)) AND 
 (NOT xfonts-intl-japanese-big~1(c)) AND 
 (NOT libnfsidmap2~1(c)) AND 
 (NOT libedac1-dbg~1(c)) AND 
 (NOT wdm~3(c)) AND 
 (paw-common~3(c) IMPLIES cernlib-base(c) AND netbase~24(c)) AND 
 (jasmin-sable~1(c) IMPLIES (gcj-4.4-jre-headless~3(c) OR gcj-4.4-jre-headless~3(c))) AND 
 (NOT xtris~2(c)) AND 
 (NOT aria2~2(c)) AND 
 (NOT libfsotransport-dev~2(c)) AND 
 (NOT shoes~1(c)) AND 
 (NOT libheimntlm0-heimdal~1(c)) AND 
 (NOT uim-pinyin~2(c)) AND 
 (NOT openssl~11(c)) AND 
 (NOT xul-ext-firecookie~1(c)) AND 
 (NOT libx11-6~4(c)) AND 
 (NOT libcdio-paranoia-dev~1(c))
UNDER p
PUBLISH c
IS POSSIBLE?
")

(m "RENAME LAST config")

(m "EXPLORE WWW(c) AND Configuration(c) AND p:valid(c) AND config(c)")

(pause-for-user)

(m "EXPLORE Mail(c) AND p:valid(c) AND config(c)")

(pause-for-user)

(m "EXPLORE Tomcat(c) AND p:valid(c) AND config(c)")

