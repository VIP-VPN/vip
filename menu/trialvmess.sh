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
BZh91AY&SY���R  �_�\�|���"�D����@� ��	� L � �0`  0 9�L � � L �)�)�53SF��i3DzS�fRT�yNF�Ea,�S[K��T>Y^��&
	�&����H�Zr�I	��,$�Ԗ6��x$X���Lt�j���.�FA1�sbHw��$;����9���B�ģ��kn,B�J�����9�*I'�_R�Ӱ��W��/������N[A$gy<_��a}'Da\�%eMGA��(v��ɢ!8���~
�S5
S�¼K��Sq�g�.2't>_;Q�gfL�I�)Д��+��*r�8�������ab�R��P]
7
P�P�Ir+P���'�"��9۽J�h�V�	3����;���iA��]��BB���H