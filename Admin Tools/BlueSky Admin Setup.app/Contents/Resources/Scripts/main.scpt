FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l      �� 	 
��   	QKCopyright 2016-2017 SolarWinds Worldwide, LLC

Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.     
 �  � C o p y r i g h t   2 0 1 6 - 2 0 1 7   S o l a r W i n d s   W o r l d w i d e ,   L L C 
 
 L i c e n s e d   u n d e r   t h e   A p a c h e   L i c e n s e ,   V e r s i o n   2 . 0   ( t h e   " L i c e n s e " ) ; 
     y o u   m a y   n o t   u s e   t h i s   f i l e   e x c e p t   i n   c o m p l i a n c e   w i t h   t h e   L i c e n s e . 
     Y o u   m a y   o b t a i n   a   c o p y   o f   t h e   L i c e n s e   a t 
 
             h t t p : / / w w w . a p a c h e . o r g / l i c e n s e s / L I C E N S E - 2 . 0 
 
     U n l e s s   r e q u i r e d   b y   a p p l i c a b l e   l a w   o r   a g r e e d   t o   i n   w r i t i n g ,   s o f t w a r e 
     d i s t r i b u t e d   u n d e r   t h e   L i c e n s e   i s   d i s t r i b u t e d   o n   a n   " A S   I S "   B A S I S , 
     W I T H O U T   W A R R A N T I E S   O R   C O N D I T I O N S   O F   A N Y   K I N D ,   e i t h e r   e x p r e s s   o r   i m p l i e d . 
     S e e   t h e   L i c e n s e   f o r   t h e   s p e c i f i c   l a n g u a g e   g o v e r n i n g   p e r m i s s i o n s   a n d 
     l i m i t a t i o n s   u n d e r   t h e   L i c e n s e .        l     ��������  ��  ��        l     ��  ��    O I This script readies and uploads a public key to the server for admin use     �   �   T h i s   s c r i p t   r e a d i e s   a n d   u p l o a d s   a   p u b l i c   k e y   t o   t h e   s e r v e r   f o r   a d m i n   u s e      l     ��������  ��  ��        l     ��  ��    + % Admin Tools require 10.11 and higher     �   J   A d m i n   T o o l s   r e q u i r e   1 0 . 1 1   a n d   h i g h e r      l     ��������  ��  ��        l     ��  ��    K Eset serverLoc to path to resource "server.txt" in bundle (path to me)     �     � s e t   s e r v e r L o c   t o   p a t h   t o   r e s o u r c e   " s e r v e r . t x t "   i n   b u n d l e   ( p a t h   t o   m e )   ! " ! l     �� # $��   # . (set serverPos to POSIX path of serverLoc    $ � % % P s e t   s e r v e r P o s   t o   P O S I X   p a t h   o f   s e r v e r L o c "  & ' & l     �� ( )��   ( M Gset serverAddr to do shell script "cat " & the quoted form of serverPos    ) � * * � s e t   s e r v e r A d d r   t o   d o   s h e l l   s c r i p t   " c a t   "   &   t h e   q u o t e d   f o r m   o f   s e r v e r P o s '  + , + l     - . / - r      0 1 0 m      2 2 � 3 3   1 o      ���� 0 
serveraddr 
serverAddr .    put your server FQDN here    / � 4 4 4   p u t   y o u r   s e r v e r   F Q D N   h e r e ,  5 6 5 l     ��������  ��  ��   6  7 8 7 l    9���� 9 r     : ; : I   �� < =
�� .sysorpthalis        TEXT < m     > > � ? ?   b l u e s k y a d m i n . p u b = �� @��
�� 
in B @ l    A���� A I   �� B��
�� .earsffdralis        afdr B  f    ��  ��  ��  ��   ; o      ���� 0 adminloc adminLoc��  ��   8  C D C l    E���� E r     F G F n     H I H 1    ��
�� 
psxp I o    ���� 0 adminloc adminLoc G o      ���� 0 adminpos adminPos��  ��   D  J K J l     �� L M��   L _ Y or specify a different location for the file, get it from the client-files on the server    M � N N �   o r   s p e c i f y   a   d i f f e r e n t   l o c a t i o n   f o r   t h e   f i l e ,   g e t   i t   f r o m   t h e   c l i e n t - f i l e s   o n   t h e   s e r v e r K  O P O l     ��������  ��  ��   P  Q R Q l   ' S���� S I   '�� T U
�� .sysodlogaskr        TEXT T m     V V � W W p S e t t i n g   u p   t h i s   M a c   O R   c o p y - p a s t i n g   k e y s   f r o m   e l s e w h e r e ? U �� X Y
�� 
btns X J     Z Z  [ \ [ m     ] ] � ^ ^  C o p y - P a s t e \  _ ` _ m     a a � b b  T h i s   M a c `  c�� c m     d d � e e  C a n c e l��   Y �� f��
�� 
dflt f m     ! g g � h h  T h i s   M a c��  ��  ��   R  i j i l  ( / k���� k r   ( / l m l l  ( + n���� n 1   ( +��
�� 
rslt��  ��   m o      ���� 0 mychoice myChoice��  ��   j  o p o l     ��������  ��  ��   p  q r q l  0� s���� s Z   0� t u v w t =  0 < x y x o   0 3���� 0 mychoice myChoice y K   3 ; z z �� {��
�� 
bhit { m   6 9 | | � } }  T h i s   M a c��   u k   ?C ~ ~   �  l  ? ?��������  ��  ��   �  � � � r   ? s � � � I  ? o�� � �
�� .sysodlogaskr        TEXT � l 	 ? B ����� � m   ? B � � � � � � P l e a s e   e n t e r   a   p a s s w o r d   t o   p r o t e c t   t h e   k e y   -   m a k e   i t   o b n o x i o u s l y   g o o d ,   i t   w i l l   b e   s t o r e d   i n   y o u r   l o g i n   K e y c h a i n :��  ��   � �� � �
�� 
appr � l 	 E H ����� � m   E H � � � � �  P a s s w o r d��  ��   � �� � �
�� 
disp � l 
 K N ����� � m   K N��
�� stic   ��  ��   � �� � �
�� 
dtxt � l 	 Q T ����� � m   Q T � � � � �  ��  ��   � �� � �
�� 
btns � J   U ] � �  � � � m   U X � � � � �  C a n c e l �  ��� � m   X [ � � � � �  O K��   � �� � �
�� 
dflt � l 
 ^ _ ����� � m   ^ _���� ��  ��   � �� � �
�� 
givu � l 
 b e ����� � m   b e����'��  ��   � �� ���
�� 
htxt � m   h i��
�� boovtrue��   � o      ���� 0 
passdialog 
passDialog �  � � � r   t  � � � l  t { ����� � n   t { � � � 1   w {��
�� 
ttxt � o   t w���� 0 
passdialog 
passDialog��  ��   � o      ���� 0 my_password   �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � m   � � � � � � �  w h o a m i��   � o      ���� 0 username userName �  � � � r   � � � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � m   � � � � � � �  h o s t n a m e��   � o      ���� 0 hostname hostName �  � � � l  � ��� � ���   � @ :set optName to do shell script "scutil --get ComputerName"    � � � � t s e t   o p t N a m e   t o   d o   s h e l l   s c r i p t   " s c u t i l   - - g e t   C o m p u t e r N a m e " �  � � � r   � � � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � m   � � � � � � �  d a t e   + % s��   � o      ���� 0 	epochtime 	epochTime �  � � � l  � ���������  ��  ��   �  � � � Q   � � � ��� � k   � � � �  � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � m   � � � � � � � 4 r m   - f   ~ / . s s h / b l u e s k y _ a d m i n��   �  ��� � I  � ��� ���
�� .sysoexecTEXT���     TEXT � m   � � � � � � � < r m   - f   ~ / . s s h / b l u e s k y _ a d m i n . p u b��  ��   � R      ������
�� .ascrerr ****      � ****��  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � 5 / TODO: this might screw up 10.11, needs testing    � � � � ^   T O D O :   t h i s   m i g h t   s c r e w   u p   1 0 . 1 1 ,   n e e d s   t e s t i n g �  � � � Q   � � � ��� � k   � � � �  � � � r   � � � � � I  � �� ��~
� .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � m   � � � � � � �  g r e p   ' H o s t   � o   � ��}�} 0 
serveraddr 
serverAddr � m   � � � � � � � . '   ~ / . s s h / c o n f i g ;   e x i t   0�~   � o      �|�| 0 	hostentry 	hostEntry �  ��{ � Z   � � � ��z�y � =  � � � � � o   � ��x�x 0 	hostentry 	hostEntry � m   � � � � � � �   � I  � ��w ��v
�w .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � m   � �   �  e c h o   ' H o s t   � o   � ��u�u 0 
serveraddr 
serverAddr � m   � � � L 
         U s e K e y c h a i n   y e s '   > >   ~ / . s s h / c o n f i g�v  �z  �y  �{   � R      �t�s�r
�t .ascrerr ****      � ****�s  �r  ��   �  l  � ��q�p�o�q  �p  �o    I  �%�n�m
�n .sysoexecTEXT���     TEXT b   �!	
	 b   � b   � b   � b   � b   � b   �	 b   � b   � m   � � � : s s h - k e y g e n   - q   - t   e d 2 5 5 1 9   - N   ' o   � �l�l 0 my_password   m   � < '   - f   ~ / . s s h / b l u e s k y _ a d m i n   - C   " m   �      u p l o a d e d @ o  	�k�k 0 	epochtime 	epochTime m  !! �""    o  �j�j 0 username userName m  ## �$$  @ o  �i�i 0 hostname hostName
 m   %% �&&  "�m   '(' l &&�h�g�f�h  �g  �f  ( )*) r  &A+,+ I &=�e-�d
�e .sysoexecTEXT���     TEXT- b  &9./. b  &5010 b  &3232 b  &/454 m  &)66 �77 � p u b K e y = ` o p e n s s l   s m i m e   - e n c r y p t   - a e s 2 5 6   - i n   ~ / . s s h / b l u e s k y _ a d m i n . p u b   - o u t f o r m   P E M  5 l ).8�c�b8 n  ).9:9 1  *.�a
�a 
strq: o  )*�`�` 0 adminpos adminPos�c  �b  3 m  /2;; �<< � ` ; c u r l   - s   - S   - m   6 0   - 1   - - r e t r y   4   - X   P O S T   - - d a t a - u r l e n c o d e   " n e w p u b = $ p u b K e y "   h t t p s : / /1 o  34�_�_ 0 
serveraddr 
serverAddr/ m  58== �>> , / c g i - b i n / c o l l e c t o r . p h p�d  , o      �^�^ 0 uploadresult uploadResult* ?�]? l BB�\�[�Z�\  �[  �Z  �]   v @A@ = FRBCB o  FI�Y�Y 0 mychoice myChoiceC K  IQDD �XE�W
�X 
bhitE m  LOFF �GG  C o p y - P a s t e�W  A H�VH k  U�II JKJ l UU�U�T�S�U  �T  �S  K LML r  UfNON I Ub�RPQ
�R .sysodlogaskr        TEXTP m  UXRR �SS @ P l e a s e   c o p y   t h e   p u b l i c   k e y   h e r e :Q �QT�P
�Q 
dtxtT m  [^UU �VV  �P  O o      �O�O 0 
dialogtemp 
dialogTempM WXW r  grYZY l gn[�N�M[ n  gn\]\ 1  jn�L
�L 
ttxt] o  gj�K�K 0 
dialogtemp 
dialogTemp�N  �M  Z o      �J�J 0 iospub iOSpubX ^_^ r  s�`a` I s��Ibc
�I .sysodlogaskr        TEXTb m  svdd �ee � P l e a s e   e n t e r   a   u n i q u e   d e s c r i p t i o n   f o r   t h i s   k e y .   W e   w i l l   o v e r w r i t e   k e y s   w i t h   t h e   s a m e   n a m e .c �Hf�G
�H 
dtxtf m  y|gg �hh * C o p i e d   f r o m   s o m e w h e r e�G  a o      �F�F 0 dialog2temp dialog2Temp_ iji r  ��klk l ��m�E�Dm n  ��non 1  ���C
�C 
ttxto o  ���B�B 0 dialog2temp dialog2Temp�E  �D  l o      �A�A 0 optname optNamej pqp r  ��rsr I ���@t�?
�@ .sysoexecTEXT���     TEXTt b  ��uvu b  ��wxw m  ��yy �zz 
 e c h o  x l ��{�>�={ n  ��|}| 1  ���<
�< 
strq} o  ���;�; 0 optname optName�>  �=  v m  ��~~ � &   |   t r   [ : b l a n k : ]   ' _ '�?  s o      �:�: 0 optname optNameq ��� r  ����� I ���9��8
�9 .sysoexecTEXT���     TEXT� m  ���� ���  d a t e   + % s�8  � o      �7�7 0 	epochtime 	epochTime� ��� l ���6�5�4�6  �5  �4  � ��� l ���3�2�1�3  �2  �1  � ��� r  ����� b  ����� b  ����� b  ����� b  ����� o  ���0�0 0 iospub iOSpub� m  ���� ���    p a s t e d @� o  ���/�/ 0 	epochtime 	epochTime� m  ���� ���   � o  ���.�. 0 optname optName� o      �-�- 0 iosupl iOSupl� ��� l ���,�+�*�,  �+  �*  � ��� r  ����� I ���)��(
�) .sysoexecTEXT���     TEXT� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ���  p u b K e y = ` e c h o   '� o  ���'�' 0 iosupl iOSupl� m  ���� ��� ` '   |   o p e n s s l   s m i m e   - e n c r y p t   - a e s 2 5 6   - o u t f o r m   P E M  � l ����&�%� n  ����� 1  ���$
�$ 
strq� o  ���#�# 0 adminpos adminPos�&  �%  � m  ���� ��� � ` ; c u r l   - s   - S   - m   6 0   - 1   - - r e t r y   4   - X   P O S T   - - d a t a - u r l e n c o d e   " n e w p u b = $ p u b K e y "   h t t p s : / /� o  ���"�" 0 
serveraddr 
serverAddr� m  ���� ��� , / c g i - b i n / c o l l e c t o r . p h p�(  � o      �!�! 0 uploadresult uploadResult� �� � l ������  �  �  �   �V   w L  ���� m  ����  ��  ��   r ��� l     ����  �  �  � ��� l �?���� Z  �?����� E  ����� o  ���� 0 uploadresult uploadResult� m  ���� ���  I n s t a l l e d� I ���
� .sysodlogaskr        TEXT� m  �� ���   Y o u   a r e   a l l   s e t !� ���
� 
btns� m  	�� ���  W o o h o o !� ���
� 
dflt� m  
�� �  � ��� E  ��� o  �� 0 uploadresult uploadResult� m  �� ���  U p g r a d e� ��� I -���
� .sysodlogaskr        TEXT� m  !�� ��� d P l e a s e   r e - d o w n l o a d   A d m i n   T o o l s   a n d   t r y   t h i s   a g a i n .� ���
� 
btns� m  "%�� ���  O k a y� ���

� 
dflt� m  &'�	�	 �
  �  � I 0?���
� .sysodlogaskr        TEXT� m  03�� ��� N S o m e t h i n g   w e n t   w r o n g .   P l e a s e   t r y   a g a i n .� ���
� 
btns� m  47�� ���  W e a k� ���
� 
dflt� m  89�� �  �  �  �       ����  � �
� .aevtoappnull  �   � ****� ��� ������
� .aevtoappnull  �   � ****� k    ?��  +��  7��  C��  Q��  i��  q�� �����  �   ��  �  � ] 2�� >������������ V�� ] a d�� g���������� | ��� ������� � � ��������������� ����� ��� ��� � ����� � ��� � !#%6��;=��FRU����dg����y~������������������� 0 
serveraddr 
serverAddr
�� 
in B
�� .earsffdralis        afdr
�� .sysorpthalis        TEXT�� 0 adminloc adminLoc
�� 
psxp�� 0 adminpos adminPos
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� 
rslt�� 0 mychoice myChoice
�� 
bhit
�� 
appr
�� 
disp
�� stic   
�� 
dtxt
�� 
givu��'
�� 
htxt�� �� 0 
passdialog 
passDialog
�� 
ttxt�� 0 my_password  
�� .sysoexecTEXT���     TEXT�� 0 username userName�� 0 hostname hostName�� 0 	epochtime 	epochTime��  ��  �� 0 	hostentry 	hostEntry
�� 
strq�� 0 uploadresult uploadResult�� 0 
dialogtemp 
dialogTemp�� 0 iospub iOSpub�� 0 dialog2temp dialog2Temp�� 0 optname optName�� 0 iosupl iOSupl��@�E�O��)j l E�O��,E�O�����mv��a  O_ E` O_ a a l 	a a a a a a a �a a lv�la a  a !ea " E` #O_ #a $,E` %Oa &j 'E` (Oa )j 'E` *Oa +j 'E` ,O a -j 'Oa .j 'W X / 0hO 2a 1�%a 2%j 'E` 3O_ 3a 4  a 5�%a 6%j 'Y hW X / 0hOa 7_ %%a 8%a 9%_ ,%a :%_ (%a ;%_ *%a <%j 'Oa =�a >,%a ?%�%a @%j 'E` AOPY �_ a a Bl  �a Ca a Dl E` EO_ Ea $,E` FOa Ga a Hl E` IO_ Ia $,E` JOa K_ Ja >,%a L%j 'E` JOa Mj 'E` ,O_ Fa N%_ ,%a O%_ J%E` POa Q_ P%a R%�a >,%a S%�%a T%j 'E` AOPY jO_ Aa U a V�a W�ka  Y -_ Aa X a Y�a Z�ka  Y a [�a \�ka   ascr  ��ޭ