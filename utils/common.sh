NC="\e[0m"
MARGENTA="\e[1m\e[1;35m"
RED="\e[1m\e[1;91m"

function printLogo {
  bash <(curl -s https://raw.githubusercontent.com/terdim28/nodera/main/utils/nodera_logo.sh)
}

function printLine {
  echo "---------------------------------------------------------------------------------------"
}

function printMargenta {
  echo -e "${MARGENTA}${1}${NC}"
}

function printRed {
  echo -e "${RED}${1}${NC}"
}

function addToPath {
  source $HOME/.bash_profile
  PATH_EXIST=$(grep ${1} $HOME/.bash_profile)
  if [ -z "$PATH_EXIST" ]; then
    echo "export PATH=$PATH:${1}" >>$HOME/.bash_profile
  fi
}
