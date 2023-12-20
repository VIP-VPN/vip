#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SYuFue  =_�|�
 @����0:�l�����������@���<�h�'Ꙩ�S���SA(��	�bi��FF�����`c����|\#�DF7�d��qG��b0��Z�U+RY	+yL("$x���*��p���d2 L���������P�X��y�/c/g
��`�eC.�(��zRvQt	�$8���#R,%��hPV�Bf�y����\�3��9��`�4��*��$�P"����Р���p6y����!B��1%�ɩ�N=��q��n�he�T�6���G�G���)��3�(