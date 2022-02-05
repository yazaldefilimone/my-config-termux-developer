#!/bin/bash
ruta=/data/data/com.termux/files/home
if [ ! -e $ruta/.termux ]; then
mkdir $ruta/.termux
fi
if [ -e $ruta/.termux/termux.properties ]; then
rm $ruta/.termux/termux.properties
fi
if [ ! -e $ruta/.termux/termux.properties ]; then
echo "extra-keys = [['ESC','/','-','HOME','UP','END','PGUP'],['TAB','CTRL','ALT','LEFT','DOWN','RIGHT','PGDN']]" >> $ruta/.termux/termux.properties
fi
termux-reload-settings

echo "sucessfully process!!!!"
exit
