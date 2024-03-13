#!/bin/sh

export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'

PATH="/usr/bin:$PATH"
x=$(basename $0)
if test $# = 0; then
    echo  "${PURPLE}=============================================================${NC}"
    echo  "                        ${GREEN}MENU DECRYPTER ${NC}"
    echo  "${CYAN}=============================================================${NC}"
    echo  "             ${GREEN} Contoh : ketik dec-bzip2 spasi namafile ${NC}"
    echo  "${YELLOW}-------------------------------------------------------------${NC}"
    echo  " ${GREEN}   [ Hak Cipta @ -  RMBL VPN  (2024) ] ${NC}            ${RED}#${NC}"
    echo  "${BLUE}=============================================================${NC}"
    exit 1
fi

set -C
tmp=gz$$
trap "rm -f $tmp; exit 1" HUP INT QUIT TRAP USR1 PIPE TERM
: > $tmp || exit 1

bzip2 -d $1 >> $tmp || {
    rm -f $tmp
    echo ${x}: dekripsi tidak mungkin untuk $1, file tidak berubah.
    exit 1
}

echo "File telah berhasil didekripsi. Hasilnya tersimpan di $tmp."
exit 0
