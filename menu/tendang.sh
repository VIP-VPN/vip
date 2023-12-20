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
BZh91AY&SY9�T 3��o�����������`���P  @ �
? M��`�   �R��������=F�=M7� ��O(      � h    h 4    h� 4 �  4 �    4 *�M4Hz�=G��i��@ɦ��� 4���Hp  @d   ��    $ M41 A���?J~��'�{T���M0���ja��Q�hMfS��� �Kc���QM��Pϔ�%/�>��[l���y�-R�_�]�U2����W"�b�����,.%~lD��a<Rl'�%I��(>�*�q]T+"eFc��@N�N�Vk��4�[ �'ς)��W����	$*���`�|� B�I���F�hB �L���R����9t�b��Z8u��{����=(�����H�oF�[���D�����ND�{��m�k;�O��&�	��7��k��O�Ɗ���4�;��浥Paq�:�\�a��	�&����L���h���6�Q9dH�����]g)yX��P�������d�s������<+�;W��h�Q�������e%M*w�Z�i��}"&FR�)��p��R�%v[Q�K�%D��~t�a�5�{���5ʩ���p�A��Y���}�3��4�g��,��;���h"�B@K,a�kMژ'�-&�\��y;��3�`�Lh��ɞ@M�g�e�@�u}�R�#k�ې�4"�1�CM#�	�)��!5%4��Cl]�Ə��3q��?��|�� �8BCʆy✔�P.����c�#����C_^Bf��tB��_X��g�\t��׵W+:�5Q�'>W�Z�\\��Kri�"�bm�@����0 ��$�O	�Y~���O6�
��!�P�`��3!�fREt�|B\�r嘋�E�&��i��h���N��0,�9|��;��;�\�(,�1�f.h��%�LDk�����P��h��-A&|�J(��-AC�~XŴ��-B�_��	P��R�I�������^cG��V?�u�C48������*EkX���C�Y���1V1lk��3ntL�҆Tw�!V�)�@X�D;�&�1r&�6<>m;�=#�:l�}�	��R?2a"D̀�Ph�*֋NC�HԬ���>BR��x����D�oUP.W�
r���ٔ *�^F1�M��c�V�Gia���Lg�^Υ�./��xO�`[�5�og�5�6�6gN��c5F���`"H=�!���ҽ��8-=���(b� +
ə���H�.�
Ŵ�Tf�E`�O��8Ɠ3f�ͭy�^6XV�9���^��Y�Ef�2�3k�(�(q���Z,8�ęY[J�^��m�CZ  ���i���;;�	P������fYY|�B����U^>(�Xv1�lmv	�;X/bG�e3��g�H������j�H'�BgƯY(�Ij#azH��2%���=d�c�@�N!. h�y�V�b 4*�T%�e"���V�Ï�w����>m}	C.�,��ʌ}�o.bF�\a�#H��%��Mj��0k�������G��*8ЂC9�SW�>���K�ͻ�o	����ݽk���2:�����N`��q�(<R<IMwD�BA��-+*]	rG��ZG!�E�4p�£!C�eݸ��1}�qb*����<CP0�iSެG*��s1�-�1Zʋ��X�c���k��mk��"fpbX�Q�P��e�h��Hʶ1�hdC.A��0D%e�s�7*�Xz�.�(�m\:w��ϗ)�K�R��0�ioG7y;���Ө���xO���~���d��/�ͲR��'��m8C���?�D���F��<����ރ��3^)�5�C|)�A��ueF6�I�A^o� ��Q��ŅK���}~p���3��	l.a��,֤�.N�ea�΃Q %1�bmX�ru�����tC�|<�*�AqP�P����Ӑ��S�9�&�^YD�]sV�N>H�*J�.��l��G&�q녏B:H�&Ȃ���%�zs��7qnJqq�Y�^~Lk4�]��r"ա�L1�S2��I�cddr�:�XgT����Y�ӈ$�V�_��KlC
ڗ5aV��0�"�+5%�ӉwFc�(�0����z��,�-FHKE�Th���.8�AiZR�E��h��b1Z� �Y�&q� �!"VH\u��\Y�S,r��o<��e@FM���H2��Ah��FE����^��i��#w���[w���e�lPσa�^�"F�9c��o.�D��{k�ߠ��E���j�I�}��:M��;��������&Ez!H�s�qz���䗷/��P%��b" �����R��
¸�0�F�Y)P4E�T��"�(H�*�