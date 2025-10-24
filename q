[4mNEOFETCH[24m(1)                                                    User Commands                                                   [4mNEOFETCH[24m(1)

[1mNAME[0m
       Neofetch - A fast, highly customizable system info script

[1mSYNOPSIS[0m
       [1mneofetch [4m[22mfunc_name[24m [4m--option[24m [4m"value"[24m [4m--option[24m [4m"value"[0m

[1mDESCRIPTION[0m
       Neofetch  is  a CLI system information tool written in BASH. Neofetch displays information about your system next to an image, your
       OS logo, or any ASCII file of your choice.

       NOTE: Every launch flag has a config option.

[1mOPTIONS[0m
   [1mINFO:[0m
       func_name
              Specify a function name (second part of info() from config) to quickly display only that function's information.

              Example: neofetch uptime [1m--uptime_shorthand [22mtiny

              Example: neofetch uptime disk wm memory

              This can be used in bars and scripts like so:

              memory="$(neofetch memory)"; memory="${memory##*: }"

              For multiple outputs at once (each line of info in an array):

              IFS=$'\n' read [1m-d [22m"" [1m-ra [22minfo < <(neofetch memory uptime wm)

              info=("${info[@]##*: }")

       [1m--disable [22minfoname
              Allows you to disable an info line from appearing in the output. 'infoname' is the function  name  from  the  'print_info()'
              function inside the config file.  For example: 'info "Memory" memory' would be '--disable memory'

              NOTE: You can supply multiple args. eg. 'neofetch [1m--disable [22mcpu gpu'

       [1m--title_fqdn [22mon/off
              Hide/Show Fully Qualified Domain Name in title.

       [1m--package_managers [22mon/off
              Hide/Show Package Manager names . (on, tiny, off)

       [1m--os_arch [22mon/off
              Hide/Show OS architecture.

       [1m--speed_type [22mtype
              Change  the  type  of  cpu  speed to display.  Possible values: current, min, max, bios, scaling_current, scaling_min, scal‐
              ing_max

              NOTE: This only supports Linux with cpufreq.

       [1m--speed_shorthand [22mon/off
              Whether or not to show decimals in CPU speed.

       NOTE: This flag is not supported in systems with CPU speed less than
              1 GHz.

       [1m--cpu_brand [22mon/off
              Enable/Disable CPU brand in output.

       [1m--cpu_cores [22mtype
              Whether or not to display the number of CPU cores Possible values: logical, physical, off

              NOTE: 'physical' doesn't work on BSD.

       [1m--cpu_speed [22mon/off
              Hide/Show cpu speed.

       [1m--cpu_temp [22mC/F/off
              Hide/Show cpu temperature.

              NOTE: This only works on Linux and BSD.

       NOTE: For FreeBSD and NetBSD-based systems, you need to enable
              coretemp kernel module. This only supports newer Intel processors.

       [1m--distro_shorthand [22mon/off
              Shorten the output of distro (on, tiny, off)

              NOTE: This option won't work in Windows (Cygwin)

       [1m--kernel_shorthand [22mon/off
              Shorten the output of kernel

              NOTE: This option won't work in BSDs (except PacBSD and PC-BSD)

       [1m--uptime_shorthand [22mon/off
              Shorten the output of uptime (on, tiny, off)

       [1m--refresh_rate [22mon/off
              Whether to display the refresh rate of each monitor Unsupported on Windows

       [1m--gpu_brand [22mon/off
              Enable/Disable GPU brand in output. (AMD/NVIDIA/Intel)

       [1m--gpu_type [22mtype
              Which GPU to display. (all, dedicated, integrated)

              NOTE: This only supports Linux.

       [1m--de_version [22mon/off
              Show/Hide Desktop Environment version

       [1m--gtk_shorthand [22mon/off
              Shorten output of gtk theme/icons

       [1m--gtk2 [22mon/off
              Enable/Disable gtk2 theme/font/icons output

       [1m--gtk3 [22mon/off
              Enable/Disable gtk3 theme/font/icons output

       [1m--shell_path [22mon/off
              Enable/Disable showing $SHELL path

       [1m--shell_version [22mon/off
              Enable/Disable showing $SHELL version

       [1m--disk_show [22mvalue
              Which disks to display.  Possible values: '/', '/dev/sdXX', '/path/to/mount point'

              NOTE: Multiple values can be given. ([1m--disk_show [22m'/' '/dev/sdc1')

       [1m--disk_subtitle [22mtype
              What information to append to the Disk subtitle.  Takes: name, mount, dir, none

              'name' shows the disk's name (sda1, sda2, etc)

              'mount' shows the disk's mount point (/, [4m/mnt/Local[24m Disk, etc)

              'dir' shows the basename of the disks's path. (/, Local Disk, etc)

              'none' shows only 'Disk' or the configured title.

       [1m--disk_percent [22mon/off
              Hide/Show disk percent.

       [1m--ip_host [22murl
              URL to query for public IP

       [1m--ip_timeout [22mint
              Public IP timeout (in seconds).

       [1m--song_format [22mformat
              Print the song data in a specific format (see config file).

       [1m--song_shorthand [22mon/off
              Print the Artist/Album/Title on separate lines.

       [1m--memory_percent [22mon/off
              Display memory percentage.

       [1m--music_player [22mplayer-name
              Manually specify a player to use.  Available values are listed in the config file

   [1mTEXT FORMATTING:[0m
       [1m--colors [22mx x x x x x
              Changes the text colors in this order: title, @, underline, subtitle, colon, info

       [1m--underline [22mon/off
              Enable/Disable the underline.

       [1m--underline_char [22mchar
              Character to use when underlining title

       [1m--bold [22mon/off
              Enable/Disable bold text

       [1m--separator [22mstring
              Changes the default ':' separator to the specified string.

   [1mCOLOR BLOCKS:[0m
       [1m--color_blocks [22mon/off
              Enable/Disable the color blocks

       [1m--col_offset [22mauto/num
              Left-padding of color blocks

       [1m--block_width [22mnum
              Width of color blocks in spaces

       [1m--block_height [22mnum
              Height of color blocks in lines

       [1m--block_range [22mnum num
              Range of colors to print as blocks

   [1mBARS:[0m
       [1m--bar_char [22m'elapsed char' 'total char'
              Characters to use when drawing bars.

       [1m--bar_border [22mon/off
              Whether or not to surround the bar with '[]'

       [1m--bar_length [22mnum
              Length in spaces to make the bars.

       [1m--bar_colors [22mnum num
              Colors to make the bar.  Set in this order: elapsed, total

       [1m--cpu_display [22mmode
              Bar mode.  Possible values: bar, infobar, barinfo, off

       [1m--memory_display [22mmode
              Bar mode.  Possible values: bar, infobar, barinfo, off

       [1m--battery_display [22mmode
              Bar mode.  Possible values: bar, infobar, barinfo, off

       [1m--disk_display [22mmode
              Bar mode.  Possible values: bar, infobar, barinfo, off

   [1mIMAGE BACKEND:[0m
       [1m--backend [22mbackend
              Which image backend to use.  Possible values: 'ascii', 'caca', 'chafa', 'jp2a', 'iterm2', 'off',  'sixel',  'tycat',  'w3m',
              'kitty'

       [1m--source [22msource
              Which  image  or  ascii  file  to  use.   Possible  values:  'auto', 'ascii', 'wallpaper', '/path/to/img', '/path/to/ascii',
              '/path/to/dir/', 'command output' [ascii]

       [1m--ascii [22msource
              Shortcut to use 'ascii' backend.

              NEW: neofetch [1m--ascii [22m"$(fortune | cowsay [1m-W [22m30)"

       [1m--caca [22msource
              Shortcut to use 'caca' backend.

       [1m--chafa [22msource
              Shortcut to use 'chafa' backend.

       [1m--iterm2 [22msource
              Shortcut to use 'iterm2' backend.

       [1m--jp2a [22msource
              Shortcut to use 'jp2a' backend.

       [1m--kitty [22msource
              Shortcut to use 'kitty' backend.

       [1m--pixterm [22msource
              Shortcut to use 'pixterm' backend.

       [1m--sixel [22msource
              Shortcut to use 'sixel' backend.

       [1m--termpix [22msource
              Shortcut to use 'termpix' backend.

       [1m--tycat [22msource
              Shortcut to use 'tycat' backend.

       [1m--w3m [22msource
              Shortcut to use 'w3m' backend.

       [1m--off  [22mShortcut to use 'off' backend (Disable ascii art).

              NOTE: 'source; can be any of the following: 'auto', 'ascii', 'wallpaper', '/path/to/img', '/path/to/ascii', '/path/to/dir/'

   [1mASCII:[0m
       [1m--ascii_colors [22mx x x x x x
              Colors to print the ascii art

       [1m--ascii_distro [22mdistro
              Which Distro's ascii art to print

       NOTE: AIX, Alpine, AlterLinux, Anarchy, Android, Antergos, antiX,
              "AOSC OS", "AOSC OS/Retro", Apricity, ArcoLinux, ArchBox, ARCHlabs, ArchStrike, XFerience,  ArchMerge,  Arch,  Artix,  Arya,
              Bedrock,  Bitrig,  BlackArch, BLAG, BlankOn, BlueLight, bonsai, BSD, BunsenLabs, Calculate, Carbs, CentOS, Chakra, ChaletOS,
              Chapeau, Chrom, Cleanjaro, ClearOS, Clear_Linux, Clover, Condres, Container_Linux, CRUX, Cucumber, Debian,  Deepin,  DesaOS,
              Devuan,  DracOS, DragonFly, Drauger, Elementary, EndeavourOS, Endless, EuroLinux, Exherbo, Fedora, Feren, FreeBSD, FreeMiNT,
              Frugalware, Funtoo, GalliumOS, Gentoo, Pentoo, gNewSense, GNOME, GNU, GoboLinux, Grombyang, Guix, Haiku, Huayra,  Hyperbola,
              janus, Kali, KaOS, KDE_neon, Kibojoe, Kogaion, Korora, KSLinux, Kubuntu, LEDE, LFS, Linux_Lite, LMDE, Lubuntu, Lunar, macos,
              Mageia,  MagpieOS,  Mandriva,  Manjaro,  Maui,  Mer,  Minix, LinuxMint, MX_Linux, Namib, Neptune, NetBSD, Netrunner, Nitrux,
              NixOS, Nurunner, NuTyX, OBRevenge, OpenBSD, OpenIndiana, openmamba, OpenMandriva, OpenStage, OpenWrt, osmc, Oracle,  OS  El‐
              brus, PacBSD, Parabola, Pardus, Parrot, Parsix, TrueOS, PCLinuxOS, Peppermint, popos, Porteus, PostMarketOS, Proxmox, Puppy,
              PureOS,  Qubes,  Radix,  Raspbian,  Reborn_OS,  Redstar, Redcore, Redhat, Refracted_Devuan, Regata, Rosa, sabotage, Sabayon,
              Sailfish, SalentOS, Scientific, Septor, SereneLinux, SharkLinux, Siduction, Slackware, SliTaz, SmartOS, Solus,  Source_Mage,
              Sparky,  Star,  SteamOS,  SunOS,  openSUSE_Leap,  openSUSE_Tumbleweed,  openSUSE,  SwagArch, Tails, Trisquel, Ubuntu-Budgie,
              Ubuntu-GNOME, Ubuntu-MATE, Ubuntu-Studio, Ubuntu, Venom, Void, Obarun, windows10, Windows7, Xubuntu, Zorin,  and  IRIX  have
              ascii logos

              NOTE: Arch, Ubuntu, Redhat, and Dragonfly have 'old' logo variants.

              NOTE: Use '{distro name}_old' to use the old logos.

              NOTE: Ubuntu has flavor variants.

       NOTE: Change this to Lubuntu, Kubuntu, Xubuntu, Ubuntu-GNOME,
              Ubuntu-Studio, Ubuntu-Mate  or Ubuntu-Budgie to use the flavors.

       NOTE: Arcolinux, Dragonfly, Fedora, Alpine, Arch, Ubuntu,
              CRUX,  Debian, Gentoo, FreeBSD, Mac, NixOS, OpenBSD, android, Antrix, CentOS, Cleanjaro, ElementaryOS, GUIX, Hyperbola, Man‐
              jaro, MXLinux, NetBSD, Parabola, POP_OS, PureOS, Slackware, SunOS, LinuxLite, OpenSUSE,  Raspbian,  postmarketOS,  and  Void
              have a smaller logo variant.

              NOTE: Use '{distro name}_small' to use the small variants.

       [1m--ascii_bold [22mon/off
              Whether or not to bold the ascii logo.

       [1m-L[22m, [1m--logo[0m
              Hide the info text and only show the ascii logo.

   [1mIMAGE:[0m
       [1m--loop [22mRedraw the image constantly until Ctrl+C is used. This fixes issues in some terminals emulators when using image mode.

       [1m--size [22m00px | [1m--size [22m00%
              How to size the image.  Possible values: auto, 00px, 00%, none

       [1m--crop_mode [22mmode
              Which crop mode to use Takes the values: normal, fit, fill

       [1m--crop_offset [22mvalue
              Change the crop offset for normal mode.  Possible values: northwest, north, northeast, west, center, east, southwest, south,
              southeast

       [1m--xoffset [22mpx
              How close the image will be to the left edge of the window. This only works with w3m.

       [1m--yoffset [22mpx
              How close the image will be to the top edge of the window. This only works with w3m.

       [1m--bg_color [22mcolor
              Background color to display behind transparent image.  This only works with w3m.

       [1m--gap [22mnum
              Gap between image and text.

       NOTE: [1m--gap [22mcan take a negative value which will move the text
              closer to the left side.

       [1m--clean[0m
              Delete cached files and thumbnails.

   [1mOTHER:[0m
       [1m--config [4m[22m/path/to/config[0m
              Specify a path to a custom config file

       [1m--config [22mnone
              Launch the script without a config file

       [1m--no_config[0m
              Don't create the user config file.

       [1m--print_config[0m
              Print the default config file to stdout.

       [1m--stdout[0m
              Turn off all colors and disables any ASCII/image backend.

       [1m--help [22mPrint this text and exit

       [1m--version[0m
              Show neofetch version

       [1m-v     [22mDisplay error messages.

       [1m-vv    [22mDisplay a verbose log for error reporting.

   [1mDEVELOPER:[0m
       [1m--gen-man[0m
              Generate a manpage for Neofetch in your PWD. (Requires GNU help2man)

[1mREPORTING BUGS[0m
       Report bugs to https://github.com/dylanaraps/neofetch/issues

Neofetch 7.1.0                                                   Aug 2020                                                      [4mNEOFETCH[24m(1)
