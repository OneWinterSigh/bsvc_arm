echo Instalando bsvc... Debes ejecutar este script como root o con sudo.

mkdir -p /usr/local/bin
cp bsvc /usr/local/bin/bsvc
cp 68kasm /usr/local/bin/68kasm
cp xtermpipe /usr/local/bin/xtermpipe
cp -r bsvc-2.3 /usr/local/

echo Ejecuta bsvc para el emulador y 68kasm para el ensamblador.
echo Instalación completada. Script por Adrian Quevedo.