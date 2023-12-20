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
BZh91AY&SYD`D<  �g�� ����������@D@  P]�]��o3�OG�DH'��z�����	��@i�� 4h4 4���Si�4M��L�@hdb�4 �5���$���=OP��   �d @4 5S �=	��i��i��11`FL I �����$�z��꟩������I�i� h�T�h� ���mc���R1�ߨ�{jUڅx�yDi����qӱ"1� 	��{v�,�74�Xf���w�Nȵxb�л�9ذ��lb!�ETo#��B	���d �A���$���h����l����9�����tCj}�eC�Qt)�^d4��c�8>&Kr�C��!��qp�d�Q3I ��(c�Dd�7$�=#��⭩�ZF0�)~~�k��rOև#�����)t(D@�,�[�N�����+k6+/b��"mO�ܒ:�u����Ã�'P�X���8I\0�`�����TLn� ���	N��у�h��b� ,��JV��Wi>� u�ADѻp�I"z��Rd�8��al�H0E�R�o�(�j6x����:��G<�/��o�����np`��{�g�jPq�b�D�'U���%�%����DTH�@1�o*I���	&����A1�vh0����ڳ ���6K��41m��Xl5D�l(r×N�*���uΕ7|B�#�$��X�(]Ĩr-O1p�Yh|�L���\����	���X����'
BÌy����tj�f�G�f�j�P�as�ü��<<�N��[D0yB�D��ɉ:&�@�����Jfm&b�җ}#h�[Qo
W��2dy��q��<�xfFʓ	�wD|p�8ϓ�P��Q@�>�L ��1�iayn����^>g(�q���*F�P$%'��l��\Ɏ�n����[�@V�9��Y��|�2Oz�8�&䇀HӦM!��� beYQ	A���F��	�I��Q���H�P��YQ:g8
�@hJ�P�*�R�Q/�0LN(_9�z2�v[ He�.ޡ�ц&#"�؆�lꨎY�f���Xř��[8�"P��ylh���"Y�L0fJ{��X$Z*�g�a����UK�23e-z���[쓄v��cBA���l�w�����H`=�~��'8`"��Å�]��BA��