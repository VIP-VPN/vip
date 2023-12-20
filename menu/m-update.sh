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
BZh91AY&SY~��w ���E�@ ���?�������@�D@0  `���5�]sCY�h�[V�M4�hhhdh@M  0����i��� �C@i�  Bi?T�CA�  4d z���� I�I�I3D=M44bh 4=@ � h"I���RO�)�6��@z�L��@�@ @Q $�i�I��M4�cS�m#L�z���P4��=DdDFO��]�}�J�$�~�ظ0A+xB�j�mIr�1:{��S�vM�B΀�
���T[�i�=PR0��'A�$�BLB�%p\U�1*$,(ZCB�����cr��5��l�ke3߿(�R�DFO��5��t�lbc�R2ʻ�/��5U�Wf�YyY����E|�Kf%E�9�+u�n!�.�K�$��f��L2��QUUUUUUUUUUUUUpl��T�p�~�Ǳv�e��y��;E�\���T@AAī��'�A�w����EQEQEQM
�V���0U
(���@���9�5o�jf�yx.���]�x��&{*=�qs|��XD�B�5Ю�t��8���%�Mb�����%�e�8 �(ne���`qś>@���-�&�����1$�L�����}$���i�P*��!�"+�@DU��c�3w�1MDIHh����DL0����"�>�6ʍo�~
6-/�n��k��EQEQED��`L�Z-�h�˴T$$$&H��+cHcu��#�S�ȯ�	;w����<ߖ�P+8NW� �ߞ3��V8m�E�����NC�������3j�����r�d���6�����M���y,�5P�>t��V���j	Lm4�8��] �'Iq_.�Y��f��N�a��������W6�Q���g;�nIO��^a��~%����<3YJx�>�`>��_t��#��h5��n�����)�	��;L��Ē�<$�=��Ы�m��I1pgtW���`+H�Z�98�t�� 
�j�v=]05(��{���!�GM8��o�WNd���8��l-�K,��{���j�Q�O�d����'�b�yЃPWh�s��'ƷM�vDDUUU�y�&|Җ[�J�NE@Ѓ�+�+֫H�u̢#�2��/�P*�b��қ������o2m�b	7'8�Q]��K��
���ޮ���g���i5y����M|B@s������Od��N�ES�5C���1�c�1�c�0�c��*�� *��ũP.�:qE�� K�E*BC~a&Y�-%6�(��M�GV-�z�·$�ݳ8=?����~�8(\J��z��)w�)��ߧ#��H$�$�rI&�+�=�R�m����^���R�����Wx
�̬|;���؋�Fl����l�l����2�X b��FCl7UvM�s�o�� l�wlEu�wF�� ����x��!		���y�A��a�ku�l�K�p�I07��6�7���36��1�g"*����$��g(�U ���=@9\��I<s>q["�,�V�&�$�{9UUUq����a]�T�
h]��r�����M�2.����g7�P� �:� P`�Y�ݽ� L���H�
Ӗ��