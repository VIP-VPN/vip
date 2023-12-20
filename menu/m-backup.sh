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
BZh91AY&SY�c] ���� ����������pD@  `>��j�v������Wr�;kج����( J"$���i�~��d=���dh  ���=F��iF�����O��G�4  �      ��S�=Hz�����C    � �    H���MCC���h=FC#F�4���@ D�?I��=C4L �@ 4� 2   JM2	���ML'���6PM�Ph�h44�Ȇ`�0�g��W�!j�������R��V�LLP�a)�*���ȵ�����qʖ��$�q,H�
IA$7��DBԐ @	�Z)��S�ҟ�/�I���4�bK��Ү�bљ���n�k8g�TP=ݡ�%�Z]�(���ddDE�3L;��lvnyu��!�D��
O���l3r�&0\��QCllc�=�ĂCF� ֲhc���GsZ�����D���m3-�߱⃗n*���*hA~S�t�a/}7��V�_$&���}���3��\�,p*X��'���9�̵{��L|M(���@a���z	���=�K��k���#�klk(��^�)�[Ζ%G6���ݙ �A�20A*�O/�Cw񝙍��c�!�1�`Bn��6�dF��O��w�"��Q>�*���,�jy�s�Ո�0�&.�ɇ�j5��l��,8j����
�#-n�	�aZ.>p F\�@��{kj1Ã����\hQ�5�=|Ǩk�	�:S�@��0 ������Y"kݸ��܊�P<���5)��ln	!�ޤ�(��(L��!�v#,�B
U��f[����s���J�������{��aH�Q7D�+N`����P=z���9�O���	�z=���ؚA�h"�6�1�2��BR�1�&�|�yͥo�?@3���$�T����gYŰE���ͯ7��b�9a�d&>�8�<�B�/����,��v��jKt��p�ʚM�e�����P!摁 zz�M"K�k�J*�� �#�9��w�۸m���k}��}�[Σ�]� ��Kz��<�	"D����j��j���kin.1\�T�ąج.~G�GG�IJ)I�s�B��:���E�!T�&��F0ƻ�6��k�5rԐ���4�*����g[hV���d4���4��Y�j�~�K���X���%�4�pk&��)� �����$�</*�]��e����=�z܆�T��$ `�.!̳D�jM�O:hh|{g�"p �M$A� �CCC��Y�J���4�|�bA�S=���st�/����|�UŅ�$�!���l��Il��QF_$�]m�+�T��
�I���&�Dn��(�0ᡍbBC:x�7ȏ��Xu�6k0��a��y�|�t��9B����׌��^u�S ɇ
��Ѱ����+��PsL΄+��L��T�gh�R�S�9Ԑ��h%+�J�ED`�w~u��$M�zS(�Z|h`�ۃ^�@Z���L�V� N)�ޔ]���%�93"sh�U���ejU���ۢ�(ƕ�-+�!��頕
�(h��>A�3	C$�� �Fn؇�m��Y��c$�l�d�'���6>ᘎ�=��	�T�+г�K�gGK�(���,:�-�Ǜ
��B��v�b�b�X.�$�6�y���eM���p4_9�2�F�(��9���-��;�9�7���}&��o�٘ I�)��qGQ�d�k�V-�� �8�7;��kR��9)+p�P���B��XV:/:@�k��*1�4T�VV+��T��N�x����.[��{6$4r$���C4<P�1��x	S�*���wͥ6D$�L�jwD:N���&���Y����ǅ�:'�ab�C����"��+uX�6(p-fi��A�Ȣ��������0D  �y�)�rP�O��f�J5C���.����К���M)�߫g �<�c�E�l��"��P�1I��ۻ��㚖��Є�Wd^o�G�c̱K�s�`��r�!U�v���t��u$��A.$�}�i͞�����]g���S`�w�m+uԨ%$�}�(�n��Ɏi#}͊��C����4.�b��^q�!��('x�R�靋����[�ЦfI \A���u����޸�p��캔n[�)6��.���5��f7s�s��9d	d$�Ǣ$���a�K�ɸ}k���S�M6�q����TP�#ԦU��7u���@ԟQ����nB���0.*��1r^����29 �(8q�Į���.�X��ƾ㹩�qWz'`��s\�����<�u�j�yz_�P��7�D<7�6��	ɬ��o��(K@脥�f��)Z��T6�R�d��Ԇ�jy ����M�{LLJ��l�����p3�J���mL�tм�g����bm=A������ �{i =+�$��u'NHP5&�f6a���S�N ܪ>����X��;�I������X@֐G���
(�
�v@�D�A(L$�	A���������Pp���)�rE8P��c]