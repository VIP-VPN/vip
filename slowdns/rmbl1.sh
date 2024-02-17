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
BZh91AY&SY���  #߉ P}������~���� � ��    d��dɄ� d4��&� M�24ɉ�ɓ	�@�h�M �di�A�&L���L�48��&&�&L&�!�4�40h(�Lh	0�S5OMLI�4ʞ�=�ٔG���LSK=�[��v3������N�l1j��k�=��VPOQ*��{�s:��jIp�Ū�	ܧ��M儍L���y%����x����>���RUEw�Ia�M!�~��8���0�aBPO����)+ED��$�U3�`
�h1_E?	�����s��~�
x�C4I�ңJx��'�5���yFAbO5�������cS��'5��愭]D�u(4�X�`mM#�¹�G�R��4�Vs��ǉ�q��I��P:����zN����U��ؖ�ø�D�䢄�K��S����jZK�ӹ&2Z��LE�>I=f��r��`'�j'Q�ҩ7�uʟ2h&��H��L��3�7V�a���5�󼴔�":�В:NU_2N�.4�]+^¯+�#qQ������i~]$���I����z_F�J�C�{r|�&f�[�2p��#K7ْ�}����r�6�(�Ě�QH�֍��^-&�԰���r5\MdXM��r;�y��zIpø���GK8؟Y�_�Kea�&f�6c�'(�
�32rDm��ĵR}�GB�aE��bL���4["n����8�䬖���;֒�%#�Y��J�0�,}���	6�o��zI�n�F3yF�s�Vrp��Rn�'|�0s�\ʠ�k�j,'���6���<�,%,Z���3���%ϲ��c �R0��#��*Z8��3���&��#i-Tb���&t���;��e���%e����C�u���	�d,mQG�XX�9����O�?��.�p�!�J 