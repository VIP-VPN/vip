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
BZh91AY&SY��f U��e����?�������@D@  P�����@��%M<�j���Tڧ���Ry#M�d�A�4f����f������=F�h��A�   4�  �5'� �4     h   �����i��='������h	���OS� #@�&M��"d�4�LM0F��@�驠�
�@C��g����� �@��A ���P)�?q���=#9+~���b(��� r��I0@���N�ZJ8�O\*'��=���0�a`^ȡ�m��5����Kr����	��2�mFs����.15���H����a"��Pdī�G/>A�du.Q۰��*���-cO�Xa�"Ԧ�H�ëٝ��b��%�b�!cNۨW�v�ZC{~n���[+^"-Yr�Q%�_D�]�����UHB!`Rѿ����:q~v��j�2���A|��Vr��abj�X�CB�ۃₚ����VA������i�U����������]!�TK�t�upK��660`z&%$]`�#�Y3꡿���h=�~<�?㝕KџqJ������%� ����y;K��ϬXVo��\**��X��!�B�e������B��Ȼ$�~���MU�Dp���*x*��
���"^y,jqL�L���2���4��&�`7�@O�Rզo@M�ǬS蝓�Ѽ�ŰN��,��g�}E��."5T!S�Kb�US9��A�ra#����[�����&����L�mͫ$G�Ֆ3Ur߅�����˨���V�f�@�Gs6&��*��D��@w��R�sQ��Q�l�+� ��n��Q̜��3;0���*ɽ<���f�P�Էsmſt�Y`k֪է����nx0����$�~>�a���>�#."�Yvh"#/����tlz��^~K�1��%�1��%�0�C�hiPA$/\�3�6[m�2��~�@��$L˖"�I�"��.6���pbg=�#]�"�x���� T�X X�i<�V]�L����r��Y�GBdMA��Fh�}w���X�cp��>�gC���NR���0�0 �A(����Xp��	�2�!�a/��!��A3t[,�঴,(�4���Dv��$>o>���5�=�L�wq2���j#��2��|K
���*:2Y�,g6��	N������daI�w%�,�y��Lģ>t�dck	�\t�P�����eC��v��w6������)0��ͮZ{�hVY'�4�/��3��F�����XVi��r�E�HIZT���u�<ᛚ$|�`�z�~)�@��4d�{\F��h߳^u wd��9�`�,����UJPf�(����DU ��T��Z�)J� ���$�"�`A +T��R*q��"�(HIY3�