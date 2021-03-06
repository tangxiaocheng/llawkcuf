#!/bin/bash
skip=44

tab='	'
nl='
'
IFS=" $tab$nl"

umask=`umask`
umask 77

gztmpdir=
trap 'res=$?
  test -n "$gztmpdir" && rm -fr "$gztmpdir"
  (exit $res); exit $res
' 0 1 2 3 5 10 13 15

if type mktemp >/dev/null 2>&1; then
  gztmpdir=`mktemp -dt`
else
  gztmpdir=/tmp/gztmp$$; mkdir $gztmpdir
fi || { (exit 127); exit 127; }

gztmp=$gztmpdir/$0
case $0 in
-* | */*'
') mkdir -p "$gztmp" && rm -r "$gztmp";;
*/*) gztmp=$gztmpdir/`basename "$0"`;;
esac || { (exit 127); exit 127; }

case `echo X | tail -n +1 2>/dev/null` in
X) tail_n=-n;;
*) tail_n=;;
esac
if tail $tail_n +$skip <"$0" | gzip -cd > "$gztmp"; then
  umask $umask
  chmod 700 "$gztmp"
  (sleep 5; rm -fr "$gztmpdir") 2>/dev/null &
  "$gztmp" ${1+"$@"}; res=$?
else
  echo >&2 "Cannot decompress $0"
  (exit 127); res=127
fi; exit $res
���kVff1q.sh �U]OA}fŠ	ML��.PiIH���7��d;;�N�ݩ3�,���|*��LD�ȃ��� ��t���_p���-7~M�l�̽wΞs���a�%6�y媂Q��X����%��\ڔ�G��rk{��<w�f�^;h�:ln~�'/�����b� @Q,�Ʈn+��3}��RY����^�K�6굧��� ��b����9�j�p:���������M3� �h
J-{>��?��
��^�xN����j���	 &��b ΠE��rt��!؅�Q$�����d9���A]NQ���8��<���-�(����"P�&qd�1�`��[�@Q�$9��T�=-� %�x��f���M ��4��˚TL��r������H��`�y���I���氇������IA%��>�sG���X��.���t	�VIo{�)���}��CC�KeqA�,ʥ���;~����6�]�T�$�pxp~GG=�3��K�<"�>f�P;�:��Z"9�Hkc*Φ���D*�����tH3�I|�д��R��L�hG�%�X2Fg��y&��n�� b{ۖ��2�6"�o0�'#�0��[�.D���V�Ӵ�Dz<����T�Eg�C�u�x��|��py	�{�]���U�m�Y��<z�+�A�^�.�0�(���}�މ��T ���������/�+��t]	��发࿡3L���t�y�.��{���~c���O�[����^x��*��{�˕�����7�r���L௱��6+nx�]��	{��*��֗js}_�����Y�ɡ,?�{�r�Z?�Шl�Z�~r�\��I�-�p*�����  