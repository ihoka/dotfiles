export BASH_SILENCE_DEPRECATION_WARNING=1

# Added by OrbStack: command-line tools and integration
source ~/.orbstack/shell/init.bash 2>/dev/null || :

eval "$(pkgx --shellcode)"  #docs.pkgx.sh/shellcode
