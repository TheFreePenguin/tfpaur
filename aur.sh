if ${1} = ""; then
  echo "Please enter a valid package name."
else
set -e
mkdir /tmp/tfpaur
cd /tmp/tfpaur
git clone "https://aur.archlinux.org/"${1}".git"
cd ${1}
makepkg -si
