echo "Enter the packages you wish to install, one at a time. When you wish to continue, type EOF." 
rm -rf /tmp/tfpaur
mkdir -p /tmp/tfpaur
cd /tmp/tfpaur
read
if [ $REPLY = "EOF" ]; then
for i in `cat /tmp/tfpaur/packages.txt`
do
cd /tmp/tfpaur
git clone "https://aur.archlinux.org/$i.git" 
cd ${1}
makepkg -si
done
else
echo $REPLY >> packages.txt
fi
