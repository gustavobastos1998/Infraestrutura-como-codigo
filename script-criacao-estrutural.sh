login as: root
root@192.168.1.22's password:
Welcome to Ubuntu 22.04.2 LTS (GNU/Linux 5.15.0-69-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of sex 07 abr 2023 00:33:10 UTC

  System load:             0.0
  Usage of /:              53.5% of 8.02GB
  Memory usage:            32%
  Swap usage:              0%
  Processes:               113
  Users logged in:         1
  IPv4 address for enp0s3: 192.168.1.22
  IPv6 address for enp0s3: 2804:d49:4dee:d700:a00:27ff:fe0e:8a31

 * Strictly confined Kubernetes makes edge and IoT secure. Learn how MicroK8s
   just raised the bar for easy, resilient and secure K8s cluster deployment.

   https://ubuntu.com/engage/secure-kubernetes-at-the-edge

 * Introducing Expanded Security Maintenance for Applications.
   Receive updates to over 25,000 software packages with your
   Ubuntu Pro subscription. Free for personal use.

     https://ubuntu.com/pro

Manutenção de Segurança Expandida para Applications não está ativa.

27 as atualizações podem ser aplicadas imediatamente.
Para ver as actualizações adicionais corre o comando: apt list --upgradable

Ativar ESM Apps para poder receber possiveis futuras atualizações de segurança
Consulte https://ubuntu.com/esm ou execute: sudo pro status


Last login: Thu Apr  6 20:30:28 2023 from 192.168.1.12
root@servidor1:~#
root@servidor1:~# ls
snap
root@servidor1:~# ls /
adm   dev   lib    libx32      mnt   root  scripts  swap.img  usr
bin   etc   lib32  lost+found  opt   run   snap     sys       var
boot  home  lib64  media       proc  sbin  srv      tmp       ven
root@servidor1:~# cd /
root@servidor1:/#
root@servidor1:/# ls
adm   dev   lib    libx32      mnt   root  scripts  swap.img  usr
bin   etc   lib32  lost+found  opt   run   snap     sys       var
boot  home  lib64  media       proc  sbin  srv      tmp       ven
root@servidor1:/# rmdir --help
Usage: rmdir [OPTION]... DIRECTORY...
Remove the DIRECTORY(ies), if they are empty.

      --ignore-fail-on-non-empty
                  ignore each failure that is solely because a directory
                    is non-empty
  -p, --parents   remove DIRECTORY and its ancestors; e.g., 'rmdir -p a/b/c' i
                    similar to 'rmdir a/b/c a/b a'
  -v, --verbose   output a diagnostic for every directory processed
      --help     display this help and exit
      --version  output version information and exit

GNU coreutils online help: <https://www.gnu.org/software/coreutils/>
Report any translation bugs to <https://translationproject.org/team/>
Full documentation <https://www.gnu.org/software/coreutils/rmdir>
or available locally via: info '(coreutils) rmdir invocation'
root@servidor1:/# rmdir -p ./scripts/
rmdir: failed to remove './scripts/': Directory not empty
root@servidor1:/# cd scripts/
root@servidor1:/scripts# ls
criar_user.sh  date.sh  excluir_users.sh
root@servidor1:/scripts# cd ..
root@servidor1:/# rmdir --ignore-fail-on-non-empty -p /scripts/
root@servidor1:/# ls
adm   dev   lib    libx32      mnt   root  scripts  swap.img  usr
bin   etc   lib32  lost+found  opt   run   snap     sys       var
boot  home  lib64  media       proc  sbin  srv      tmp       ven
root@servidor1:/# cd scripts/
root@servidor1:/scripts# ls
criar_user.sh  date.sh  excluir_users.sh
root@servidor1:/scripts# rmdir --ignore-fail-on-non-empty -p /scripts/ -v
rmdir: removing directory, '/scripts/'
root@servidor1:/scripts# cd ..
root@servidor1:/# ls
adm   dev   lib    libx32      mnt   root  scripts  swap.img  usr
bin   etc   lib32  lost+found  opt   run   snap     sys       var
boot  home  lib64  media       proc  sbin  srv      tmp       ven
root@servidor1:/# rmdir --ignore-fail-on-non-empty -p /scripts/ -v
rmdir: removing directory, '/scripts/'
root@servidor1:/# ls
adm   dev   lib    libx32      mnt   root  scripts  swap.img  usr
bin   etc   lib32  lost+found  opt   run   snap     sys       var
boot  home  lib64  media       proc  sbin  srv      tmp       ven
root@servidor1:/# rmdir
rmdir: missing operand
Try 'rmdir --help' for more information.
root@servidor1:/# rmdir
rmdir: missing operand
Try 'rmdir --help' for more information.
root@servidor1:/# rmdir --help
Usage: rmdir [OPTION]... DIRECTORY...
Remove the DIRECTORY(ies), if they are empty.

      --ignore-fail-on-non-empty
                  ignore each failure that is solely because a directory
                    is non-empty
  -p, --parents   remove DIRECTORY and its ancestors; e.g., 'rmdir -p a/b/c' i
                    similar to 'rmdir a/b/c a/b a'
  -v, --verbose   output a diagnostic for every directory processed
      --help     display this help and exit
      --version  output version information and exit

GNU coreutils online help: <https://www.gnu.org/software/coreutils/>
Report any translation bugs to <https://translationproject.org/team/>
Full documentation <https://www.gnu.org/software/coreutils/rmdir>
or available locally via: info '(coreutils) rmdir invocation'
root@servidor1:/# rmdir --ignore-fail-on-non-empty /scripts/
root@servidor1:/# ls
adm   dev   lib    libx32      mnt   root  scripts  swap.img  usr
bin   etc   lib32  lost+found  opt   run   snap     sys       var
boot  home  lib64  media       proc  sbin  srv      tmp       ven
root@servidor1:/#
root@servidor1:/# rm --help
Usage: rm [OPTION]... [FILE]...
Remove (unlink) the FILE(s).

  -f, --force           ignore nonexistent files and arguments, never prompt
  -i                    prompt before every removal
  -I                    prompt once before removing more than three files, or
                          when removing recursively; less intrusive than -i,
                          while still giving protection against most mistakes
      --interactive[=WHEN]  prompt according to WHEN: never, once (-I), or
                          always (-i); without WHEN, prompt always
      --one-file-system  when removing a hierarchy recursively, skip any
                          directory that is on a file system different from
                          that of the corresponding command line argument
      --no-preserve-root  do not treat '/' specially
      --preserve-root[=all]  do not remove '/' (default);
                              with 'all', reject any command line argument
                              on a separate device from its parent
  -r, -R, --recursive   remove directories and their contents recursively
  -d, --dir             remove empty directories
  -v, --verbose         explain what is being done
      --help     display this help and exit
      --version  output version information and exit

By default, rm does not remove directories.  Use the --recursive (-r or -R)
option to remove each listed directory, too, along with all of its contents.

To remove a file whose name starts with a '-', for example '-foo',
use one of these commands:
  rm -- -foo

  rm ./-foo

Note that if you use rm to remove a file, it might be possible to recover
some of its contents, given sufficient expertise and/or time.  For greater
assurance that the contents are truly unrecoverable, consider using shred.

GNU coreutils online help: <https://www.gnu.org/software/coreutils/>
Report any translation bugs to <https://translationproject.org/team/>
Full documentation <https://www.gnu.org/software/coreutils/rm>
or available locally via: info '(coreutils) rm invocation'
root@servidor1:/#
root@servidor1:/# rm -r /scripts/
root@servidor1:/# ls
adm   dev   lib    libx32      mnt   root  snap      sys  var
bin   etc   lib32  lost+found  opt   run   srv       tmp  ven
boot  home  lib64  media       proc  sbin  swap.img  usr
root@servidor1:/#
root@servidor1:/# git
usage: git [--version] [--help] [-C <path>] [-c <name>=<value>]
           [--exec-path[=<path>]] [--html-path] [--man-path] [--info-path]
           [-p | --paginate | -P | --no-pager] [--no-replace-objects] [--bare]
           [--git-dir=<path>] [--work-tree=<path>] [--namespace=<name>]
           [--super-prefix=<path>] [--config-env=<name>=<envvar>]
           <command> [<args>]

These are common Git commands used in various situations:

start a working area (see also: git help tutorial)
   clone     Clone a repository into a new directory
   init      Create an empty Git repository or reinitialize an existing one

work on the current change (see also: git help everyday)
   add       Add file contents to the index
   mv        Move or rename a file, a directory, or a symlink
   restore   Restore working tree files
   rm        Remove files from the working tree and from the index

examine the history and state (see also: git help revisions)
   bisect    Use binary search to find the commit that introduced a bug
   diff      Show changes between commits, commit and working tree, etc
   grep      Print lines matching a pattern
   log       Show commit logs
   show      Show various types of objects
   status    Show the working tree status

grow, mark and tweak your common history
   branch    List, create, or delete branches
   commit    Record changes to the repository
   merge     Join two or more development histories together
   rebase    Reapply commits on top of another base tip
   reset     Reset current HEAD to the specified state
   switch    Switch branches
   tag       Create, list, delete or verify a tag object signed with GPG

collaborate (see also: git help workflows)
   fetch     Download objects and refs from another repository
   pull      Fetch from and integrate with another repository or a local branc
   push      Update remote refs along with associated objects

'git help -a' and 'git help -g' list available subcommands and some
concept guides. See 'git help <command>' or 'git help <concept>'
to read about a specific subcommand or concept.
See 'git help git' for an overview of the system.
root@servidor1:/# python
Command 'python' not found, did you mean:
  command 'python3' from deb python3
  command 'python' from deb python-is-python3
root@servidor1:/# apt install python3
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
python3 is already the newest version (3.10.6-1~22.04).
python3 está definido para ser instalado manualmente.
0 pacotes actualizados, 0 pacotes novos instalados, 0 a remover e 28 não actuazados.
root@servidor1:/# python3
Python 3.10.6 (main, Mar 10 2023, 10:55:28) [GCC 11.3.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> exit
Use exit() or Ctrl-D (i.e. EOF) to exit
>>>
root@servidor1:/#
root@servidor1:/# python3 --help
usage: python3 [option] ... [-c cmd | -m mod | file | -] [arg] ...
Options and arguments (and corresponding environment variables):
-b     : issue warnings about str(bytes_instance), str(bytearray_instance)
         and comparing bytes/bytearray with str. (-bb: issue errors)
-B     : don't write .pyc files on import; also PYTHONDONTWRITEBYTECODE=x
-c cmd : program passed in as string (terminates option list)
-d     : turn on parser debugging output (for experts only, only works on
         debug builds); also PYTHONDEBUG=x
-E     : ignore PYTHON* environment variables (such as PYTHONPATH)
-h     : print this help message and exit (also -? or --help)
-i     : inspect interactively after running script; forces a prompt even
         if stdin does not appear to be a terminal; also PYTHONINSPECT=x
-I     : isolate Python from the user's environment (implies -E and -s)
-m mod : run library module as a script (terminates option list)
-O     : remove assert and __debug__-dependent statements; add .opt-1 before
         .pyc extension; also PYTHONOPTIMIZE=x
-OO    : do -O changes and also discard docstrings; add .opt-2 before
         .pyc extension
-q     : don't print version and copyright messages on interactive startup
-s     : don't add user site directory to sys.path; also PYTHONNOUSERSITE
-S     : don't imply 'import site' on initialization
-u     : force the stdout and stderr streams to be unbuffered;
         this option has no effect on stdin; also PYTHONUNBUFFERED=x
-v     : verbose (trace import statements); also PYTHONVERBOSE=x
         can be supplied multiple times to increase verbosity
-V     : print the Python version number and exit (also --version)
         when given twice, print more information about the build
-W arg : warning control; arg is action:message:category:module:lineno
         also PYTHONWARNINGS=arg
-x     : skip first line of source, allowing use of non-Unix forms of #!cmd
-X opt : set implementation-specific option. The following options are availab:
         -X faulthandler: enable faulthandler
         -X showrefcount: output the total reference count and number of used
             memory blocks when the program finishes or after each statement ithe
             interactive interpreter. This only works on debug builds
         -X tracemalloc: start tracing Python memory allocations using the
             tracemalloc module. By default, only the most recent frame is stod in a
             traceback of a trace. Use -X tracemalloc=NFRAME to start tracing th a
             traceback limit of NFRAME frames
         -X importtime: show how long each import takes. It shows module name,
             cumulative time (including nested imports) and self time (excludi
             nested imports). Note that its output may be broken in multi-threed
             application. Typical usage is python3 -X importtime -c 'import ascio'
         -X dev: enable CPython's "development mode", introducing additional rtime
             checks which are too expensive to be enabled by default. Effect othe
             developer mode:
                * Add default warning filter, as -W default
                * Install debug hooks on memory allocators: see the PyMem_SetuebugHooks()
                  C function
                * Enable the faulthandler module to dump the Python traceback  a crash
                * Enable asyncio debug mode
                * Set the dev_mode attribute of sys.flags to True
                * io.IOBase destructor logs close() exceptions
         -X utf8: enable UTF-8 mode for operating system interfaces, overridinthe default
             locale-aware mode. -X utf8=0 explicitly disables UTF-8 mode (evenhen it would
             otherwise activate automatically)
         -X pycache_prefix=PATH: enable writing .pyc files to a parallel tree oted at the
             given directory instead of to the code tree
         -X warn_default_encoding: enable opt-in EncodingWarning for 'encodingone'
--check-hash-based-pycs always|default|never:
    control how Python invalidates hash-based .pyc files
file   : program read from script file
-      : program read from stdin (default; interactive mode if a tty)
arg ...: arguments passed to program in sys.argv[1:]

Other environment variables:
PYTHONSTARTUP: file executed on interactive startup (no default)
PYTHONPATH   : ':'-separated list of directories prefixed to the
               default module search path.  The result is sys.path.
PYTHONHOME   : alternate <prefix> directory (or <prefix>:<exec_prefix>).
               The default module search path uses <prefix>/lib/pythonX.X.
PYTHONPLATLIBDIR : override sys.platlibdir.
PYTHONCASEOK : ignore case in 'import' statements (Windows).
PYTHONUTF8: if set to 1, enable the UTF-8 mode.
PYTHONIOENCODING: Encoding[:errors] used for stdin/stdout/stderr.
PYTHONFAULTHANDLER: dump the Python traceback on fatal errors.
PYTHONHASHSEED: if this variable is set to 'random', a random value is used
   to seed the hashes of str and bytes objects.  It can also be set to an
   integer in the range [0,4294967295] to get hash values with a
   predictable seed.
PYTHONMALLOC: set the Python memory allocators and/or install debug hooks
   on Python memory allocators. Use PYTHONMALLOC=debug to install debug
   hooks.
PYTHONCOERCECLOCALE: if this variable is set to 0, it disables the locale
   coercion behavior. Use PYTHONCOERCECLOCALE=warn to request display of
   locale coercion and locale compatibility warnings on stderr.
PYTHONBREAKPOINT: if this variable is set to 0, it disables the default
   debugger. It can be set to the callable of your debugger of choice.
PYTHONDEVMODE: enable the development mode.
PYTHONPYCACHEPREFIX: root directory for bytecode cache (pyc) files.
PYTHONWARNDEFAULTENCODING: enable opt-in EncodingWarning for 'encoding=None'.
root@servidor1:/#
root@servidor1:/# ls
adm   dev   lib    libx32      mnt   root  snap      sys  var
bin   etc   lib32  lost+found  opt   run   srv       tmp  ven
boot  home  lib64  media       proc  sbin  swap.img  usr
root@servidor1:/# group
Command 'group' not found, did you mean:
  command 'grop' from deb grop (2:0.10-1.2)
  command 'groups' from deb coreutils (8.32-4.1ubuntu1)
Try: apt install <deb name>
root@servidor1:/#
root@servidor1:/# cat /etc/groups
cat: /etc/groups: No such file or directory
root@servidor1:/# cat /etc/group
root:x:0:
daemon:x:1:
bin:x:2:
sys:x:3:
adm:x:4:syslog
tty:x:5:
disk:x:6:
lp:x:7:
mail:x:8:
news:x:9:
uucp:x:10:
man:x:12:
proxy:x:13:
kmem:x:15:
dialout:x:20:
fax:x:21:
voice:x:22:
cdrom:x:24:
floppy:x:25:
tape:x:26:
sudo:x:27:
audio:x:29:
dip:x:30:
www-data:x:33:
backup:x:34:
operator:x:37:
list:x:38:
irc:x:39:
src:x:40:
gnats:x:41:
shadow:x:42:
utmp:x:43:
video:x:44:
sasl:x:45:
plugdev:x:46:
staff:x:50:
games:x:60:
users:x:100:
nogroup:x:65534:
systemd-journal:x:101:
systemd-network:x:102:
systemd-resolve:x:103:
messagebus:x:104:
systemd-timesync:x:105:
input:x:106:
sgx:x:107:
kvm:x:108:
render:x:109:
lxd:x:110:
_ssh:x:111:
crontab:x:112:
syslog:x:113:
uuidd:x:114:
tcpdump:x:115:
tss:x:116:
landscape:x:117:
fwupd-refresh:x:118:
gustavo:x:1000:
guest:x:1001:
convidado1:x:1002:
guest13:x:1006:
guest10:x:1007:
guest11:x:1008:
guest12:x:1009:
GRP_ADM:x:1010:gustavo,guest10
GRP_VEN:x:1011:guest10
root@servidor1:/# cat /etc/passwd
root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/usr/sbin/nologin
man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
news:x:9:9:news:/var/spool/news:/usr/sbin/nologin
uucp:x:10:10:uucp:/var/spool/uucp:/usr/sbin/nologin
proxy:x:13:13:proxy:/bin:/usr/sbin/nologin
www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin
backup:x:34:34:backup:/var/backups:/usr/sbin/nologin
list:x:38:38:Mailing List Manager:/var/list:/usr/sbin/nologin
irc:x:39:39:ircd:/run/ircd:/usr/sbin/nologin
gnats:x:41:41:Gnats Bug-Reporting System (admin):/var/lib/gnats:/usr/sbin/nolon
nobody:x:65534:65534:nobody:/nonexistent:/usr/sbin/nologin
_apt:x:100:65534::/nonexistent:/usr/sbin/nologin
systemd-network:x:101:102:systemd Network Management,,,:/run/systemd:/usr/sbinologin
systemd-resolve:x:102:103:systemd Resolver,,,:/run/systemd:/usr/sbin/nologin
messagebus:x:103:104::/nonexistent:/usr/sbin/nologin
systemd-timesync:x:104:105:systemd Time Synchronization,,,:/run/systemd:/usr/sn/nologin
pollinate:x:105:1::/var/cache/pollinate:/bin/false
sshd:x:106:65534::/run/sshd:/usr/sbin/nologin
syslog:x:107:113::/home/syslog:/usr/sbin/nologin
uuidd:x:108:114::/run/uuidd:/usr/sbin/nologin
tcpdump:x:109:115::/nonexistent:/usr/sbin/nologin
tss:x:110:116:TPM software stack,,,:/var/lib/tpm:/bin/false
landscape:x:111:117::/var/lib/landscape:/usr/sbin/nologin
fwupd-refresh:x:112:118:fwupd-refresh user,,,:/run/systemd:/usr/sbin/nologin
usbmux:x:113:46:usbmux daemon,,,:/var/lib/usbmux:/usr/sbin/nologin
gustavo:x:1000:1000:Gustavo Bastos:/home/gustavo:/bin/bash
lxd:x:999:100::/var/snap/lxd/common/lxd:/bin/false
guest:x:1001:1001:Convidado:/home/guest:/bin/bash
convidado1:x:1002:1002:convidado especial:/home/convidado1:/bin/bash
guest13:x:1006:1006:usuario convidado:/home/guest13:/bin/bash
guest10:x:1007:1007:usuario convidado:/home/guest10:/bin/bash
guest11:x:1008:1008:usuario convidado:/home/guest11:/bin/bash
guest12:x:1009:1009:usuario convidado:/home/guest12:/bin/bash
root@servidor1:/# userdel --help
Usage: userdel [options] LOGIN

Options:
  -f, --force                   force removal of files,
                                even if not owned by user
  -h, --help                    display this help message and exit
  -r, --remove                  remove home directory and mail spool
  -R, --root CHROOT_DIR         directory to chroot into
  -P, --prefix PREFIX_DIR       prefix directory where are located the /etc/* les
      --extrausers              Use the extra users database
  -Z, --selinux-user            remove any SELinux user mapping for the user

root@servidor1:/# userdel -fr guest10 guest11 guest12 guest13 gustavo
Usage: userdel [options] LOGIN

Options:
  -f, --force                   force removal of files,
                                even if not owned by user
  -h, --help                    display this help message and exit
  -r, --remove                  remove home directory and mail spool
  -R, --root CHROOT_DIR         directory to chroot into
  -P, --prefix PREFIX_DIR       prefix directory where are located the /etc/* les
      --extrausers              Use the extra users database
  -Z, --selinux-user            remove any SELinux user mapping for the user

root@servidor1:/# userdel -fr guest10
userdel: guest10 mail spool (/var/mail/guest10) not found
root@servidor1:/# userdel -fr guest11
userdel: guest11 mail spool (/var/mail/guest11) not found
root@servidor1:/# userdel -fr guest12
userdel: guest12 mail spool (/var/mail/guest12) not found
root@servidor1:/# userdel -fr guest13
userdel: guest13 mail spool (/var/mail/guest13) not found
root@servidor1:/# cat /etc/passwd
root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/usr/sbin/nologin
man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
news:x:9:9:news:/var/spool/news:/usr/sbin/nologin
uucp:x:10:10:uucp:/var/spool/uucp:/usr/sbin/nologin
proxy:x:13:13:proxy:/bin:/usr/sbin/nologin
www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin
backup:x:34:34:backup:/var/backups:/usr/sbin/nologin
list:x:38:38:Mailing List Manager:/var/list:/usr/sbin/nologin
irc:x:39:39:ircd:/run/ircd:/usr/sbin/nologin
gnats:x:41:41:Gnats Bug-Reporting System (admin):/var/lib/gnats:/usr/sbin/nolon
nobody:x:65534:65534:nobody:/nonexistent:/usr/sbin/nologin
_apt:x:100:65534::/nonexistent:/usr/sbin/nologin
systemd-network:x:101:102:systemd Network Management,,,:/run/systemd:/usr/sbinologin
systemd-resolve:x:102:103:systemd Resolver,,,:/run/systemd:/usr/sbin/nologin
messagebus:x:103:104::/nonexistent:/usr/sbin/nologin
systemd-timesync:x:104:105:systemd Time Synchronization,,,:/run/systemd:/usr/sn/nologin
pollinate:x:105:1::/var/cache/pollinate:/bin/false
sshd:x:106:65534::/run/sshd:/usr/sbin/nologin
syslog:x:107:113::/home/syslog:/usr/sbin/nologin
uuidd:x:108:114::/run/uuidd:/usr/sbin/nologin
tcpdump:x:109:115::/nonexistent:/usr/sbin/nologin
tss:x:110:116:TPM software stack,,,:/var/lib/tpm:/bin/false
landscape:x:111:117::/var/lib/landscape:/usr/sbin/nologin
fwupd-refresh:x:112:118:fwupd-refresh user,,,:/run/systemd:/usr/sbin/nologin
usbmux:x:113:46:usbmux daemon,,,:/var/lib/usbmux:/usr/sbin/nologin
gustavo:x:1000:1000:Gustavo Bastos:/home/gustavo:/bin/bash
lxd:x:999:100::/var/snap/lxd/common/lxd:/bin/false
guest:x:1001:1001:Convidado:/home/guest:/bin/bash
convidado1:x:1002:1002:convidado especial:/home/convidado1:/bin/bash
root@servidor1:/# userdel -fr guest
userdel: guest mail spool (/var/mail/guest) not found
root@servidor1:/# userdel -fr gustavo
userdel: user gustavo is currently used by process 941
userdel: gustavo mail spool (/var/mail/gustavo) not found
root@servidor1:/# cat /etc/passwd
root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/usr/sbin/nologin
man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
news:x:9:9:news:/var/spool/news:/usr/sbin/nologin
uucp:x:10:10:uucp:/var/spool/uucp:/usr/sbin/nologin
proxy:x:13:13:proxy:/bin:/usr/sbin/nologin
www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin
backup:x:34:34:backup:/var/backups:/usr/sbin/nologin
list:x:38:38:Mailing List Manager:/var/list:/usr/sbin/nologin
irc:x:39:39:ircd:/run/ircd:/usr/sbin/nologin
gnats:x:41:41:Gnats Bug-Reporting System (admin):/var/lib/gnats:/usr/sbin/nolon
nobody:x:65534:65534:nobody:/nonexistent:/usr/sbin/nologin
_apt:x:100:65534::/nonexistent:/usr/sbin/nologin
systemd-network:x:101:102:systemd Network Management,,,:/run/systemd:/usr/sbinologin
systemd-resolve:x:102:103:systemd Resolver,,,:/run/systemd:/usr/sbin/nologin
messagebus:x:103:104::/nonexistent:/usr/sbin/nologin
systemd-timesync:x:104:105:systemd Time Synchronization,,,:/run/systemd:/usr/sn/nologin
pollinate:x:105:1::/var/cache/pollinate:/bin/false
sshd:x:106:65534::/run/sshd:/usr/sbin/nologin
syslog:x:107:113::/home/syslog:/usr/sbin/nologin
uuidd:x:108:114::/run/uuidd:/usr/sbin/nologin
tcpdump:x:109:115::/nonexistent:/usr/sbin/nologin
tss:x:110:116:TPM software stack,,,:/var/lib/tpm:/bin/false
landscape:x:111:117::/var/lib/landscape:/usr/sbin/nologin
fwupd-refresh:x:112:118:fwupd-refresh user,,,:/run/systemd:/usr/sbin/nologin
usbmux:x:113:46:usbmux daemon,,,:/var/lib/usbmux:/usr/sbin/nologin
lxd:x:999:100::/var/snap/lxd/common/lxd:/bin/false
convidado1:x:1002:1002:convidado especial:/home/convidado1:/bin/bash
root@servidor1:/# userdel -fr convidado1
userdel: convidado1 mail spool (/var/mail/convidado1) not found
root@servidor1:/#
root@servidor1:/# ls /home
root@servidor1:/#
root@servidor1:/# cat /etc/group
root:x:0:
daemon:x:1:
bin:x:2:
sys:x:3:
adm:x:4:syslog
tty:x:5:
disk:x:6:
lp:x:7:
mail:x:8:
news:x:9:
uucp:x:10:
man:x:12:
proxy:x:13:
kmem:x:15:
dialout:x:20:
fax:x:21:
voice:x:22:
cdrom:x:24:
floppy:x:25:
tape:x:26:
sudo:x:27:
audio:x:29:
dip:x:30:
www-data:x:33:
backup:x:34:
operator:x:37:
list:x:38:
irc:x:39:
src:x:40:
gnats:x:41:
shadow:x:42:
utmp:x:43:
video:x:44:
sasl:x:45:
plugdev:x:46:
staff:x:50:
games:x:60:
users:x:100:
nogroup:x:65534:
systemd-journal:x:101:
systemd-network:x:102:
systemd-resolve:x:103:
messagebus:x:104:
systemd-timesync:x:105:
input:x:106:
sgx:x:107:
kvm:x:108:
render:x:109:
lxd:x:110:
_ssh:x:111:
crontab:x:112:
syslog:x:113:
uuidd:x:114:
tcpdump:x:115:
tss:x:116:
landscape:x:117:
fwupd-refresh:x:118:
GRP_ADM:x:1010:
GRP_VEN:x:1011:
root@servidor1:/# groupdel --help
Usage: groupdel [options] GROUP

Options:
  -h, --help                    display this help message and exit
  -R, --root CHROOT_DIR         directory to chroot into
  -P, --prefix PREFIX_DIR       prefix directory where are located the /etc/* les
  -f, --force                   delete group even if it is the primary group oa user
      --extrausers              Use the extra users database

root@servidor1:/# groupdel GRP_ADM
root@servidor1:/# groupdel GRP_VEN
root@servidor1:/# cat /etc/group
root:x:0:
daemon:x:1:
bin:x:2:
sys:x:3:
adm:x:4:syslog
tty:x:5:
disk:x:6:
lp:x:7:
mail:x:8:
news:x:9:
uucp:x:10:
man:x:12:
proxy:x:13:
kmem:x:15:
dialout:x:20:
fax:x:21:
voice:x:22:
cdrom:x:24:
floppy:x:25:
tape:x:26:
sudo:x:27:
audio:x:29:
dip:x:30:
www-data:x:33:
backup:x:34:
operator:x:37:
list:x:38:
irc:x:39:
src:x:40:
gnats:x:41:
shadow:x:42:
utmp:x:43:
video:x:44:
sasl:x:45:
plugdev:x:46:
staff:x:50:
games:x:60:
users:x:100:
nogroup:x:65534:
systemd-journal:x:101:
systemd-network:x:102:
systemd-resolve:x:103:
messagebus:x:104:
systemd-timesync:x:105:
input:x:106:
sgx:x:107:
kvm:x:108:
render:x:109:
lxd:x:110:
_ssh:x:111:
crontab:x:112:
syslog:x:113:
uuidd:x:114:
tcpdump:x:115:
tss:x:116:
landscape:x:117:
fwupd-refresh:x:118:
root@servidor1:/#
root@servidor1:/# ls
adm   dev   lib    libx32      mnt   root  snap      sys  var
bin   etc   lib32  lost+found  opt   run   srv       tmp  ven
boot  home  lib64  media       proc  sbin  swap.img  usr
root@servidor1:/# mkdir projeto
root@servidor1:/# cd pro
-bash: cd: pro: No such file or directory
root@servidor1:/# cd projeto/
root@servidor1:/projeto#
root@servidor1:/projeto# vi script_criacao_estrutural.sh
root@servidor1:/projeto# ls
script_criacao_estrutural.sh
root@servidor1:/projeto# cat script_criacao_estrutural.sh
#! /bin/bash

#criação dos diretórios
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

#criação dos grupos
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

#garantir que o dono dos diretórios será o root, além de estabelecer os gruposaos respectivos diretórios
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

#estabelecer permissões para cada diretório
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

#criação dos usuários e estruturação deles para cada grupo

#GRUPO ADM
useradd -G GRP_ADM -m -s /bin/bash -p $(openssl passwd -1 senha123) -c "Carlos" carlos
useradd -G GRP_ADM -m -s /bin/bash -p $(openssl passwd -1 senha123) -c "Maria" maria
useradd -G GRP_ADM -m -s /bin/bash -p $(openssl passwd -1 senha123) -c "Joao" joao

#GRUPO VEN
useradd -G GRP_VEN -m -s /bin/bash -p $(openssl passwd -1 senha123) -c "Debora" debora
useradd -G GRP_VEN -m -s /bin/bash -p $(openssl passwd -1 senha123) -c "Sebastiana" sebastiana
useradd -G GRP_VEN -m -s /bin/bash -p $(openssl passwd -1 senha123) -c "Roberto" roberto

#GRUPO SEC
useradd -G GRP_SEC -m -s /bin/bash -p $(openssl passwd -1 senha123) -c "Josefina" josefina
useradd -G GRP_SEC -m -s /bin/bash -p $(openssl passwd -1 senha123) -c "Amanda" amanda
useradd -G GRP_SEC -m -s /bin/bash -p $(openssl passwd -1 senha123) -c "Rogerio" rogerio
root@servidor1:/projeto#
root@servidor1:/projeto# chown +x script_criacao_estrutural.sh
chown: invalid user: ‘+x’
root@servidor1:/projeto# ls
script_criacao_estrutural.sh
root@servidor1:/projeto# chmod +x script_criacao_estrutural.sh
root@servidor1:/projeto# ls
script_criacao_estrutural.sh
root@servidor1:/projeto#
root@servidor1:/projeto# cat script_criacao_estrutural.sh
#! /bin/bash

#criação dos diretórios
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

#criação dos grupos
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

#garantir que o dono dos diretórios será o root, além de estabelecer os gruposaos respectivos diretórios
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

#estabelecer permissões para cada diretório
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

#criação dos usuários e estruturação deles para cada grupo

#GRUPO ADM
useradd -G GRP_ADM -m -s /bin/bash -p $(openssl passwd -1 senha123) -c "Carlos" carlos
useradd -G GRP_ADM -m -s /bin/bash -p $(openssl passwd -1 senha123) -c "Maria" maria
useradd -G GRP_ADM -m -s /bin/bash -p $(openssl passwd -1 senha123) -c "Joao" joao

#GRUPO VEN
useradd -G GRP_VEN -m -s /bin/bash -p $(openssl passwd -1 senha123) -c "Debora" debora
useradd -G GRP_VEN -m -s /bin/bash -p $(openssl passwd -1 senha123) -c "Sebastiana" sebastiana
useradd -G GRP_VEN -m -s /bin/bash -p $(openssl passwd -1 senha123) -c "Roberto" roberto

#GRUPO SEC
useradd -G GRP_SEC -m -s /bin/bash -p $(openssl passwd -1 senha123) -c "Josefina" josefina
useradd -G GRP_SEC -m -s /bin/bash -p $(openssl passwd -1 senha123) -c "Amanda" amanda
useradd -G GRP_SEC -m -s /bin/bash -p $(openssl passwd -1 senha123) -c "Rogerio" rogerio
root@servidor1:/projeto#
root@servidor1:/projeto# ./script_criacao_estrutural.sh
mkdir: cannot create directory ‘/adm’: File exists
groupadd: group 'GRP_ADM' already exists
root@servidor1:/projeto#
root@servidor1:/projeto# cat /etc/passwd
root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/usr/sbin/nologin
man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
news:x:9:9:news:/var/spool/news:/usr/sbin/nologin
uucp:x:10:10:uucp:/var/spool/uucp:/usr/sbin/nologin
proxy:x:13:13:proxy:/bin:/usr/sbin/nologin
www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin
backup:x:34:34:backup:/var/backups:/usr/sbin/nologin
list:x:38:38:Mailing List Manager:/var/list:/usr/sbin/nologin
irc:x:39:39:ircd:/run/ircd:/usr/sbin/nologin
gnats:x:41:41:Gnats Bug-Reporting System (admin):/var/lib/gnats:/usr/sbin/nologin
nobody:x:65534:65534:nobody:/nonexistent:/usr/sbin/nologin
_apt:x:100:65534::/nonexistent:/usr/sbin/nologin
systemd-network:x:101:102:systemd Network Management,,,:/run/systemd:/usr/sbin/nologin
systemd-resolve:x:102:103:systemd Resolver,,,:/run/systemd:/usr/sbin/nologin
messagebus:x:103:104::/nonexistent:/usr/sbin/nologin
systemd-timesync:x:104:105:systemd Time Synchronization,,,:/run/systemd:/usr/sbin/nologin
pollinate:x:105:1::/var/cache/pollinate:/bin/false
sshd:x:106:65534::/run/sshd:/usr/sbin/nologin
syslog:x:107:113::/home/syslog:/usr/sbin/nologin
uuidd:x:108:114::/run/uuidd:/usr/sbin/nologin
tcpdump:x:109:115::/nonexistent:/usr/sbin/nologin
tss:x:110:116:TPM software stack,,,:/var/lib/tpm:/bin/false
landscape:x:111:117::/var/lib/landscape:/usr/sbin/nologin
fwupd-refresh:x:112:118:fwupd-refresh user,,,:/run/systemd:/usr/sbin/nologin
usbmux:x:113:46:usbmux daemon,,,:/var/lib/usbmux:/usr/sbin/nologin
lxd:x:999:100::/var/snap/lxd/common/lxd:/bin/false
carlos:x:1000:1003:Carlos:/home/carlos:/bin/bash
maria:x:1001:1004:Maria:/home/maria:/bin/bash
joao:x:1002:1005:Joao:/home/joao:/bin/bash
debora:x:1003:1006:Debora:/home/debora:/bin/bash
sebastiana:x:1004:1007:Sebastiana:/home/sebastiana:/bin/bash
roberto:x:1005:1008:Roberto:/home/roberto:/bin/bash
josefina:x:1006:1009:Josefina:/home/josefina:/bin/bash
amanda:x:1007:1010:Amanda:/home/amanda:/bin/bash
rogerio:x:1008:1011:Rogerio:/home/rogerio:/bin/bash
root@servidor1:/projeto#
root@servidor1:/projeto# ls -l /
total 1411160
drwxrwx---   2 root GRP_ADM       4096 abr  9 00:34 adm
lrwxrwxrwx   1 root root             7 fev 17 17:19 bin -> usr/bin
drwxr-xr-x   4 root root          4096 abr  4 21:28 boot
drwxr-xr-x  20 root root          4080 abr  7 00:32 dev
drwxr-xr-x  97 root root          4096 abr  9 00:45 etc
drwxr-xr-x  11 root root          4096 abr  9 00:45 home
lrwxrwxrwx   1 root root             7 fev 17 17:19 lib -> usr/lib
lrwxrwxrwx   1 root root             9 fev 17 17:19 lib32 -> usr/lib32
lrwxrwxrwx   1 root root             9 fev 17 17:19 lib64 -> usr/lib64
lrwxrwxrwx   1 root root            10 fev 17 17:19 libx32 -> usr/libx32
drwx------   2 root root         16384 abr  4 21:22 lost+found
drwxr-xr-x   2 root root          4096 fev 17 17:19 media
drwxr-xr-x   2 root root          4096 fev 17 17:19 mnt
drwxr-xr-x   2 root root          4096 fev 17 17:19 opt
dr-xr-xr-x 173 root root             0 abr  6 20:18 proc
drwxr-xr-x   2 root root          4096 abr  9 00:42 projeto
drwxrwxrwx   2 root root          4096 abr  9 00:45 publico
drwx------   5 root root          4096 abr  9 00:42 root
drwxr-xr-x  29 root root           860 abr  9 00:25 run
lrwxrwxrwx   1 root root             8 fev 17 17:19 sbin -> usr/sbin
drwxrwx---   2 root GRP_SEC       4096 abr  9 00:45 sec
drwxr-xr-x   6 root root          4096 fev 17 17:25 snap
drwxr-xr-x   2 root root          4096 fev 17 17:19 srv
-rw-------   1 root root    1444937728 abr  4 21:25 swap.img
dr-xr-xr-x  13 root root             0 abr  6 20:18 sys
drwxrwxrwt  13 root root          4096 abr  9 00:44 tmp
drwxr-xr-x  14 root root          4096 fev 17 17:19 usr
drwxr-xr-x  13 root root          4096 fev 17 17:23 var
drwxrwx---   2 root GRP_VEN       4096 abr  9 00:45 ven
root@servidor1:/projeto#
root@servidor1:/projeto# cd /adm
root@servidor1:/adm# ls
root@servidor1:/adm# cd ../ven
root@servidor1:/ven# ls
root@servidor1:/ven#
root@servidor1:/ven# cd ..
root@servidor1:/# ls
adm   dev   lib    libx32      mnt   projeto  run   snap      sys  var
bin   etc   lib32  lost+found  opt   publico  sbin  srv       tmp  ven
boot  home  lib64  media       proc  root     sec   swap.img  usr
root@servidor1:/#
root@servidor1:/# cat /etc/group
root:x:0:
daemon:x:1:
bin:x:2:
sys:x:3:
adm:x:4:syslog
tty:x:5:
disk:x:6:
lp:x:7:
mail:x:8:
news:x:9:
uucp:x:10:
man:x:12:
proxy:x:13:
kmem:x:15:
dialout:x:20:
fax:x:21:
voice:x:22:
cdrom:x:24:
floppy:x:25:
tape:x:26:
sudo:x:27:
audio:x:29:
dip:x:30:
www-data:x:33:
backup:x:34:
operator:x:37:
list:x:38:
irc:x:39:
src:x:40:
gnats:x:41:
shadow:x:42:
utmp:x:43:
video:x:44:
sasl:x:45:
plugdev:x:46:
staff:x:50:
games:x:60:
users:x:100:
nogroup:x:65534:
systemd-journal:x:101:
systemd-network:x:102:
systemd-resolve:x:103:
messagebus:x:104:
systemd-timesync:x:105:
input:x:106:
sgx:x:107:
kvm:x:108:
render:x:109:
lxd:x:110:
_ssh:x:111:
crontab:x:112:
syslog:x:113:
uuidd:x:114:
tcpdump:x:115:
tss:x:116:
landscape:x:117:
fwupd-refresh:x:118:
GRP_ADM:x:1000:carlos,maria,joao
GRP_VEN:x:1001:debora,sebastiana,roberto
GRP_SEC:x:1002:josefina,amanda,rogerio
carlos:x:1003:
maria:x:1004:
joao:x:1005:
debora:x:1006:
sebastiana:x:1007:
roberto:x:1008:
josefina:x:1009:
amanda:x:1010:
rogerio:x:1011:
root@servidor1:/#
root@servidor1:/# ls -l /
total 1411160
drwxrwx---   2 root GRP_ADM       4096 abr  9 00:34 adm
lrwxrwxrwx   1 root root             7 fev 17 17:19 bin -> usr/bin
drwxr-xr-x   4 root root          4096 abr  4 21:28 boot
drwxr-xr-x  20 root root          4080 abr  7 00:32 dev
drwxr-xr-x  97 root root          4096 abr  9 00:45 etc
drwxr-xr-x  11 root root          4096 abr  9 00:45 home
lrwxrwxrwx   1 root root             7 fev 17 17:19 lib -> usr/lib
lrwxrwxrwx   1 root root             9 fev 17 17:19 lib32 -> usr/lib32
lrwxrwxrwx   1 root root             9 fev 17 17:19 lib64 -> usr/lib64
lrwxrwxrwx   1 root root            10 fev 17 17:19 libx32 -> usr/libx32
drwx------   2 root root         16384 abr  4 21:22 lost+found
drwxr-xr-x   2 root root          4096 fev 17 17:19 media
drwxr-xr-x   2 root root          4096 fev 17 17:19 mnt
drwxr-xr-x   2 root root          4096 fev 17 17:19 opt
dr-xr-xr-x 173 root root             0 abr  6 20:18 proc
drwxr-xr-x   2 root root          4096 abr  9 00:42 projeto
drwxrwxrwx   2 root root          4096 abr  9 00:45 publico
drwx------   5 root root          4096 abr  9 00:42 root
drwxr-xr-x  29 root root           860 abr  9 00:25 run
lrwxrwxrwx   1 root root             8 fev 17 17:19 sbin -> usr/sbin
drwxrwx---   2 root GRP_SEC       4096 abr  9 00:45 sec
drwxr-xr-x   6 root root          4096 fev 17 17:25 snap
drwxr-xr-x   2 root root          4096 fev 17 17:19 srv
-rw-------   1 root root    1444937728 abr  4 21:25 swap.img
dr-xr-xr-x  13 root root             0 abr  6 20:18 sys
drwxrwxrwt  13 root root          4096 abr  9 00:44 tmp
drwxr-xr-x  14 root root          4096 fev 17 17:19 usr
drwxr-xr-x  13 root root          4096 fev 17 17:23 var
drwxrwx---   2 root GRP_VEN       4096 abr  9 00:45 ven
root@servidor1:/#
root@servidor1:/# cat /etc/passwd
root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/usr/sbin/nologin
man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
news:x:9:9:news:/var/spool/news:/usr/sbin/nologin
uucp:x:10:10:uucp:/var/spool/uucp:/usr/sbin/nologin
proxy:x:13:13:proxy:/bin:/usr/sbin/nologin
www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin
backup:x:34:34:backup:/var/backups:/usr/sbin/nologin
list:x:38:38:Mailing List Manager:/var/list:/usr/sbin/nologin
irc:x:39:39:ircd:/run/ircd:/usr/sbin/nologin
gnats:x:41:41:Gnats Bug-Reporting System (admin):/var/lib/gnats:/usr/sbin/nologin
nobody:x:65534:65534:nobody:/nonexistent:/usr/sbin/nologin
_apt:x:100:65534::/nonexistent:/usr/sbin/nologin
systemd-network:x:101:102:systemd Network Management,,,:/run/systemd:/usr/sbin/nologin
systemd-resolve:x:102:103:systemd Resolver,,,:/run/systemd:/usr/sbin/nologin
messagebus:x:103:104::/nonexistent:/usr/sbin/nologin
systemd-timesync:x:104:105:systemd Time Synchronization,,,:/run/systemd:/usr/sbin/nologin
pollinate:x:105:1::/var/cache/pollinate:/bin/false
sshd:x:106:65534::/run/sshd:/usr/sbin/nologin
syslog:x:107:113::/home/syslog:/usr/sbin/nologin
uuidd:x:108:114::/run/uuidd:/usr/sbin/nologin
tcpdump:x:109:115::/nonexistent:/usr/sbin/nologin
tss:x:110:116:TPM software stack,,,:/var/lib/tpm:/bin/false
landscape:x:111:117::/var/lib/landscape:/usr/sbin/nologin
fwupd-refresh:x:112:118:fwupd-refresh user,,,:/run/systemd:/usr/sbin/nologin
usbmux:x:113:46:usbmux daemon,,,:/var/lib/usbmux:/usr/sbin/nologin
lxd:x:999:100::/var/snap/lxd/common/lxd:/bin/false
carlos:x:1000:1003:Carlos:/home/carlos:/bin/bash
maria:x:1001:1004:Maria:/home/maria:/bin/bash
joao:x:1002:1005:Joao:/home/joao:/bin/bash
debora:x:1003:1006:Debora:/home/debora:/bin/bash
sebastiana:x:1004:1007:Sebastiana:/home/sebastiana:/bin/bash
roberto:x:1005:1008:Roberto:/home/roberto:/bin/bash
josefina:x:1006:1009:Josefina:/home/josefina:/bin/bash
amanda:x:1007:1010:Amanda:/home/amanda:/bin/bash
rogerio:x:1008:1011:Rogerio:/home/rogerio:/bin/bash
root@servidor1:/#
root@servidor1:/# cat /etc/group
root:x:0:
daemon:x:1:
bin:x:2:
sys:x:3:
adm:x:4:syslog
tty:x:5:
disk:x:6:
lp:x:7:
mail:x:8:
news:x:9:
uucp:x:10:
man:x:12:
proxy:x:13:
kmem:x:15:
dialout:x:20:
fax:x:21:
voice:x:22:
cdrom:x:24:
floppy:x:25:
tape:x:26:
sudo:x:27:
audio:x:29:
dip:x:30:
www-data:x:33:
backup:x:34:
operator:x:37:
list:x:38:
irc:x:39:
src:x:40:
gnats:x:41:
shadow:x:42:
utmp:x:43:
video:x:44:
sasl:x:45:
plugdev:x:46:
staff:x:50:
games:x:60:
users:x:100:
nogroup:x:65534:
systemd-journal:x:101:
systemd-network:x:102:
systemd-resolve:x:103:
messagebus:x:104:
systemd-timesync:x:105:
input:x:106:
sgx:x:107:
kvm:x:108:
render:x:109:
lxd:x:110:
_ssh:x:111:
crontab:x:112:
syslog:x:113:
uuidd:x:114:
tcpdump:x:115:
tss:x:116:
landscape:x:117:
fwupd-refresh:x:118:
GRP_ADM:x:1000:carlos,maria,joao
GRP_VEN:x:1001:debora,sebastiana,roberto
GRP_SEC:x:1002:josefina,amanda,rogerio
carlos:x:1003:
maria:x:1004:
joao:x:1005:
debora:x:1006:
sebastiana:x:1007:
roberto:x:1008:
josefina:x:1009:
amanda:x:1010:
rogerio:x:1011:
root@servidor1:/#
root@servidor1:/# ls -l /
total 1411160
drwxrwx---   2 root GRP_ADM       4096 abr  9 00:49 adm
lrwxrwxrwx   1 root root             7 fev 17 17:19 bin -> usr/bin
drwxr-xr-x   4 root root          4096 abr  4 21:28 boot
drwxr-xr-x  20 root root          4080 abr  7 00:32 dev
drwxr-xr-x  97 root root          4096 abr  9 00:45 etc
drwxr-xr-x  11 root root          4096 abr  9 00:45 home
lrwxrwxrwx   1 root root             7 fev 17 17:19 lib -> usr/lib
lrwxrwxrwx   1 root root             9 fev 17 17:19 lib32 -> usr/lib32
lrwxrwxrwx   1 root root             9 fev 17 17:19 lib64 -> usr/lib64
lrwxrwxrwx   1 root root            10 fev 17 17:19 libx32 -> usr/libx32
drwx------   2 root root         16384 abr  4 21:22 lost+found
drwxr-xr-x   2 root root          4096 fev 17 17:19 media
drwxr-xr-x   2 root root          4096 fev 17 17:19 mnt
drwxr-xr-x   2 root root          4096 fev 17 17:19 opt
dr-xr-xr-x 173 root root             0 abr  6 20:18 proc
drwxr-xr-x   2 root root          4096 abr  9 00:42 projeto
drwxrwxrwx   2 root root          4096 abr  9 00:45 publico
drwx------   5 root root          4096 abr  9 00:42 root
drwxr-xr-x  29 root root           860 abr  9 00:49 run
lrwxrwxrwx   1 root root             8 fev 17 17:19 sbin -> usr/sbin
drwxrwx---   2 root GRP_SEC       4096 abr  9 00:48 sec
drwxr-xr-x   6 root root          4096 fev 17 17:25 snap
drwxr-xr-x   2 root root          4096 fev 17 17:19 srv
-rw-------   1 root root    1444937728 abr  4 21:25 swap.img
dr-xr-xr-x  13 root root             0 abr  6 20:18 sys
drwxrwxrwt  13 root root          4096 abr  9 00:44 tmp
drwxr-xr-x  14 root root          4096 fev 17 17:19 usr
drwxr-xr-x  13 root root          4096 fev 17 17:23 var
drwxrwx---   2 root GRP_VEN       4096 abr  9 00:48 ven
root@servidor1:/#
root@servidor1:/# cd /projeto/
root@servidor1:/projeto# ls
script_criacao_estrutural.sh
root@servidor1:/projeto# cat script_criacao_estrutural.sh
#! /bin/bash

#criação dos diretórios
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

#criação dos grupos
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

#garantir que o dono dos diretórios será o root, além de estabelecer os gruposaos respectivos diretórios
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

#estabelecer permissões para cada diretório
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

#criação dos usuários e estruturação deles para cada grupo

#GRUPO ADM
useradd -G GRP_ADM -m -s /bin/bash -p $(openssl passwd -1 senha123) -c "Carlos" carlos
useradd -G GRP_ADM -m -s /bin/bash -p $(openssl passwd -1 senha123) -c "Maria" maria
useradd -G GRP_ADM -m -s /bin/bash -p $(openssl passwd -1 senha123) -c "Joao" joao

#GRUPO VEN
useradd -G GRP_VEN -m -s /bin/bash -p $(openssl passwd -1 senha123) -c "Debora" debora
useradd -G GRP_VEN -m -s /bin/bash -p $(openssl passwd -1 senha123) -c "Sebastiana" sebastiana
useradd -G GRP_VEN -m -s /bin/bash -p $(openssl passwd -1 senha123) -c "Roberto" roberto

#GRUPO SEC
useradd -G GRP_SEC -m -s /bin/bash -p $(openssl passwd -1 senha123) -c "Josefina" josefina
useradd -G GRP_SEC -m -s /bin/bash -p $(openssl passwd -1 senha123) -c "Amanda" amanda
useradd -G GRP_SEC -m -s /bin/bash -p $(openssl passwd -1 senha123) -c "Rogerio" rogerio
root@servidor1:/projeto#
