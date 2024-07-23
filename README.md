
#	Home

General settings and setup for my work computers



Install Google Chrome

Install MacPorts (including the xcode command line tools)



Install some core things
```
sudo port install gcc13
```


Install Bash

My latest attempt at install bash from macports works, but
anytime a command is run that doesn't exist it gives weird error...

```
FrancisLab:home sudo port install bash
Password:
--->  Computing dependencies for bash
--->  Fetching archive for bash
--->  Attempting to fetch bash-5.2.26_0.darwin_23.x86_64.tbz2 from https://packages.macports.org/bash
--->  Attempting to fetch bash-5.2.26_0.darwin_23.x86_64.tbz2.rmd160 from https://packages.macports.org/bash
--->  Installing bash @5.2.26_0
--->  Activating bash @5.2.26_0
--->  Cleaning bash
--->  Scanning binaries for linking errors
--->  No broken files found.
--->  No broken ports found.
[jake@FrancisLab ~/github/ucsffrancislab/home]$ /opt/local/bin/bash
FrancisLab:home jake$ asdf
objc[50081]: +[__SwiftNativeNSStringBase initialize] may have been in progress in another thread when fork() was called.
objc[50081]: +[__SwiftNativeNSStringBase initialize] may have been in progress in another thread when fork() was called. We cannot safely call it or ignore it in the fork() child process. Crashing instead. Set a breakpoint on objc_initializeAfterForkError to debug.
Abort trap: 6
FrancisLab:home jake$ 
```

So I downloaded the source and installed it locally.


Install git


```
sudo port install git

mkdir ~/github/
mkdir ~/github/ucsffrancislab
cd ~/github/ucsffrancislab

git clone git@github.com:ucsffrancislab/genomics.git
git clone git@github.com:ucsffrancislab/home.git

cd ~
ln -s ~/github/ucsffrancislab/home/.inputrc
ln -s ~/github/ucsffrancislab/home/.vimrc 
ln -s ~/github/ucsffrancislab/home/.vim
ln -s ~/github/ucsffrancislab/home/.Rprofile
ln -s ~/github/ucsffrancislab/home/.Renviron
ln -s ~/github/ucsffrancislab/home/laptop/.bashrc
ln -s ~/github/ucsffrancislab/home/laptop/.bash_profile 
ln -s ~/github/ucsffrancislab/home/.gitconfig 
ln -s ~/github/ucsffrancislab/home/laptop/.ssh/config .ssh/

```

Install R
```
mkdir ~/.R
sudo port install r

r
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install(version = "3.19")
```


Install Python
```
sudo port install python3
```




After getting everything good locally, reboot, perhaps a couple times, then 


Installing UCSF's VPN and associated software which runs some scripts.

I probably should just say its my computer.

Installation of unnecesary software hangs, or perhaps just takes way longer than expected, so I hard powered off.

It leaves some stuff here, which I may or may not remove.
```
/Library/Application\ Support/JAMF/
/Library/Application\ Support/JAMF/tmp/CheckOwnership.sh
/Library/Application\ Support/JAMF/tmp/macdeploy-standard.sh
```



I don't like have a my prompt changed, so it can be reset by setting HostName.
The ComputerName and LocalHostName can actually be changed in System Settings
but I couldn't find the place to set the HostName other than ...

```

hostName="FrancisLab"

/usr/sbin/scutil --set ComputerName "$hostName"
/usr/sbin/scutil --set HostName "$hostName"
/usr/sbin/scutil --set LocalHostName "$hostName"

```





