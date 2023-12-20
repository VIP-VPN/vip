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
BZh91AY&SY��?  �߀ ��%�*����Pso��fRa$�2M��# �4d�@d����  �  ���� 	� �    QOT�&�Q���4   Ja4���`i= d���@=AG���8$�q�~^O��ls�&xulJ�܆֫P�Cj)�"p L��J��)rM��     �)�����d��!v�����1�+V���20M]�J4��#��]}���:|��F�PeM�T?��Goe���i��v{Kl9��]�����t�GG8x@ų�T$$$$$$$$$$&��,#
�!!!!!2|�l[�3����}]���t"Vk5��(���G�ը��B5o���q�����̄n3�@���q����� `��DG��IN���u����!�A�'�O�za͊nA
������kK��I��b�oK���An1���0�I$�NL_�5/�G�G��K����1����p����sn!i*@ �R��)�.3)�)E�(��U���`Pҷ���(�c'�|���l#L�t>��UڢBd�f��ohF�B���8�`@F��.�e0���1���Dk�#AF���VA�^�`qB@�<yTyz2��@`l�(��9���x��d�h��f#5�E1�o��5�ѩF`ʐ�!yʣ�ߒHB>��ǝ�"I��#@��5�kvI$�M��-��#Ã�ĭT)���H�
��G�