if ! command -v vale &> /dev/null
then
    echo "Vale could not be found"
    echo "You must install Vale first!"
    echo "Try `sudo snap install vale` "
    echo " or fetch a binary release from github:"
    echo -e '\e]8;;https://github.com/errata-ai/vale/releases\agithub.com/errata-ai/vale/releases\e]8;;\a'  
    exit 1
fi
