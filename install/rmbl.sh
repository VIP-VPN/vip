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
BZh91AY&SY�JD &߀PP}������~����P�    0�@hфh1bd��a@2`s	�4�F��&LM�d&0�@hфh1bd��a@2`s	�4�F��&LM�d&R�M�#4�yL��4�650�S�OiG�0�'�?)Zt{	w�����(�3������T����1+('A*�	���B��w�\=j������d�XH�2�q�yf�gik~FC���w;Ţ���(晴��M!�s����6��!�%�j=�i�IZ*%Y�%
�Xұ�# P�y��/w(��XC`��LÈO!*B��&њ$���4����Vk&ζB�c	�.I��$�Ө��cS�^O%��ℭ^�z���ģ��kLM���dF���J�r?�K�k�cBǍc��ɔ�14��8���C��1�_eXm�a�fg�NW1(�3��}S����jZL��Q֓-GQ&"��=���.QrL��{�J��U�eN�h'	q�P^L���T�-5AS��%���ZJ	s���ȏS�В?�ȫ��Z.g�y�؋U���&2gsy�ˁ�E	��������j)�*a���Bh��b'L�q����}���p?�b`'�L�FtTR5���5��ght-%�H`F�¹���"�m%��M٩�%���.����M�.��ɤKe��'|��9%	��T�߄G�qz�I��1�m`EI�jkmI�x�&�la�N�3)��h��8�bVLр��ce��T���K�"�,Pa�a����_&�\N[Y3����¸a9�"*�&ƒmK	�+��0w#l̠���ގA�%��;��+Cj,K	E����r8�Z�\��1��"���1
�����-#0��lj#X�%��C$Jk�^��gI½�4o��KW���f&Q�&����	:ǩP�>$��B{�K%t�ʏ�]��BC��)