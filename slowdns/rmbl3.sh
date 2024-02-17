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
BZh91AY&SY]ӆ� #߉ P}������~���� � ��    2h�4�dhbF���� 8ɓF�Ѧ##C��4�� a�L�4�1�Ѧ �h0�2dѠ4i����0&�1#A� )��=a��L���dO�MF�7���ҿԑ�t���GK3����ĺ,T�K�yIT���T�D�{ł��n$�x��>S����yY#��&g�ߙ�A�CK�/5}���,�Q��J��4A�(0��1��(�('�YG��=�J��J�G�%
�+gV�#P�r����QQ���ÈPt���J�P���6�L��F�u?"ivMD���Q��X�Y5���K��eS$�\Oe��	UNr~na�ȣ�z��,��������6e�e���{Cֱ�Vέ�V�'	6��9(����{='Q����*bu�%f�lu��xߡ(�0%���S+İ����&RX��L�d?�O�������O��OA�Ш�ʝ2���ɨ��(.&	����,8q���7	a��XJ	kU	�z<�9�$w��a'
-���z",T9�Μ��Kɝ�yI���"���3���}tR����;&��d�!�+GŌ���`�x�}㡑q>`�`��#K�-Mb�a3��k	i|1#@Ե���E��K�#�7'��W0h#���5����/�%���r��N��	�Ш�;��˕�'�ej�V���p8[f\+I����M����nRU%��_�%T&��*�[<,BV���[�٠�&�ZNYbo��є�C��c�w���	��5�Ia8&�V��GngPYbw6����w���ET6"���Z�ch�#��/�Ke��#(�R.fVFC�TX8�R�6�ҵ&��G!,T2Рʹ%�`�$�\��0V-o6���=�ZO�� n�I(n(O�y[�E�Y[�x����O|��]��BAwN�