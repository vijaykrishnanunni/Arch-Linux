# Arch Linux Commands

## Navigation & File Management
# Used for basic file system navigation and file operations

pwd                 # show current directory
ls                  # list files
ls -la              # detailed list including hidden files
cd dir              # change directory
cd ..               # go up one level
mkdir dir           # create directory
rmdir dir           # remove empty directory
cp src dst          # copy file
mv src dst          # move/rename file
rm file             # delete file
rm -rf dir          # force delete directory
touch file          # create empty file
tree                # show directory tree

---

## File Viewing & Editing
# Used to read, analyze, and edit files

cat file            # display file contents
less file           # scrollable view
head file           # first lines
tail file           # last lines
tail -f file        # live log tracking
wc file             # count lines/words
nano file           # simple editor
vim file            # advanced editor

---

## Searching
# Used to locate files, commands, and text

find . -name "abc"  # find file
locate abc          # fast search
which cmd           # path of command
grep "text" file    # search text
grep -r "text" dir  # recursive search
man cmd             # manual page
cmd --help          # quick help

---

## Permissions & Users
# Used for access control and user management

chmod +x file       # make executable
chmod 755 file      # set permissions
chown user file     # change owner
sudo cmd            # run as root
whoami              # current user
id                  # user info

---

## Process Management
# Used to monitor and control running programs

ps aux              # list processes
top                 # live monitor
htop                # better monitor
kill PID            # kill process
kill -9 PID         # force kill
pkill name          # kill by name

---

## System Information
# Used to inspect hardware and system status

uname -a            # system info
uptime              # uptime
free -h             # memory usage
df -h               # disk usage
du -sh dir          # folder size
lsblk               # block devices
lscpu               # CPU info

---

## Package Management (Arch)
# Used to install, update, and manage software

pacman -Syu         # full system update
pacman -S pkg       # install package
pacman -R pkg       # remove package
pacman -Rs pkg      # remove with deps
pacman -Ss name     # search packages
pacman -Qi pkg      # package info
pacman -Qdt         # orphan packages

---

## System Services (systemd)
# Used to control background services

systemctl status svc    # service status
systemctl start svc     # start service
systemctl stop svc      # stop service
systemctl enable svc    # enable at boot
journalctl              # view logs
journalctl -u svc       # logs for service

---

## Networking
# Used for connectivity and network debugging

ip a                # show IP
ping host           # test connection
curl url            # fetch URL
wget url            # download file
ssh user@host       # remote login
scp file host:path  # copy over SSH

---

## Archives & Compression
# Used for compressing and extracting files

tar -czf file.tar.gz dir   # create archive
tar -xzf file.tar.gz       # extract archive
zip -r file.zip dir        # zip
unzip file.zip             # unzip
