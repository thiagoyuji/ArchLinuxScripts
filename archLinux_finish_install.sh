#!/bin/bash
echo -e "Dont Forgot to Aplicate This Until Exec Script2\n"
echo -e "(nano /etc/locale.gen) -> configure your language\n"

echo -e "Aplicatting locale-gen\n"
locale-gen
echo -e "\n\n"
echo -e "Configurating file (/etc/locale.conf)\n"
echo LANG=en_US.UTF-8 > /etc/locale.conf
export LANG=en_US.UTF-8
echo -e "Process Finished\n\n"
echo -e "Configurating localtime,timezone\n"
rm -rf /etc/localtime
ln -s /usr/share/zoneinfo/Region/City /etc/localtime
echo -e "Process Finished\n\n"
echo -e "Aplicattion (hwclock,hostname,dhcpcd,openssh,sshd,passwd(root),grub,mkinitcpio)\n"
hwclock --systohc --utc
echo archlinux > /etc/hostname
systemctl enable dhcpcd.service
pacman -Syu
pacman -S openssh
systemctl enable sshd.service
passwd root
pacman -Syu
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
mkinitcpio -p linux
echo -e "Process Finished\n\n" 

clear
echo -e "Now You Have to do: \n"
echo -e "(useradd -m -g users -G wheel -s /bin/bash "user") -- change user to your username\n"
echo -e "(passwd "user") -- now set a password to your username\n"
echo -e "(nano /etc/sudoers) -> and aplicate the all permitions "YOU_USER" ALL=(ALL) ALL\n"
echo -e "do it --> exit"
echo -e "do it --> umount /mnt/boot"
echo -e "do it --> umount /mnt"
echo -e "do it --> reboot"
