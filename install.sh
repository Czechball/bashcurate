if [[ $EUID -ne 0 ]]; then
   echo "Please run install.sh as root."
   echo	"'sudo ./install.sh'" 
   exit 1
fi
cp curator.sh /usr/sbin/curate
printf "Curator installed successfully! Type 'curate' to use\n"