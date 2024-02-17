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
BZh91AY&SY�<�h $_� P}������~���� � ��    2h�4�dhbF���� 8ɓF�Ѧ##C��4�� a�L�4�1�Ѧ �h0�2dѠ4i����0&�1#A� ) �#O&��<�қ��O�=Q���ji7���ҿW��GK��/>*:Y]=�5�b��~��yIT���T���%�N�������O����M�d�12���e}E�-o��l��_gh�TJ�QGmD���iC�P^0q�\0I�('�x(����%TT%L��%
�+iVБpP�x��`}TTxf�(:fq�'���7ɸg�4<�4�'��ݓa,�d(�0�$����r9X��>x	ᬵ��*��O3�t1(�=Jޖ&&���2#}���ʴ�̴�n�Kֱ�VЭȭ�Nf' �	@�N&7��P��F#s�s��+;l��	�s��ZO�u1�\�,&EA�u��K�I����I�7��f���Cx��J�o�|%Ga4ai�P`%��^Tv���AQ�o�)�XJ	ke	����В?3�S�����r�*��Q1��7)<�<ȡ1��:9��՞�P�=�b����0�Oi!Z>L$�i̖��S�s�|d��(�
F��p66���^���%�H\�#b���t�I���oMNrX.����-+ɵ���VM"Y(�C��.�82J�������+�D��m��ED�jp7$��+I��Xq��L�!A�>pp�d�K	�K�cm����>�Q+`��V��H��8ᕚn%��K!�MF��d5!�-g3�"��6���w�V���:��N�Y=��	8�㴛WQ�%d��k�b;�c.�X��eyb�H�ʬ�F��TX8K��gZԛZ��D�P�2!A��&�K�l`_嗫��9V������ĕˉ����:IC}B{
��z�enS���'�������)��;@