FasdUAS 1.101.10   ��   ��    k             l     ��  ��    � � Purpose of this program: enqueue PDF, check latest version in legacy editor, or look up query_ptool for a given colid in Textbook-Dev only     � 	 	   P u r p o s e   o f   t h i s   p r o g r a m :   e n q u e u e   P D F ,   c h e c k   l a t e s t   v e r s i o n   i n   l e g a c y   e d i t o r ,   o r   l o o k   u p   q u e r y _ p t o o l   f o r   a   g i v e n   c o l i d   i n   T e x t b o o k - D e v   o n l y   
  
 l     ��  ��      v1.1 - 3/4/16     �      v 1 . 1   -   3 / 4 / 1 6      l     ��  ��      INITIALIZE VARIABLES     �   *   I N I T I A L I Z E   V A R I A B L E S      p         �� �� 0 collectionid collectionID  �� �� 0 	cidlength    �� �� 0 validid validID  �� �� 0 statusbutton    ������ 0 statusid statusID��        l     ����  r         m     ��
�� boovfals  o      ���� 0 validid validID��  ��       !   l    "���� " r     # $ # m    ����  $ o      ���� 0 serverid serverID��  ��   !  % & % l     ��������  ��  ��   &  ' ( ' l     �� ) *��   )  
 FUNCTIONS    * � + +    F U N C T I O N S (  , - , l     �� . /��   .   User input    / � 0 0    U s e r   i n p u t -  1 2 1 i      3 4 3 I      �������� 0 inputcid inputCID��  ��   4 k     M 5 5  6 7 6 r      8 9 8 I    �� : ;
�� .sysodlogaskr        TEXT : m      < < � = = � T e x t b o o k - D e v   M e g a T o o l   ( t h e r e   w i l l   b e   n o   c o n f i r m a t i o n s ! ) :   
 	 
 	 E n t e r   c o l l e c t i o n   I D   a n d   c h o o s e   a c t i o n   b e l o w : ; �� > ?
�� 
dtxt > m     @ @ � A A ^ e i t h e r   c o l 1 2 3 4 5   o r   1 2 3 4 5 ;   o r   m 1 2 3 4 5   ( v i e w   o n l y ) ? �� B��
�� 
btns B J    	 C C  D E D m     F F � G G  E n q u e u e   P D F E  H I H m     J J � K K  q u e r y _ p t o o l I  L�� L m     M M � N N : V i e w   l a t e s t   v e r s i o n   i n   e d i t o r��  ��   9 o      ���� 0 	userinput   7  O P O l   ��������  ��  ��   P  Q R Q r     S T S n     U V U 1    ��
�� 
ttxt V o    ���� 0 	userinput   T o      ���� 0 collectionid collectionID R  W X W r     Y Z Y n     [ \ [ 1    ��
�� 
bhit \ o    ���� 0 	userinput   Z o      ���� 0 statusbutton   X  ] ^ ] Z    C _ ` a�� _ =     b c b o    ���� 0 statusbutton   c m     d d � e e  E n q u e u e   P D F ` r   " % f g f m   " #����  g o      ���� 0 statusid statusID a  h i h =   ( + j k j o   ( )���� 0 statusbutton   k m   ) * l l � m m  q u e r y _ p t o o l i  n o n r   . 1 p q p m   . /����  q o      ���� 0 statusid statusID o  r s r =   4 9 t u t o   4 5���� 0 statusbutton   u m   5 8 v v � w w : V i e w   l a t e s t   v e r s i o n   i n   e d i t o r s  x�� x r   < ? y z y m   < =����  z o      ���� 0 statusid statusID��  ��   ^  {�� { r   D M | } | n   D I ~  ~ 1   E I��
�� 
leng  o   D E���� 0 collectionid collectionID } o      ���� 0 	cidlength  ��   2  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �    Error check of user input    � � � � 4   E r r o r   c h e c k   o f   u s e r   i n p u t �  � � � i     � � � I      �������� 0 lengthcheck  ��  ��   � Z     + � � � � � G      � � � =      � � � o     ���� 0 	cidlength   � m    ����  � =    	 � � � o    ���� 0 	cidlength   � m    ����  � r     � � � m    ��
�� boovtrue � o      ���� 0 validid validID �  � � � F     � � � =     � � � o    ���� 0 	cidlength   � m    ����  � C     � � � o    ���� 0 collectionid collectionID � m     � � � � �  m �  ��� � r   " % � � � m   " #��
�� boovtrue � o      ���� 0 validid validID��   � r   ( + � � � m   ( )��
�� boovfals � o      ���� 0 validid validID �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 7 1 Main function, runs if CID is the correct length    � � � � b   M a i n   f u n c t i o n ,   r u n s   i f   C I D   i s   t h e   c o r r e c t   l e n g t h �  � � � i     � � � I      �������� 0 statusaction  ��  ��   � k     � � �  � � � l     �� � ���   �  enqueue    � � � �  e n q u e u e �  � � � Z     � � � ��� � =     � � � o     ���� 0 statusid statusID � m    ����  � k    1 � �  � � � Z    / � � � � � C    	 � � � o    ���� 0 collectionid collectionID � m     � � � � �  c o l � I   �� ���
�� .GURLGURLnull��� ��� TEXT � b     � � � b     � � � m     � � � � � V h t t p : / / l e g a c y - t e x t b o o k - d e v . c n x . o r g / c o n t e n t / � o    ���� 0 collectionid collectionID � m     � � � � �  / l a t e s t / e n q u e u e��   �  � � � C     � � � o    ���� 0 collectionid collectionID � m     � � � � �  m �  ��� � I   #�� ���
�� .sysodlogaskr        TEXT � m     � � � � � , C a n ' t   e n q u e u e   a   m o d u l e��  ��   � I  & /�� ���
�� .GURLGURLnull��� ��� TEXT � b   & + � � � b   & ) � � � m   & ' � � � � � \ h t t p : / / l e g a c y - t e x t b o o k - d e v . c n x . o r g / c o n t e n t / c o l � o   ' (���� 0 collectionid collectionID � m   ) * � � � � �  / l a t e s t / e n q u e u e��   �  � � � l  0 0��������  ��  ��   �  ��� � l  0 0�� � ���   �   query_ptool    � � � �    q u e r y _ p t o o l��   �  � � � =  4 7 � � � o   4 5���� 0 statusid statusID � m   5 6����  �  � � � k   : i � �  � � � Z   : g � � � � � C   : = � � � o   : ;���� 0 collectionid collectionID � m   ; < � � � � �  c o l � I  @ I�� ���
�� .GURLGURLnull��� ��� TEXT � b   @ E � � � b   @ C �  � m   @ A � V h t t p : / / l e g a c y - t e x t b o o k - d e v . c n x . o r g / c o n t e n t /  o   A B���� 0 collectionid collectionID � m   C D � & / l a t e s t / q u e r y _ p t o o l��   �  C   L O o   L M���� 0 collectionid collectionID m   M N		 �

  m �� I  R W����
�� .sysodlogaskr        TEXT m   R S � 4 C a n ' t   q u e r y _ p t o o l   a   m o d u l e��  ��   � I  Z g����
�� .GURLGURLnull��� ��� TEXT b   Z c b   Z _ m   Z ] � \ h t t p : / / l e g a c y - t e x t b o o k - d e v . c n x . o r g / c o n t e n t / c o l o   ] ^���� 0 collectionid collectionID m   _ b � & / l a t e s t / q u e r y _ p t o o l��   �  l  h h��������  ��  ��   �� l  h h����     view latest    �    v i e w   l a t e s t��   �  =  l o !  o   l m���� 0 statusid statusID! m   m n����  "��" Z   r �#$%&# C   r w'(' o   r s���� 0 collectionid collectionID( m   s v)) �**  c o l$ I  z ���+��
�� .GURLGURLnull��� ��� TEXT+ b   z �,-, b   z ./. m   z }00 �11 V h t t p : / / l e g a c y - t e x t b o o k - d e v . c n x . o r g / c o n t e n t // o   } ~�� 0 collectionid collectionID- m    �22 �33  / l a t e s t��  % 454 C   � �676 o   � ��~�~ 0 collectionid collectionID7 m   � �88 �99  m5 :�}: I  � ��|;�{
�| .GURLGURLnull��� ��� TEXT; b   � �<=< b   � �>?> m   � �@@ �AA V h t t p : / / l e g a c y - t e x t b o o k - d e v . c n x . o r g / c o n t e n t /? o   � ��z�z 0 collectionid collectionID= m   � �BB �CC  / l a t e s t�{  �}  & I  � ��yD�x
�y .GURLGURLnull��� ��� TEXTD b   � �EFE b   � �GHG m   � �II �JJ \ h t t p : / / l e g a c y - t e x t b o o k - d e v . c n x . o r g / c o n t e n t / c o lH o   � ��w�w 0 collectionid collectionIDF m   � �KK �LL  / l a t e s t�x  ��  ��   � M�vM l  � ��u�t�s�u  �t  �s  �v   � NON l     �r�q�p�r  �q  �p  O PQP l     �o�n�m�o  �n  �m  Q RSR l     �lTU�l  T 0 * CALL FUNCTIONS, with error-checking logic   U �VV T   C A L L   F U N C T I O N S ,   w i t h   e r r o r - c h e c k i n g   l o g i cS WXW l   ;Y�k�jY W    ;Z[Z k    6\\ ]^] I    �i�h�g�i 0 inputcid inputCID�h  �g  ^ _`_ I    �f�e�d�f 0 lengthcheck  �e  �d  ` a�ca Z    6bc�bdb =   efe o    �a�a 0 validid validIDf m    �`
�` boovfalsc I  " .�_gh
�_ .sysodlogaskr        TEXTg m   " #ii �jj l C o l l e c t i o n   I D   f o r m a t t e d   i n c o r r e c t l y ,   c l i c k   O K   t o   r e t r yh �^kl
�^ 
btnsk J   $ (mm non m   $ %pp �qq  C a n c e lo r�]r m   % &ss �tt  O K�]  l �\u�[
�\ 
dfltu m   ) *vv �ww  O K�[  �b  d I   1 6�Z�Y�X�Z 0 statusaction  �Y  �X  �c  [ =   xyx o    �W�W 0 validid validIDy m    �V
�V boovtrue�k  �j  X z�Uz l     �T�S�R�T  �S  �R  �U       �Q{|}~�P�O���N�M�L�K�J�I�H�G�Q  { �F�E�D�C�B�A�@�?�>�=�<�;�:�9�8�7�F 0 inputcid inputCID�E 0 lengthcheck  �D 0 statusaction  
�C .aevtoappnull  �   � ****�B 0 validid validID�A 0 serverid serverID�@ 0 collectionid collectionID�? 0 statusbutton  �> 0 statusid statusID�= 0 	cidlength  �<  �;  �:  �9  �8  �7  | �6 4�5�4���3�6 0 inputcid inputCID�5  �4  � �2�2 0 	userinput  �  <�1 @�0 F J M�/�.�-�,�+�* d�) l v�(�'
�1 
dtxt
�0 
btns�/ 
�. .sysodlogaskr        TEXT
�- 
ttxt�, 0 collectionid collectionID
�+ 
bhit�* 0 statusbutton  �) 0 statusid statusID
�( 
leng�' 0 	cidlength  �3 N�������mv� E�O��,E�O��,E�O��  kE�Y ��  lE�Y �a   mE�Y hO�a ,E` } �& ��%�$���#�& 0 lengthcheck  �%  �$  �  � �"�!� ���� ��" 0 	cidlength  �! �  
� 
bool� 0 validid validID� � 0 collectionid collectionID�# ,�� 
 �� �& eE�Y �� 	 ���& eE�Y fE�~ � ������� 0 statusaction  �  �  �  � �� � � �� � �� � � �	)028@BIK� 0 statusid statusID� 0 collectionid collectionID
� .GURLGURLnull��� ��� TEXT
� .sysodlogaskr        TEXT� ��k  0�� ��%�%j Y �� 
�j Y ��%�%j OPY ��l  4�� ��%�%j Y �� 
�j Y a �%a %j OPY I�m  B�a  a �%a %j Y '�a  a �%a %j Y a �%a %j Y hOP �������
� .aevtoappnull  �   � ****� k     ;��  ��   �� W��  �  �  �  � ����i�
ps�	v���� 0 validid validID� 0 serverid serverID� 0 inputcid inputCID� 0 lengthcheck  
�
 
btns
�	 
dflt� 
� .sysodlogaskr        TEXT� 0 statusaction  � <fE�OkE�O 2h�e *j+ O*j+ O�f  ����lv��� Y *j+ [OY��
�P boovtrue�O � ���  m 1 2 3 4 5� ���  E n q u e u e   P D F�N �M �L  �K  �J  �I  �H  �G  ascr  ��ޭ