sudo pacman -Rcns manjaro-hello manjaro-welcome
sudo pacman-mirrors --fasttrack
sudo pacman -Syyu
sudo sed --in-place "s/#EnableAUR/EnableAUR/" "/etc/pamac.conf
sudo sed --in-place "s/#CheckAURUpdates/CheckAURUpdates/" "/etc/pamac.conf"
sudo pacman -S piper thunderbird gwe keepassxc steam-native steam-manjaro htop lutris gamemode
sudo nvidia-xconfig --cool-bits=24
sudo pacman -S wine-staging winetricks
sudo pacman -S giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo libxcomposite lib32-libxcomposite libxinerama lib32-libxinerama ncurses lib32-ncurses opencl-icd-loader lib32-opencl-icd-loader libxslt lib32-libxslt libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader cups samba dosbox
sudo pamac build protontricks-git proton-ge-custom-bin discord_arch_electron legendary rare cointop lutris-battlenet-meta
cat /proc/sys/vm/swappiness
sudo echo "vm.swappiness=20" > /etc/sysctl.d/100-manjaro.conf
sudo systemctl enable fstrim.timer
sudo systemctl start fstrim.timer
curl -O https://gitlab.com/cscs/maxperfwiz/raw/master/maxperfwiz
chmod +x maxperfwiz
mhwd-kernel -l
mhwd-kernel -li
sudo pacman -Syyu
sudo sudo pacman -Syu grub
sudo systemctl --failed
sudo journalctl -p 3 -xb

##Brendan Mounting NAS##
sudo mkdir /mnt/NAS
sudo -- bash -c 'echo "//192.168.1.LASTID/brendan /mnt/NAS cifs uid=1001,username=brendan,password=PASWORD,domain=WORKGROUP,nofail,noauto,x-systemd.automount,x-systemd.mount-timeout=30,_netdev 0 0" >> etc/fstab'
