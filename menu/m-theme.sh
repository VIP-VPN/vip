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
BZh91AY&SY��� V_�e����?�������@D@  � ���^{9��^�{�%��O��?SH4h��(�� �z��S@=@@T��T�5=M��A�� @�@@ 2 1B
�54F��  @�12 �E3I&�hd6Ѧ�=M4z�6�4�@ �M)
i�(i6���m&�M4ɦ��4�4��t�B�9�_��%�w��yYa�G�����1�\�)�?Q���<c9+n��ˈ���~���G�I� ;��v��Q��<���C�~Â�.B0�/TP߭�=U����%��;u���2�kf����,01QL�b$m����6F�F�T��8���YN˷c��qѓT�KJV�dn9@CS[�"unU�z]�3�&5	iE��7%�''���ܖ�����C(cѕp�;��Q������d�!
�)��E����^�ӓ��~ ?y�y�'&P���")��ȃ�,MVK �Y`]Y>b5ȡ � a��?&[,�ʬ��u?z�r�Xd�P�v�� ���Uj��� �1��v��i����@����JUyh+z�T6:�E0����@Z$���mOP�Y�X �����[�1��inD�@�!�!$��K�Z���Ay��rS�|�!���$K�%��Nt�PD��h��@�Y�*�p�8��d�5�S���a����fPN&)2��� ����#E��d*x)\WZ�h"�"Y�>h p^�b�Y��o#n�֏�M�>��<U����}�����F�me},u�CT�sGٟ5k)K$ȕ[��S&��!�s�uaD
��l�)�\oNZ� �F�9ݹ���d��w��a���Щmݳ��g��@��Uj��_������Jh�ȾI�m٬a_D4#�� ��ɍ�,)�������@{+Ϻ��t�Ά���&_ S �Z��IV�����}u����T�Tq&_|E~i�"ߎ�+'���yFF=�&�*(��̐*D,,G��Ò�	L�����ң7KJ\�����ӓ��0�y��~H�a�q���Ѩ�F��A�( ���a�w1��s[�>��00�O&B%��|��7���(e(�8���Hv��u�Ͽ��K�B�%Ɏ�J��$��Gņ�p�45��ƒ���mD%�5��](^VE�SX�,-�ՈO�9(ѡ8ncs4�N�5�,���Uʆ���f�P�KKHr|���_>2��
£,�Xսm������j��h�fR�ɪ�F�ʁD���"m`Y`�@g��aӴq�z�^I���j4�D.�kTF.ePѷn:ߒ���������sRC�D������B*� �
��C{��pR�� IFK
�Xh� �*B�*B�w�]��BB��g�