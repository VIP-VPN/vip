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
BZh91AY&SYl��� ��  ����������p�D� 0  `!�>QJ
D6d��##U�*m6�m)�
*ɢm��J!@� B
�l&�"BJ� 
HI#L���5I������O$ڏȓ�oI�=FO(��  8      !�              �h       �      2        D��  ��)�)��14i�����#hjf��&i4ښ�F��P*H� M&M4��4Ѧ����ziOI�0�Sڄ���j z��4hv���� 1��U!`���P��R!  C�������X~�+�%|刷 b�.�K&7y�V��ʛ�&9>��{�ϖ���͕�c�$߲��ê��6VH�EB����7➰���� �@a�F%(�$\�b�Y,��#d��N5$�L�}юMK'C�(ppL�uj`�ckDͰ���a�������������~,���y�ۉt��	��x�1�R�I���t���c�.��\(�E��jǚY���;0�7&�V�*r���aWmU?n��Ħ�>rڭ/��wG�\�)��m9��/�x�n����.́4�rOl$�־����jʹV3UA�fۏ=6��Kg�z�]��U֛jv<�F�&��Mg�,l�cJ���l��,�9����ek�j]c99S�w��g��V���;4R�@Ӝ���T�&��,z�NJ���XlT�&)�X�[�x(���4��X����?�������"B�d�:޷���E0b���$���[ٹf-j���v��촽�����Gm,W<ݣb�k8�<X��|�A�����3���枙^`ˡ7,G�@Whm�\�MFQ��9]�{r�I�*E�)US��d�����1���j�L��4D�Q"�k�֤Fm{�j
Q5^�O��R�<^(�N��tL{�x�<W>2R�J����4N�cZ�L0�FA9-��4+I�¸13��$Fu�?�O_l�4���Ǿl8(����6������ �2���H2Hs!E6IL��(��K����lO����!�x��Y:h�Q��O9��E�������	vs�$6uO��7��n�@�@���-�5uA���rф�Jc$ڲZ$��5P�7�༓r��1̏:u��ߩ�'��u�ɿ*^� eL�x�{�k�U(�*b��|�iV��m'�I�ԖkOd1[ʖ��'4:��=���(��e}��mM�5o{����g��z�2?�c��J-[>{���=y�3|	��J$e��ȟb^�X*�Z��"8�^v
����Q�9F��#��n�X����{�����3,]���:w�6oJ���O>��<�������ڤQr���"p�v�j5H?fO�/��H\���o��������Sk穚�#)3X�l�*��E]������UNȦ$$��!,�Z�6lLEa�]�F���(¹�m�e�"Wp��}Fav���1���8.�>�'���#�-��%RP��Y��l�K/���?%$����'�����m�wo���䃟V��&[6g�{"b�'�6�#T_?~9�ɰ�}�C�t�a�ѴCl������o�Ǜ���3�}Ѱ� ne�I%�z��X��6�N����\���͑�kU'�0t�Cj�p��z�&�!�"�+����v�.퍉7N-H���ɀ�Hŧ�f����|=>/�s)�1�5J�f�P�������S�4�O�;/Ja|��;�R��6W�L�;9~�# 0)@ ��Z��r1��
 t� �λ;;��t�,ڞ��M�����z��^��gQ�{���-�)1�QLah���
��o7n������n��ؼ�1�� �2f�d���.��C!�0�2)x�C�d���Y���*�j�>�׷�-���R-��0]�%�K[��{�e�)�|K�+���X,ܱ��g�L��t��{�v���B�G���p�25�'��6��8�(�%)�=��].�210b���I!ĥ�$�o'��֒�w�褟ʓ.�5$�uԌFm�n�ء1�G�$�F	B�$�+$�E$��ȋ0�daaC���P'څ��^H�V�(@)Y%s Ȏ"(^,P�!�በ���1>��@�Y
���U'�[m��%U�ߴ�m[,R�!v*ܺ�1�8���!*�T�:��2),9I-aD��,LB�Y��_k�_��_���Vw1f����Bc����zyȸ�h�^�찻0|��d��$ ���B�O�%�sY��0h1�8k���Wo�F��8-�1��%h�V�����]W!	y�:=�<m���(��u�B�/N#�V#�;D��Yuϑ��;�X-�^^-�!B�� !��x'�O�;�����:�JO�k'�������류P�bq��KJ?�j"XB@�P&!��s�=R��������Y���bI'���VH#��$�b�`�%����q�����7�5�g'%*��|4�1*Et�	�  ������`���3�)�Iڟ�y�v��K��ʥ�?Q�����^>�$P��X,IjN(�'�P��Ժ{V	��Y�����>�"����q|����+a�W�.�W�(�9ͳ>�nຽC�8���GK�6��0����QwG�~�H��)9(���b��h�1Yi1|:|�0kC��H��B)�s�^-���B��K2YN���vFD Lx�nV0�@Ma$V2S�6L�/Ozk�#���T&F�kg9��sk`�lb̈́�c�5u�S�N��d�gP�Җa�ow)�f �p�?��W����ѓ�����LL�7����Z�]�Y�ICU�U$�I�*�-�B���Ȉ�ȁ�5`K�m��]���&ލ؋��g�t8b�FQ2RH�<�Sݮ[$ޓ���Ɇ	���Z�m���&��j��SHėڼ�ۊ�E3�I����	j�Z��v���:G����˺�zH��]~Z)�55�F,U�-�W�]<^���r����z�*j�ރ���Mi��]���b/���+���0:�Q��F���t�ہ���Hb2N.�$�(�G�&�8��A5:�X��`��N�н���w�~/s��S4�~5'������%��;��{�Ci�Q�`{����Z��r,$�G�H�P�o�UX;���
Fq��I˹�|���f���,ר��H�=ĘR
��o$�\ {h���u��'��P�N�kXtG8�C��B7!ځ$�n�k��
�UE�
0)R�JD�X�!�8~ϓ���!�ӭ�;���]��s��#����`��b�`}H*�t�V�����`��!!�@p8������C��$��|65��2�E���{�D���k{�'GD�돹u��������r'"�by9�S���!�[���ZS%���S!Bz��@9���oA�s�/�ns�19<�[*�ē��VH`��b��4�$jy��X����r`�g��ɤ���*���h�/�?{%�t�T����+��P���o����L}wz^_mFf�A6pD�Am6�ψv6��j�H]%��_����#-q!�8o`�uC$;A�^=:��(攻��Ss��&옏��U�5jer��Rs�&�I$�gZ��vw�ᙒ�D�IjMHY!���Q��^��-��8�@`�!�*kM���hg�t��L���"�UIUT�Ե��v��3�ǿW6E
L	Tk[����*�L�FP߿���z���w��R�)K	ɩ�Hv!�h���c�et.�c��p˄�`�w���n۶�o��*��f��И'�v�
Y�8vZ��&��S�7���y9d�m.�������/���D�z��Ė���Ǯ��z,��k�7��#��d,�N���5)JR���U��H1]E'IP�QQ8�§����ؕ�s!r��H��^��=(5��P��x �/=�ۺ9��ƨ��R.4"B��i�$�|���x�>���R�Ǡ�'���|i��̞%��?Rd�d�z�*��6,����TF��=/����"��u!��0�"?�+_BOݣ�Z�\C��9��(�n#��Ww�M�F���D�$���'��5��zQ�!��3�i������$����>29�"w���)����I�;���2AK�q#��n���������<ңl����A�4�D��Bcm��Z�S�Nr�%?z�Va�Jg^�x�n��I�(�ev�����;�YDBhbv�l8�7L��%�I��I$.:�I�*UA��}�$įd���S��1Af�}�,���#��T��v�(jS�hs����6��:ے#eD��Ƣ��kC�o��b��h0�oja)�M��VkP�#��e«��Z�)QW�VȻg{T'pI16
Qt��֙��T�͑|�$O�T�,�'P��3R$����R�R��uajR�e'q��,�{�v3��Ai/'̙����*X�=>DRc�&��L�Xf�MJ�,���&A���JQ)1S!H��LE�1�9�Vu(4��Gy��ȥPR*�D"ppD8�(K��iU�|��a`!r%2���$�>�$��(����D�f3(h;AAQ%'�I�ݗ`�R{ri��]3k����+Tk�^/���5�)d�ג�xf�W��:���&02Z�J���**��R6JUMJ����̊��C[�s�P����5�4�Rmf��� �"�jJH�8I�:�z$HtH]>S�4��P�4_E�Ԑ$�]�́�r�E�k��֝�)ܴ]Qߘ=���v��jIZG��v���f4^H10�7�v��4]*|c=�Ի�G�ʕIEB�SU+��r��΅�� B|'3$Ce��qp���5YUBڌ-	q:��H׶8��R
Y ���(U��'�0FS��$M�I4����4D�K�R{����:��bM����8.��?���&D��EDߡOW�}�-j����S-I��z�}�ZD����kݝ�����Ju����]<��uA��tǚ��%B��:���}�'��$�c���|�Ʊ�R�MIoJ�Aء�]42ws��5D��t��{4�H��ayr���.�ax�8��9�_���as��C�`6Pq�`E4L&f)�>8�:�x�W8^mFع�:e^֌�;�aa�I�W� �E�FY[IR�Ҝ"��A{�N�4�@�t�n�9�(h!Efh�7 �9P���ɯ��t�-)45���R��٣)�D�LC�A��c�/���^��1
������(Z�ԩ#&�C�,���D*�����-!)UEaye���RRKUլk�c"����(�I&o��A�cT�I涹�,#$�q����U5���hj$� � HX��B�A��
;��C����ʛc�|oQ=�N��Sֈ�$�I�q�$�R�f�ē|�����E����LË%2%����;[�je��:���ʸ����a�~RuK$}�E���s@��|��I7�h��7�� �]`��E��17:E 1"T�M�/�R}i�O�7qH��3ͬz�dv#�ؓ1��>]s���z�����$�]"���b�V�uK��T�¨���Pa@���p��"���z{���R���E�d��9 ��/����t� �H�Lz���9��s3&e��8�V��I�5A��Iē!�mKJJ����<;�=���9�mq'[+�,�ԫ�Z�v�g�=1��"ÒLRZL���ּ&ie��^��b�#CT�D��1I�SM�|���i��$M�����I(�N	f��*RP����l�U�ŀ&�m�.����O�Ai�Dr�B���T↶�)�7"R��n��h봼�S�К�j�1Vr�eM�c��Ū���0x��f�.�.�J���t&	4,�j��a���qf���,�)JL0pT�ŉ�D��&h�J*$+$���4��{Aq.F*B��˸�2$f��.����y:`�jH�}�nF�tJ-X��&��04�w��h���]	֨ܺE=���7v#Zj^4rrM���q<��/"��oqD�<s�R�������8�{uY#�QeD�I6���ԍP��~-"b���4D�lyy�4kN>�P��N�0�fVŇ�H�L�����k5���/���	�5�q)E(����	�oUS�YI�OZ[�f1NȲ}9&q���g$4��d����0^c1 q��"dK
R�@�[r�R!;d$���1�_�s��J=ʇ�}����C�W�RR$��3ޒĪa���lR��J!��LW&�51Y%�tK,�Q)�(�7����	-�}��q&r) ������5��i$�)d����"�F�HEH���ʨD@()@0�$BABEA�C�D��)I�Q/��b�	b��
�b*�h� �G*�� ��AcT
@�A<����H�:��*	C����)�e�$�