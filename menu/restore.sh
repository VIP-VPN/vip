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
BZh91AY&SY�6F =��u����?�������PD@  PLa�ƛ!��]�I#Dɪ~S&
lCM4��=G��@̦F�j	DL&�4S�4dښh@�� 4h HD#?T�=G�44z�����4��4hd�L�  M &� � 	"�dz�	�i��I�F�4�Q�4 ��	�a�{>�ze�G�f����0�+�G��G��A��n���l�O��[sU�׾�㤀E���Dr�g�8{�=m�I�h\��~�i�i�]��a����\8<���9�h� �U��-CF�=���H��uS�FZ������lKJ�}��h��{�w,����������F~�C~�_��j�4,��[�U��Jf��\���0�C�Z������Q�5�0R+��2z����v3tE7���>���r=S�5�-e+\Y=c�)�k��eq�Z�����Lҷ�l{W�����-ҳ����&@�n]:��I���1^��z\����v*�d�:����X����5�YX6��.#xn��
k�J�� K`��ګ�@E��HTm)���)���!�!���n�UĆ��5�k�8�ŵ�� f���5�vˤ^�ѿq�'F,'���r�etKy��Ľ��HP:�Ӱm3���ȡ/�
�i�QQ�mY*Z���"���	Ca7�:�BM ʱn�0����ig��l9a�Z#��y�~]Y�^]'�h�bF|X�h�6���q���̊\�a����i��Ғ(э�䖢lA�{U0���tL����"[ngT�R�n�b�C�T,�F�K㾃������TD�(8 vn*�q`_r��-j�L�:&�'e�DQ�I�s�.1/f(ć�fb�cv��3h	Y�B���R�^F6�*g9�81�3Q(��q�GgL-t
���\�Sc�։����ܜ�Rce��08���bu�.]\Z���vZץ4���ڗ��\.��aj�UwxՐ�9v�w�Կp�4B��b���UA��&�5�V�v����A�ʹ�\}~�����Ƥ�ee�:�WֱH}�j��󹙞	1ŧ50���j���6�Bw)@�Q�%� �]�O0/�LX�r���	^�3�9�
���h{Fٕc\+Y���bHbp��
'}�	��3�����T�F[a��+d��p�b2�⪚f`9�%�@���,FJl�$� b�q�6�lh`z���)�EW4�� g�����E[h�C�#c��,R��L
ҳm���A�#�_���1J�V���Y�R9�зIlP�@K��I���m�(@���/�XQQ(�y�[��u��Y�뙂1�����V^a�1��,���v�HB`�,�� `&c�.�p�!,l�