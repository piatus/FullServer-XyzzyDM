#if using compiler the windows to delete..
#!/bin/sh

date
#SVER=`svnversion ../..`
SVER="1000"
echo \#define GMVERSION \"3.3r$SVER\" > ../include/fullserver/version.inc
KIEDY=`date +%x\ %T`
GDZIE=`hostname`
GMHOST="10.39.7.2"
GMPORT="8888"

echo \#define GMCOMPILED \"skompilowana $KIEDY przez $USER@$GDZIE\" >> ../include/fullserver/version.inc
echo \#define GMHOST \"$GMHOST\" >> ../include/fullserver/version.inc
echo \#define GMPORT $GMPORT >> ../include/fullserver/version.inc

WINEPREFIX=/vol/n/.wg/ wine /pawno/pawncc -i/pawno/include_0.3c -i..\\include fs.pwn  -\;\+ -\\ -\(\+ && ncftpput -u login -p haslo -C 91.204.162.80 fs.amx gamemodes/fs.amx
#WINEPREFIX=/vol/n/.wg/ wine /pawno/pawncc -i/pawno/include_0.3c -i..\\include fs.pwn  -\;\+ -\\ -\(\+ && scp -P 57022 fs.amx pio@fsadm.i64.pl:~/fs/samp03c/gamemodes/
#if using compiler the windows to end delete

#Windows wersion compilation of gamemode
                  #by mrdrifter
#Copy and save file *.bat 
@echo off
echo \#define GMVERSION \"3.3r$SVER\" > .././pawno/include/fullserver/version.inc
set KIEDY=`date +%x\ %T`
set GDZIE=`hostname`
set GMHOST="10.39.7.2"
set GMPORT="8888"

echo \#define GMCOMPILED \"skompilowana $KIEDY przez $USER@$GDZIE\" >> .././include/fullserver/version.inc
echo \#define GMHOST \"$GMHOST\" >> .././include/fullserver/version.inc
echo \#define GMPORT $GMPORT >> .././include/fullserver/version.inc

".././pawno/pawncc.exe" "fs.pwn" -; -( -r
pause
