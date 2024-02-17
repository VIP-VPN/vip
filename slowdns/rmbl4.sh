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
BZh91AY&SY���. #߉ P}������~���� � ��    2h�4�dhbF���� 8ɓF�Ѧ##C��4�� a�L�4�1�Ѧ �h0�2dѠ4i����0&�1#A� )4@&44��=CL��I�M4Ʀ�y
~��M+��N�s�f=�:�o���Z�5�'���A=$����e'hҒ��T�W��O��&ꤏh���2>c3C}�����6�E��En(��������6����%�h����%�X%�Cƒ��gU�"�P�sA������L�Pu��q��%�(M�lbL�*�	r~D����^(�*�Y8	�ɨ�H�)�|o��R�ʄ��I<���£��U�aai��4n��yW��04=K^�Y�w�q���D�D�b{�I�a0�>+��Sq�v���'9(�3�|��yyjZL���I�����	R�'Q�#kh\��>F�t�]	�����N�@��L���kMGY���4��!����	��g9�$~'*�q'.���z"-X:I�D�L�<W���"�cVz�OCt����7��zX'r�����1�G���̉hӌo���a_'�Lϴ�2,��8Z�1i3��KIq���k\���E�ʝ�`�٦jt�{;K�m,��`}'͏H��5C��mD�k�(O�B�f}��/���Y��UȰ�{S��&E�T������d�Q
Q��K$��X��YBo��dJ�O
�P_�U�l�^�a.&�[�o����yp�9��4[Q,&���J�}Q�2�-�NG]ȴ��r��9��7YZER���V��r�y�k깍�1�"�"�X�L�IaQ�/KH�&��5���d�`�1�A�Ę`{DΓ����3�.o2̄�=䬸�!�@��Y(m�O[W"�=B�_�̏���{�����H�
2��