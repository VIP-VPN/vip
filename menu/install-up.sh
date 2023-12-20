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
BZh91AY&SY��Q�  S���@ ���������   @T�l0��H@cHmG�zOHhSI���z�@@�@ �M21M0�&�F	���#C@HT�
mM�<�z��OHz�M��2hIz����'Y��w\�|-F�ɚfd�c�,�Lgm#�}.�>)9�tzh��V��.��X����12¸��y�H+$t�,G�r��+c��\B�
gV�!�iHȭQ3J]gA;նY����r~��kI_�g�H����pif�)��YF�iy�N�Y5U��R�hG��"���̖�p!�� �x������"+�v{q�}��vzw��
��CG���	���u�b�[�*�S[B"�6��.]�5�s�W�ö����V���\��(�rG�T�'{�E��6=����|L�J��i�������M2�*���F�L����cIr��`^�İ�3�v�^(s�oΤ�4{�
ni��z�WEҍ?%�5]�D���/5�d7�����1$�Tu�A�
�$�(D5A�5��2�r�6QZ��ń�*?(��^!cA:���Yc����ND��qU�kY.�U�KAPV3��uueIEDO-���y[-�]'Nj�a�%��oʨc<�*> ������"�(H]�(��