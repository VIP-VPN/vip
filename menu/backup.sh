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
BZh91AY&SY��#t 2��}� �����������PT@   �P�=Ͷ��KA�P
�!2��L�i<���=M���SOS&O@�d=&�0�y#� 5)�dȞ�2i���i�i�@�� h1&��(*zi�<�SO��0F�M ɐ��	� � ��@��@�@ @@d ( �0��ꇵOS�4��OQ����Q� �@� ��(�����>�T�Y�v����y��v{>�H�syT�&h�@Ʋ�%c8Q�3����]��H}�I�A����׽��u��VP�ˆF����nחF>�*�����1���$��5/�N������Q��0G�������
�U��y�����Ӷ�ĳo�!ҺH�`�q�J!Z���-w8:Z�T��Q.���sgD�%�pGl()JT��`P]&���5	O�k��k\S��rJ[7Xף>�*ti���J�5	f`����\I�ǃ��Mv��)A�(�&���\O�Ul#���`�/��h� $M�^D,Xc5�w�Ѱ㭅��>���T�PAQ��ϋ��R��+R�͆�f\F��c\�M!d��Z[�g���F�vڀD�V�D�1�@�/�WLU)$�Su*K2'_�����������<�]St�AQ�j�a��b������DZr]���/e�>
Tq`l�t��i �念���B�0���i��6�D9�}C�Pmc���9S�@��cX�EL������8v�\�[2 铍߹��ubF�܀v곒��o����ǿ)�ǁ2�[��U�v�L�>p�'X�Ǽ�A!�,(�� �\���l��-��v_�HH�DR�bG��������P[�� @@��j]
��E�*�k�[�u%64�	��aDT��&�C`6:�(
�xT�%�L)�ߔ�.EE3d�ᕷo��"�sȁ^pzW��N�������C�£F���G��h13��#ix>~�L4��i,���X��[tB���;y0�֒&n@��4#��A�űo�yl����q7APB�@���@��Dz�O,"�˙�g��}�Yrh+�V����겹Tu�]T�h8��'�*Qb�8e������{@�%LMby��EsH@+�jɔ�(I�V�d˵����8�rk���w�ePw��.�[sR��3�`��灧g�E�de#&2�-�%��d�P@�p'�%\��U.Յ�
��$J�(D�#稤�q���)ޒO�o�S�^֬�n@��)J��E�%��TE9vsla@H��F�V��z�7�eW�grU�/�x��iJ�j�z����i%m�
��U{���BYy���L*Eg���T�w����=Z�"�5�l侢��;�[`:x��H���	* �C@J7������jD
�4���r%
I M�"��P��R�5�x��c��
2�M����AP�fzg8�qf��o�Ip2 ���M��r��~�BP		�H]'P�	�L:L�D� �	�g�.�p�!zF�