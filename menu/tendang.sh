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
BZh91AY&SY��8� ��qx����������`���P  @ �| J%
� 	�$�T��$J�B����@�CF��@      @d q��F�F��   �  �2 8�ѣA�@�    �   � hhѠѠh    d   h��H@C@F@�!�G��aO&DzM��j�S��&� )D�S��?=�xS�Jl��4���&�&�P��/������FϪґ�0����}�Vi1663�[Fs�m������md�5�~�6��t������̜/�\Skt���q10�����q�2jf�~��U�0�Ň��3����6�VK���擄�o��}��v��&L<mm-,5�cZ�괛�N}�Us\K�[ۘd�n]L֏��pf��Q�8؟��7��j�+!��';&/�pW�16�A��ښ�Xa��Z�ٰѓZ_
��VS�«I�N5pV���+Zoz6���%����|nV����Ur���FJ���^ļMM��6��>K�N�R�=q��ot��o&Y~C�4<s��*��I���p���>#��+q`q���NFo�.�7Lq>���o&Yb��2�C-i�X��ZX��~:~�ɲ��U�<w�G�}��F��뵍cK�ލC#Ȼ.���NC�[/]�~�|wLm�GE�|�w�IuG�]���)�+����>��+'x{�vS�7�=�s5�A�ba�&�_��?�	x�Y����3ki�^���L9���lmnpd谶�	�d�.F)s9e�����V�b���Wi�����9�f���N7�6�u�{���������V���|¯��^�ȯQ�|A�%�:��Y�+�f��W��f��'��灩��{��m_�s�����U|o3��\�Ԟ	�,L�WK��M�XX���˩m-�X��v��dziy2��?͈Ѵ�X#l�ZU��YU�dh-��r�A��Z��a�
����%�_3';��oE�d����;��WS����{!���h�-F��S}��~zOQ\�z�%?|�u��)���T�+SIY��},	|-��-��~6]ml���Mn&Oe��kW���7��>�j����Wy�������E�%ݥz�B��ʙ}b�Z��5���0���k'��}���v�'4�ʙLZYt-��K�p��a�ػV��nnm�;C�]\��d��V�\W��z����U��uY&�\��x�]é|$d�-o�'�>�4�,���T��NK��U�`7�U�+�a��N6l:�d��i50Fw��ڧ����ij~ʯ�=���M+��گ���Նo2�7��z�$��ښ9��R��2r9�i5�j*��{5m}Oʖ%pUkj�[6L=ƌ�z3��W������W�'x{��<��jÞ�eq4Xa|�)�d�I�¶�04����W��W��W���=���ά+�V��P��j�NI�<��|/��?#�G}������>��}�q72m��L��WS���֮�}S�kk{����d�;J��齧na���u����Y�
��������j��#�i��6F��P�VClV�=�s�ڏb�*�t�s\�Jõ3f�[W��+�Y+)�2�1Nƶ�W�����m��դʭM㙅a�a��}�s0�mop��ds�<��|�;�匔��>���˾�l�����i)���F��������;n�w���K��Ʈ�N��;�d�+D���K
�V&j�mw'���U�,�0��Z���sR�6�I���N9��V�il���N��bh�q͔�Ɇ���\��Ku��s;T��釲�[e�ج٫Y7�{4�+A�쥵]�s:�5��ll^�m�#.V��N7����b�1LMj�����KT�K�5����\��z�+,��^e�^�KE�Y������9�nKk�����S&�}���ϥ��_-̌,VX�|��L_E�_]XK����]�~�dB�iv��]/��v�Չ��J��
��+6L�"�Cџ$��ޜ)O}��+�����Z���z#��0�n������;cEWtn#r�Ti�|M�B�ei-�10�W}Xd�M�ê��K�nh�����h���|w#T�J��Ƭ�AB�`f�J,]3;�U�nW;���ԜrܮsZ6Ƿ����W�ݫ6�h��7I9ZL��b��m�Ɇ�f,S6l_��1�.W�t��G�ލl�#"ڻE���b0ҕ֬Wx]uߝ�j{l�Ye�7�Su��������8F���厪�; �-�8\\η3{\⚪�[f�d��[�;����k���ܽ��]ŕ�a-�o��mӻJq�z���+��b�<#�q�Ӭ�w��7ʼ�+�°�p�
lbj��;��%����U�FUr�)�α�`0d�X�p�Vq���*����W����6�گ��ZSSwn9]��g(��ڪ�[p��0���W�r�OE�<����e谵��ɓ����5:k����rNG�a��gLٰ����:[ڝj�j��:��:���渜k���I�zd��*��m�F\�m:�!�W�e�/n�\��5[n�����\]Q��]��	��j�xڥwF�>b�uK�pV�s5����w�Y7���VN��o��pN�jh�,s�j^{�����^�-m�a�,#k&&20¶1+6[ȴ�.�)�6�4=7E��]W9llSS}ba��Rњ�J��yZ�e�W�'�>�Se�M���p�*����2��*����<��.:���Jv3��K��u�%~�Uz�WP�Y2C,2����e�a~�|��K�����?n5�m#/-����\�(�'�ۭ.7�y���,��+�2u�U��Y�b��Ɍ]嬙hZج�)��F��Z�����oWn���e�8-��$������z��V�
��OA�%7�n�B���~�lo�G�4����.��z��Z��]�� m�49���
e��d�#�r�U���6R�b���le1d,��4/Y�S��.+x�����s�j���A�q��mN������e2s#���*�[��ڼ�@�FC#u�u�۬�јn�3&&*�ޛD��xՈs��K��%��T��ێ`�L<	��w%k��Ks�vۧckc���=��톣����-��B�h�V�F��cX؎7Z_�����Ժ�R�5wZ��6�h��i�=;E�W�oK9�{��N�R�G��vId����ъU�[��[�
��X(�
�g�/��eU�b��bW��9��u0/��7���[R��h�|�+�x����~a��ũR�F,���̿<~��Žm?!a%v�V,Z��p���.�p�!a�q�