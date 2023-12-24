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
BZh91AY&SY��� V_�e����?�������@D@  P���l�4 @d�jx�����A�G���F������@=@@4h� ��   �ѣ@�h����� 4�  `�$�'�z=M� FM�� i���I!i��4Sщ���������4�OD$3t;��e��(1���g�$d�V&cC�B�lϰ�(d�M�����V�QL�i@�Q�S!��H.*x0��*'��6�.�1�1`�Bݱ�N��߭.�]:;�dU�'^)�qa����N^`����i����Bp��0�ϨW�u~��<���	��I1>3x�Yb�F��RI�M���O�h�����z]��M05?-�Gh3����q�І�`ɧ2�4�b&�j'����I���u���r��|8�Q?2 >�E����p���D�$�y\b�i`S�����()�LB��D�.��3[`���s�����.h��չ@e@�t���^8�L�)	��9�P]:E���IF�ֵٚ��/fA�� xU
� :���K���R$��0xBO4R�p��ͮu�J��.���$��U$���Do_��e�K���B�y�V�,�ul-��yO9h�e	���N.[��A�O���[��8?��b�l^���.eŎ"6��E�p�`�~3z�q�VXB��ۥ�*�I#f�	��xA�.��ತ��q�6��\FQKԳt̓�zI*��"˓��ۉ�0�*^� �x�⼮d��H��.dѡ$�	6��e�N�Zid��� �K����{� �lx�-5�S�S%:V��K�B�[�%>y�Tf<Q�a�I)-ԗY�Mc��B�ь;>ӂ��A��0ؐ(^IlVD�Wg62�XA������9�ܦ|I��bAkuK{\">`��ĔRA� �*kO������$S|p򪙦�{٨�Uy0�=�	�^Xz�ㅪ\%���b��ARAaY;�)*���y��g�JW�������ɺ���:���K��X�ok��N��6#h$`A���ez�9��n�/��^ԻY�3�On��ϳ5LN�H �@�w ����Gٛ��`N���k�x�I&~Fnmג��gV��>Y� �)�Q�w�i�,bhI8�I�N�Ft��̏>!�e�ޥ6J�q��p@/A>� R0[3�m՚Qyr�D'A@�M�®�,o��\��ݺ(;�)J�-� ȉ�J[�׺ ����<�}��8N��E�H��\�7����-aK���+�QAQ� Y���79C��"�hu,���D��E�]�B"��@���!�AH������K)`�j� ��"�T���"�(H\��M 