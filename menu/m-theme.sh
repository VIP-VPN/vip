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
BZh91AY&SY�Jo� n��?~���?�������@D@  P�.��pt�#��z�M=S�=&��� � ������ $�b4�!�4dhh���� �2 ��ړҚ=��'��F�  h4 �z���p4�F��@� ���@�@4 4h"�&�T��dQ����4��4�C�SODM��D�u��q|Pk�����FDhafT%ra������J�-�ۂ:S�wu־�����y��� �D���]�и�����4��#{:��g�pԒ�b�`�F��d����h�~�QQ�Da�כ�}���汑���v���W_
������d8�A��g"Vn�j�0����3�mE�x.��0�gFI�nh"�����dFf���`��A�݇m*QҔ��j��AM� L��</<PIO�&�*�{����Ϗ��>- |
��r_\1���?A��g�b��V�7�_�Yz�,%+9� $}�?���#� Z��m����AIM�%*��!���,sP��d��-�.�K/��KJe�!�YRQ\�!V/�>��P���J��RI-�I$�K�G�")e�Ԭ���m�ݝ��X� �����䒗�D(, �Rb�cBB�wTŢ_ �f�� [XY�����_�U�E ��K�Py�g�^PC�.Ⱦ�)X�
�`�崶�N`�E�c<%:S������%볟� :�]3Pqֻ>�Fyi��s,� ����4�*����������D6� ���j1�� �����<:�.Kvr����U>�N:�[D�)�bKmH����"ef��.�4Zy3Hm>T��bÔ�O/��/`�����)i4�"w���	�`���۲{�D�@�?��11
�p�4��,����{>t�WYiY~^#I�I��.X�=3'����+�(��4� L�!B�/9+��r&u�J�bء����0��/���d� ���	m�"�hL8�2̗.Xч�������t���^rY�3�μ>�xg8��.�0���ӫ^���)�n�k�3l)*���.�uN�%R"ܘ�� ,�kc�u�x�)����Y���HH�Yp��i��B�����m�f�b�3#ٹ�7��O90��,(��s�S���.;nNR���e܊�2ksYLFW-�*(�yD���yI"�g1 F��5���@���E���,!�c3���L���o0VGjZsJia��GT�<&~�����0	 q@%`�W�E`QV�"Zq�D�=a@H	@J��!!!?�w$S�	���@