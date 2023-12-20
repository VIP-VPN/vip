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
BZh91AY&SYo%ݮ P��u������������PD@  `o���"��(�J&�d�(M����H�A�6�F#jh��(��3Q��e 5O)�z����41�h @� �@�C�S#@�         � �� 44� 4�� 8h �A�0@4���2 b���i4�%Ob�m)�z���50��Rz��@�"D	QLmK��}juQ��3,|��ח��J�4�����R��/�	S���M̓��4P��?o��$Na���JNM��K��zjě�H�;�d�����&�YtA^j��1Nn�]g�y#Bq	ԡ�h�IRT�'����r�2��\�'���AfM�]�Z����*N�8����,3Fs1
���$���Si�˔2��49�-�?~ֹ�MY/�&V�6Ǔ��M ������
R`�j�$�$��N�.���]��ef~��w-\~i�X��ӫÙ�1P2��~��|�Ԣ�;�(ID*@qz=~�M_����p��� ����g�����1���kǾ^��hZ��������/!�˅�bKO����!�����Y��3�$��IO[�3�@}a�ۺ�����o�O���Z��E�y��g9a�&P�F��ֻKkQ_np�31��#�o@,! �a2/̶;i8%/X ѱ�U�W$�L�L�̦��nE(ޘ!p}Oh����� g�x(�#�
8/T�qI��UP�p�H���E6N>:�/�Wc�(��o��;t��KhDMCt�!��N)e��cf��}��u_���C��[)x�s�|7�!����V��^���4m0؄Oݞ��:�gE6�~�ƒ'�H-�C�X����:�&�f�S���C"!N��,(��4���O��
�ᶜ��Y6���1�ܜ	<H��E��ZB�����Ņd�x QEƏ30cF84�j����pw��#��w��ưiwn��φ��]����Xm\ƒQ����%K�D���|9X��T�R/[L�T.��:}��Q�^�������&ۚ� |��θ��'n9N-\��r=kaBk�m&l}�[SF���3��,�g�C�����EtXV!Vj*vD��7^s8�S:�Y�Ml7��e���.�gD��H��'�d},TAP"�vE����*ɂ���>�wG)��~n�M�OC)��p�+Z�;1���ng������-�����i,4�G�w9կ��:[fj��4�IN�88����Bϫwf���ϻw!���h������湚�wX"_�0Ze0���2)>�ax�i��9�d@����R6����q�t�k�3�&�DAP
t�3���.��A�{(Z#j+c/�zh``Z(��K�u��i�4ݵ���؀g�{Z����"C�hA9������#;IE8��d�O/3EB�A�,�LH��Q�� ��3u���iq*��a�Pa`����G�@a[�O^؞���Mv��n�q�J/���s�:��[|��!Z ��Ln]��nF
�^�x�H��:O�b�B`�@���T ��H8��P�;Y�Ah,>�0=
$v�b�%�es������/��� ѫhX��k��X��{�$���r�h��; ������W_��qR>��!1!	�iO��� $ �(��]��BA��v�