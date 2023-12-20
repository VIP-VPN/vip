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
BZh91AY&SYו��  F_�|�
 @����0�	IL�4bM1@ ����Ę�zh�FІF!�%O$��i�L!���D.��7
���\�ATD$D m�G-*T�bS�����>�H��0�����N�$�R�D�ꅪ�B������8<�S"��P�^eB;3\��)A7-^ܐB�O�x���+�<��D�R0F@M���5p�9��#����g�Y�߃�J������{[Q�F]v���5�3)%��`���-Ć�d�<f��XB��*�� �%���r��F�=��г"
��PrE8P�ו��