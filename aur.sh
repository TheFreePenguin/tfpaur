echo "Enter the packages you wish to install, one at a time. When you wish to continue, type EOF." 
rm -rf /tmp/tfpaur
mkdir -p /tmp/tfpaur
cat << EOF > /tmp/tfpaur/packages.txt
for i in `cat /tmp/tfpaur/packages.txt`
do
cd /tmp/tfpaur
git clone "https://aur.archlinux.org/$i.git" 
cd ${1}
makepkg -si
done
