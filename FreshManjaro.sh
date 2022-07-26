sudo pacman -Rnsc manjaro-hello manjaro-welcome
pacman-key --init
pacman-key --populate archlinux manjaro
cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.backup
sudo pacman-mirrors --fasttrack 15 --api --set-branch unstable --protocol https && sudo pacman -Syyuu
sudo sed --in-place "s/#EnableAUR/EnableAUR/" "/etc/pamac.conf
sudo sed --in-place "s/#CheckAURUpdates/CheckAURUpdates/" "/etc/pamac.conf"
sudo pacman -S piper thunderbird gwe keepassxc steam-manjaro htop lutris mangohud lib32-mangohud mangohud-common gamemode lib32-gamemode gamescope wine-staging winetricks giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo libxcomposite lib32-libxcomposite libxinerama lib32-libxinerama ncurses lib32-ncurses opencl-icd-loader lib32-opencl-icd-loader libxslt lib32-libxslt libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader cups samba dosbox caprine 
sudo nvidia-xconfig --cool-bits=24
sudo pamac build protontricks-git discord_arch_electron runescape-launcher bottles goverlay-bin 
cat /proc/sys/vm/swappiness
sudo echo "vm.swappiness=20" > /etc/sysctl.d/100-manjaro.conf
curl -O https://gitlab.com/cscs/maxperfwiz/raw/master/maxperfwiz
chmod +x maxperfwiz
mhwd-kernel -l
mhwd-kernel -li
sudo pacman -Syyuu
#sudo pacman -Syu grub
sudo systemctl --failed
sudo journalctl -p 3 -xb
pacman -Sc
sudo systemctl enable fstrim.timer
sudo systemctl start fstrim.timer
