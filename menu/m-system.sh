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
BZh91AY&SY�i 5�� 	�����������sLD@  `A<���=��O}�ԓ��y��){0V�����ٻ�>��yw����7nbm�����K}�nx��nz;����S�n���|��>l����`��ٸZ���wk-iOC���7k��}_wHևnu}���gm͆��k�*�Y>��_^O�N�l}�t�x�'�k�q@�Dh&�&�d�M�hɣ&�yM�T���4hbz��4  I&��L�S�?M	�z��L�$��0�i=@�4z��� 4 �1"jODd�i= z�b22�h h� �  
HQ3B2S�4�S�	=2OP�l��� �#@i�� "I�&#S�i6���S4�O�=S�Oj���oR~��i6��x���6��4 <�D���0Ч�ЉOƦ�H�M��5�=M����@ Mz{bR�))HIA*���A!��@��
$BIM2L@I+AJ�A,%+F��p-���2"%�$&
��$�d*&	`e "VF	H�fZRa�R�HjFDhE�O����i>�[sj������)q��.XĹΐh�fM-��32|��i�%��͸&��I&gVyG��n,�x��owȈ�PE�=c������JL��侃��U�b��Qr�����3�Rڱu���5��q����FY��������l�b�<. Ί��<77D,�96e>[텪px�T���l���4CoT��T�ktݚY�l���j��Z�(ق!��χ�&��c�?�Fjc�5;-�G��|E$\�[l�����3��qц6���*T��t���~��P϶<$�̴�N��;0����F��j�x�J0�"9��ٛoz� �.���F���༠K�D���JJ23����Xޏ��M�YL&���F�)w&N�񑅬\T�������s���T�K�W��J���l�v�m2�.�O�٫�`3k��xl �I�3��yql�3�hc=�ml�=8I������O��1R��cYh��1:n:��������k[���>�^%�����B�A�\S�3�|�W!'T�� ��T����6�:���p"��^��R�/s�I!���:b;!�֔.i�2��hu�>.��ǮZv����M���ٚm[�y����8�theO�H��(���]�Ƭn��ΐ��9f��3������޾Ί&�� �ndrh����-���f���΅����Ŏ};,!D<�H>sUPS@WF��ʸM�Ȗ'Ma��P)�p�r�v�&�=\u֞��g�jS=6�:�;�?׺�Z�h�1�3��mn���p�1���k�y7FW�6��3���v��׾�H<� �0���\�����t��9<[	���?rF�3��5�a/t_yP$.U��SU,UlR��y���ԦtB����l�+���Eb�����P�A}1�	.cC�Dr+ CϦ�Y}e$}����7�E�^'��$ݒ��E���:y��ě��~�O3�򞭀��@�A D�	 ?J��Z)��B
h$�H�!&j�U7����T��0'}�ل=2��HzQ�p�j�t�, z�?�1�{�)��/�b��� �Q!�w�Bl{f�vc�s	��4@:���b�\����U2�*�1�(��zz��cT�ĵ�7�dZ�I����pL�r�1�8���Hn2�.B���MLt.l�2g���_�L�T�P �f���=N��ȯ�aN(r�>��Zޔ{^���h�<M4ƒ@��MN�qahM������ruȝ/���&#ޕ�4$���hs��7�*�Hi� �	rK�K�Q�Z���a�ɾ.�LC�N�F�t�#G�>}�b�}J�'];��o����<Y��0��J��#@�k��zNDE��:%a.x��c�l�?�R����_�3�P=�=�jJ儉3@��2,lp��{�?�g1ب��tao�����K|=P���0)&Sq��'���K {�z��3�2,�sˑ��B�c��Ĳ���i�	�9U'� ����3���;�)�EphI��n��,�PV�|A������x�n�[�%$�G�hLϫI��a
�u����^R!d�(N[���uZt!)n`�����c�U{�kk�I�4��xR]��Ҫ���
g)Ae
~xSS��9���R9�����D�Q�N�z9$췞�q���,D�����o媪��3��<q��x�P5W���c;���ZFwEֳ�A�4��6	`�1�!�0���Y[��7IiO=�F���i�&C2D&p"���axP��-�4g�j�ů�FI�8�/�;�7�����}�8;t9��N�Ց8f���WQ���`�;��̚thjˮ~9N�VM��c �:�\�J���{'q��!�U�Z״ca�gv��\�itـ�JI��"ޕ�ICe�X�'��ۉ�	wY����aB �-���$6U%�{ڒ�%?n�U=�e�$�[�U���M�L��;Ax4�^]E�k;��Q�0R7�>O����z&���Z���Ĉv��p�rn3-��<��u���J�X2��(�Š�0kr�\19��E\�h�,��sE��<4�|�CYb�-��2.�4 {%�y��M�q�5lsMëz:��KN�%�Xv����b1�u�]Q��YH+.�Ʌ�� ��RV�Ŏ��Üf���L_����R�o�@A����{��Gĉ�'e$LIa
���ѽ�ǌ�/_1�9��1�s1����1o�JDk�����~pSڃ�r0.%}P���<P�C��GY����R��o�ü�*ܮ����)�J���-�˶���$_����6@ 8;�	`γ���\�hz�y%AJ^b�s)!�1
R�M���o����y0��Kj��y�o�#2�ѐ�!px��0��a�3D�e�݅��mu}��9�s$�u@~��4�
ܠ�ٖ2 �>8��	<��$e|�x+*������ӄ�h�*�s7��4G�E���öDB��ÐӶ���P���
�>X<TGb��FJ��33��b��>w�L�8��8h`a$$&��ᴍ�Vj�ᄐ����[��w]���8�D�"��:b������9�0d�6�m�K�H���)�����Q���s|�l.��~^FwM�q� #�Ym~yCiK���I��<��ܺ�ï�am�\��%�y�N�oGtF�����d��t��lY:�а���{򥒱x�� >%E�m��݂���gN7��9�|F���Wt,�.r��>	����a�f1�R7'<Kn\-{KVB��H�EVI41$�z{�����A��EN�F����0X�`�Y���2�/�F�)��Ų3[m��{�o���p����}���\�&ۇz���{DtI�N.@����xA˅��]�| ��ɮ�=L�n��G�<D�4�G�����Gw��'��LC��E�,O�D�ч=g�+#�VĬ��sdI)zK
&��@���{:�c��#e�H�2B��v���}#��/$S|�Ef�Ș�L���? x�\}";"�3R���5<��l��9u���ù4��Ǉ�:&Ƥ��x7�c�uE{���<[�`u]~������ݑ@���R��|��e �uA2�,+�����'��9,l�Y9�/*S��6��zs|�;�� Z���˯��i��n�Mdm����w{,�~0��2��p�_#���nh�h���.�ᨽ�"��`�5�,�=�����-�ܢ"�
Û�j�x���@1��	S1����w����z��s�F�����������+����3�d**7ɋ���6��,���e ��NI�� S10ā�X�(�ІKBD�Y}N���@�g���{� �Z<�Xv[H=^��}� xD���|nX@alBh"?�H���+p�]����~���F(��CҒ	ǁ��ӽ˗�m�>��`� �7�
3�"BZf(�KqJ�*@� (i��{h	���n+�?dh�HPE5�A8~��p�ᲆ�_X>���[�ޯ�L��ĀK|�)��,��(( ����k��Z^mWqQښzl̓Z�Kp��-wpja���c�H�(1
X��Db�d� ]����Zw��V�ou(h�M	��	$�b���1T�r$2�2�!��e7`"�&8Bm/��tlbv73sD�۾n>�D
2�b%�빥��r[f8�m.��Q����n����u\S113����<�<�Ԁ�g~n�<���V;y��O�ߢ��H�N3k�'����_�;e���e���w��d�#�93!�0��5=S���jի���M�af(�=��\�M�jآ�Y8��	�-µ��ѷ�6WS����,��� M4�r⢧f� ���?�Z#X���+;-.�M0C�Ǿ�~;x�+O� Av�O�q�YGH�A~��2�(]��bʣq^��A~��g�@) ���f;���/�-�ob���)�U2��%sR������2b�����0F�s{ϸ��]`�	��c>���}c>�,����)��ĔJ���a��$��������!/rh��B��?�/�y`(d�,�ۑ��gs�}��b���ظ���ISa�Rػ�����r׷����^^E�� eU s��0ݮ0C�4閘�(B���e􅄁����\�9��rC�C��'���9�6�F��ڟx*Į���=f̩��l4��t�}�)�:�됣��M������+Q�"�R���V"4+I3owfa�he�a��y94�<�^	��.�S%0��� �.��B2JLDG�Os��&��`^���(Cϧ�AG��3:͎�'�A��sM�5�߸�'��4s��u��Ȑ���`�!�5�
)jw��s��,pܝ�qv�{cѨ�OaQ����`�18��]\4^C�bo� 36G�9-��\&[o��#��:�W��*4�)���	Ҟ���ˢt�(��#4'��c����L�c��`��j���&$��w�lR�����3�����M��T�i˷��~�Ao�g�7��E���>�����@����Y�!2)���~A�9��\0��$���r'���&1u�B��Ш@$- cD�U;�0c���݃~h��T䤐��-Y%° �䔑А�]
��5_�]1���h_C�/������x���? *aͣm�eU}nN�ֆ��[qF��
ToW�����۱a`�{uR�W�}����]y�Ց�RNؖO*<���v����`��N��J����T��A�f��������u����8�.��vWf�)�P:�@����d�H�N�[�b�A�N�a����u�J�<��R������I`��]����'`�'�l[,L�Z�'�OMb�����|4ˎJ�_>�d
캬˚WR)��i�G0r��C;~yZʪ��wn�1�ۦ���p��<!wOa�#y����A5��*p��z ��I�F�Y� ���FH�:k�lu g��n<x�N<b������0gZ��J�_�$N�j4�cu�:�\q�n��u���~�J���f��ٱ�����<��'��>{��K^7+#�nݴ�ծV���7�T�8���l6��������zm��G<��:1�+;)�T)�bxy�8`�6bs`9�ߩБ�G������;����'��0�a]�tA4�ݯ��f)A��-m�Q�3��s�k�R��LDZ��^&>{����YO��k��t��ODD!�Ц�9a���|��$��`�&j	>ĥ	�K�%���{�S�_f�OT�gч������8_q*'���N�����%��sM����{��s�:=�����D���K�O�HD��֕�/�6�%��cPyTNs�/�l�� �����A
MB_�����&p�;�Y����غ���~`��px�g�
�'��.�g��~+W�PK��S?a?�{��@`w�XyGV��P�Ia����_��^��J�/=(�Y��><L*J)`=�O�o�ـ����Ta4���W�!��+�q��`c;����A���v���9� O@���7�TC|��ľ���LM�(Q�A���A���P���9_��qz@8M�<=NN�τ�"��r�@���\�X<ț�~���C�<MZ�#sd�E�˄��,����I���T�aۃ���H�����>y[���afh�1*2o�~7�nQ5tue���D��wrc�L�/�$��)}��H�3H�	�'�+�I���s�O��3&GCv"F�0�h��2�Aƪ���ྥ�i���^D4N��$ ��M��olD��UJL��ⷹ,-Q��%ƽ�+�����*
�K������V	�LbX��^V젱#���A�ym!���������&��^�g ���K_WU<e$�{�Z��"n�l�CW��栉�/˲�Lj4��$f�菙.�^;/`7�wK��=1�<�.� r�����������	(�sew� 0: 
 �&��B�"<"YZ�o�
�	JI�o̔|6�G�f˃�o��9�����Aȶi���Y�p�.)��N���L��e�Ek�I`�M�c�0"I@<��8\�l���y�#�w�(y��ĭ�����О·S(A��+�A�� ^��J<�V�{�܆ab�!��N'I�dG�eP�#�#�M�ޚ#%�KP��Dw�!�	��!xJ��â��pa�RwF�Θ�bS�Ul��Q��&�T��Zi��{a����/��D`����hxY"#��9�Ts8Pw(���5����s�����@H(��ӖV���u�MND�@j�i.�2�P�����������+%��lw���6��/��~oq������?W8Ye���\h@:t�B-�둹S�I\t8��D��%�]�YGi�x�Ѽ!��n��C�����BH� �*���0)���D?"}�C�����@�N8�؉�q���u���m�c 8PI, 2 �$WQ(�	� �Ag<N�_��@nK���I��@s���P�2�)���o�9~_���~����锥j�����y���ݻ:����y%�!񲎸���gs��>K�d��#�٧vk�;��CB���u������6�bO�n�奦�NJ��`Reb|����Yw^���E��;?bG
�"�`��`f?`R�e$C����OpA�`/��>��(4������ ��&�\�`f& fl�Y��OJ0��j�Ai=�������m`v&@w�7l��so,�ț�s4Y
0O�:^�{�k��'ps ����(%p1�F����r���l-�� ��?P�$
��ظNQ�ѫ�.���G���ϸ;?ܘ	��B
aT{�� �:7����G�0=�k
��)�����MDB�x����Jó���Ĕs�A����#��Cߔ>��vM���9��<&�1<f�xL���_�_�Q�rEps�\������W���כ)]Kp��R~�%���@6�~���Ϩ�����=G�`RU)y���"AD����*'4c��P�P��.r�M���-&��rD�%)D��qg�u�Y2a@M�"���B����w�֊@��Z��8A編��T�F���G�@@{MZO���6���\r�O�޹/�1
�5{Q�l�V��9;�s�3��\ =�D�����"�9��Y�
��D����B�H��|w���=�8����(����'�����z:9��ظD��pP���b6�_�s<N����9!Oo�2�Zl���DI����5V�|�b���r�'�����
+�(�Î$q\6j��+U�`l9 A���T�GPo�����PP:-������͡�	��3� L�u̲�Gj�Pd_�C2��|�Q)R�
�=K Z���3о�s���.��NXK!�[�R
���))R��q�hW.�,�'�iL�)���%��o��gE�S��fȤ�����$Fca0!��_�QԚ�b�)�cXgdf���8�w)9?Ju�N�^8�EU�6�jT17�>���x��y��3�|x`�/�j��,���SZVԑ��*Z._`E�ڍ?[�G_��BBF@��	7{w�'��0��Y��nq���`��mh0� �<�R;�.:��	j��M�v�G'�[Pf>ev����ޜ�+�q,�TBCtB�+�*�W;$����PD�?A�C3�ܑ�EH�Ȇ�CO���Ɋ�S�i�R��U
�D��p�2�s"�#�X;�!�-��bI�M�J�*�]�NlR@O)�]d�IEIP�V!��B ��X���7�!�Tk5�gm'P����5�h�i����W&͠��#,LW+���U�q\��lJT	�����������{�R0�Gow?�׺Ǵ_B
}$���RD��m�W�siP�8�G�Q愘A�����p�"	��ɳD3��a�w� 5�MfT�F㲄bry H[�'a�0����E�Č���0�M�4���\R�Mf���`���H��3g�	}��	��
�Mp����` N0	g�L ��G�����eK+y�'eL]�K�1����L��G�(<&�{���%�_(AC@� ��.�b������& ��4˻"Q��Kx.� �!F�#Ob�x�T��Q�8�V�xѧ �h�cRyq�1��@Xݯp��lA��'�2�@�y�b:
�_��(�4S�H��0��M�.�x�pB��F���P�3��"��!�AB Ǵ�L�pn��@�/RGπr��c�:E	�> �{.^b��@���6,��f���`��;WϨ�O\}�P�6N�� J�@ yOP����b���fX�.T8����������n.}����Y�����^��x�/$B8 ]�I�C���:�����A0 ��͂/�!����p����D�Q��&��> h`�(y�Z�XK�z�\Ȓ"i�d���e���SGp�l��-Ϥ��:bı���'��{�����F�0Rx�y�J���3懷2!�;s��)�")��Vwܣ��ıb#�
O��lO��������Rƅ�AP$�¨Z� )p�6<�x���
_7����C���.%�S�f.���$�"�f� 䊜rEF��r㜄R�c�����n�ҹ��;a��V+�����ĳ'T�6֏ن�7�ST0�+�������|��1H���(�I���A@sfU:B,B��q �t)_��n��r��y�K�=�Y<�R�]����7��
u��-yb��g�FѢ!����uH25$B, ����q;���xp���6��"^!� ���g�Tp1��T͝�3$22�hcQ
�N�@Ad@���6	!�y���!���q}��8F0�" �Ze�T]]n����^�qǀ��(�ow'�O�Ч���� �S҅������$^.7x���t /NO"!�75Kd�Y(w'$\��>���A����K�,������>Qs�"��.]�f&�2C�8���@�4�Az��{�b���o0,����@7f'!�L�|q,bw�d�:0z ă�x��a�_ �h�2�m�i�l�A&�3k�����r�� �!V=��%\�j3<.n�8x�Y�c�J ��;���p�z!P��n0�4<�4`�����d)��C,	��hn(M�Sf�h԰�ӕ����|�Єw��7OB��++'|+�[J�URȮ�F}y��M��ð�X(y�C�g%Cp"&?�n2�O�����t�Nm��C�2�\r�~�KɕTz2�֗�#��?łQ-3HSر�c���N��wL;�O�������`iѱ�o�6ۚ�7>W��0D!}��I:&�'i�f������5�FF�����s���bA8��s���Ӏ&�������_Z:�6�Y<D(w���2IzuGQ�]UC#Ih�-��X�~�H�ˆ� a�z&��)�M<���/�u
޸���q��_���]Ft��FwD5�����Q2����l��Y��,ϟ j$�a�G��v�~�cՐP�o��I>
�1�.V���eB7��I����I��h��f����q�o�����B��lܒɥ��E,F��E2]M@,���ؕA�����C`8��!f¹B�Є�w��Y#�$F��ːL�v:�0�.k��ȏ��bl�pH�"@��Ut�������)(��(3�i(��h>7Ow�����EN������$�0���pt6q�#à�2D�l��b\�4��:H|�>�n�tq�Bi}�+ބ���lh�0�!;0q��
R �i�C�	��v�BId �Z�0O:�Z7�X����)0R���'�n���@��`\�-DH� �w��X*;"*����q_)�\J�*/����_�L� ��옌K#Ԋ:���S6�n���0T2x��X���	l���G�r:3�j+sRvCU�xE�rd�a�}�C.�;814ATB���'��9�^!�XF��4AfqR�4�l;Cb�m4)L�u^�	��x�t����@劔�H�D��|(��,<�z�K��n3U�e��N-��|3�r2y�@p�B Xy�2^d� H��,}�_��6!�q�C{i�hHύ����-@[7��w	���$[���1��p�:1!��iN�L=`{�4dهi}��S�:��'m�4�dB�h7��0�;��B'���2�N.�9�`�<����T�n�X�T��RXӛ�dc�@����~{��������≊�^�>_6�Źֽ)�{���v@�m�6+�H�$d�pzǄ(�7��������yr8 �x��p���0ڞD�o7p)��C��XaM4�I�wB��;|5�1 �5;��d�􆴇jx��jU�3�&�`��HDNb�:t^��a=M�I�ZL���N�Xa��%�j��ֵ�	'���':�
�O�F*�z>��C (҆���s����s0 �8c�I:�D8L�����|�0i~�:0bd	])�v��k�.?R�g���h6��;+Z�2�K���3A�F�k� >�2�����������x�u��}b�MɃ��ڍa�#EJ-��	>�V���)qC�}b�X�C@Dz��N�ṿ F�&t�>���8���:@0�G��>=q����1R\��O��y&	y	��5d��RG�hr#�$�=�՝�6H�e�X�:u�Nm�1k*�Յ�;��Д�����R�D�!R�9؀�C5j���9�M4��]S�r3�.@|�'�Qy�2>q����!�,J뢈���i���Atb�q�w�����ϕ���]�Ve ���r�62!bR�\����s��$�����	�,n��a���&�t@%z�8�f��3\�� ����"��$Y��;w��>���&�� d��$��Ȩ��P�'�T�/o��ꔬD�>iG"�M,T���.�BEX0��e�����k��+�����$��>�9ݖ�UV���2������o�j\��Gк�D�'h�w�]`@܎�,��Z�DF0<*�ٛL\��������e��J��N4q���:��t[$�Zд��{{�� *@-i�9�+\�靂�'F"��e�ɶA��l�ա�*I�%���/N1
�*�d�V3L@@0$��X��e$�5�2�8��42�SDK�1R�
�kK�adU�$�}�Pw^b��^ra�C�+2P�h+LQ`nĊa
�Q��Uo���2��U�.	B)`�ļ_U��`���vOA�?��K4+JQJ&�@8�@��g�x� �lB�lC���Jff�DP��4����@���8!�pڨYC���5���X-vQ�ZOT0�D��h�=�jc�`w�� ��Ո�JpLP�\8!"H�"�ⲑ, ��137s���pN��˾��A��^�Q�XNtw_!�x��B<�稽Bt�u�Q���T"�S����"��B&��؁"Of��H�M�2�I��莚��܈:ӕ/p8��Sr8Z����@i@:?�Q�~Grs���5d�~sj^�p�0�^Pg��ݘB��
���@�
��z4T��������zB�,���a�ϥ��
�C����Z;��y����Og^n�so�/_�	��[j:�����%>�h�/]Y	�5��B:m�������	�7�"�W�fŃ��P{��=0ǲ�\� �]�q�
�6$6(�������-�zX$)!�y�(O�Oz���@08��%D�<�k��!�R5�'���'c��PH]^��#P�P���پC�v�TqH�8��5}���ffぐ+Iߗ��R>a]��ĉ��]?^ ��
�)�P
y�r�KE.��-������z\�^�I ӽ��s���(�c�Ό��Ը���X�c"�ЙW�{�׋XF�R�����MĚ���;��ƅէNX*����U�7z�T5������PR��ڂ"|�U�1T-O�K���V@A�1�u\N�����ŭό�ɤJc_h>�11!���4UR�xw��*�� �_�`Rj�ɕ%vާ�|1єu�% �u�^�� ����w����*BR��������eF?��K��u\Z/ <�����eۚ�H��m��=1<�-!iH��,�",1�D�����>���
�E�?|o����� ⪀$�� �����C��.Ffd�iS��?���oäͲL�����>���EUT���?{g`����&	ȭ�P�(�FDp�S��Wʺ�\��q6 $@9��rE8P��i