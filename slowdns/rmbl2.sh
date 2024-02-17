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
BZh91AY&SYj�ہ #߉ P}������~���� � ��    ��2bh2d�i�2@i�C &��d��dɄ� d4��&� M�24ɉ�ɓ	�@�h�M �di�A�&L���L�4
�B �4�j�A�SS�ނjl�#�S�&)�z	�c��g?e���^�K��j��k�=��VPOQ*�	�{�{:��jIp�Ū��ާ��Mń�L�������[�����V��RUExIa�M!�~b�8���/�qBPO���������U�y�P����/G<K�|��"��t�}�
p�c4I�ԣJ|�����qw��b$�'8�w��f%0ύ�~6?��u��֠ҵc�QyȚG�}r5�/�	�i~��U���&�2��&BP:�#���zN�	�����_p���a�~"y^rQBg%����ļ��-&EC��I�����	a�OY�#.QrK��D�>�U&��S�M�\iɝ?Vr�����h*|�D��x��\�BbcGK�4$���W̓�;б��¯+�#��0O3�L���=D龾�2u·��{w��ѧZ���2��O�����~p�N��ja&�2Z2d7�=˘�	D����(Њ�F��q8�FAi7^������Z�l"�xIp�w��q����k���6�"r0���ɨKea�&f�8qJ�|I��9b6�eaZ�6��dlҹ��i*�I�p�&�p�a'��TB��|`�t�ZNF8ܴ��(�bȖ/E�UAx�c���'.&�-�������n!h�C����}�J�X��K��eP[��Z�	�G�o��3���$X���-d%���7�M��\��1��"�*�0�
�����-#8�˒p�H�Ij�ƅ%����3��ؚ1�L���07W�Ġ�;IYq>#�X�]���B{X�{�����?������ܑN$���@