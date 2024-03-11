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
BZh91AY&SYG�t� &�P }������~����P�    0�@hфh1bd��a@2`s	�4�F��&LM�d&0�@hфh1bd��a@2`s	�4�F��&LM�d&R�D`�CML��`M�0���H��[��k���v��Q���������Չ�k,��=�bY('��>�:�#�Ф��.X�O�����=�ԩ#��&GK�2>c3C��1�_g���-�Q��J���G�Pf�(���!�%���=�K(�K��%*Ϋ2E�h�A��������PuO�q��%�(M�lbL�u��S����^(�*�Y8	��Q6��bS���R��BYc�Nw�z�Ts��^����cF��C"�2�r���B�B���\d�&�>�3��뜌O�ҡ�:�&���ؾؕ7Ga���%&b\O�u�//-KI�`u��1�u�a*C�'�ӑ��.Ix�ᤞ��а�����&rp��fOs1a���t���I-2�IA.pИ����3���ʱ�I�����<�LE������39����zS���z<����GA��L3��;T&�[�b!�*��o2%�N1����¾N�3>��ȰR8��klŤ����%�8^F��sccY*w��r?��jy�h�����m,��`|�ɏH��5C��mD�k�(O�|���"5�_Ua;�'W"�}mNę�Rg'"m�iD(9Gdo,��ec�+Ie	�>e�*�<�UA|W,1�AzM����l<��7F#y��s��X�MmD����Y*�܎)�An�r:nE��G(����8�q5��TU*J.Uk!-G+Pǘ���1�f!p�_dT�	��,*;��iDԹ&��㌖�F4(18�L�L�8X���Qsy�d&!�Jˉ��c�t��ڄ�c*�QG�T��x����"�(H#�:D�