apt_install_updates() {
  # Install prerequisites and useful tools
  echo "[$(date +%H:%M:%S)]: Running apt-get update..."
  apt-get update
  echo "[$(date +%H:%M:%S)]: Running apt-get upgrade..."
  apt-get upgrade
}

passwd_create_grunt0() {
    adduser grunt0 
    echo "grunt0:preparefortrouble" | sudo chpasswd
}

create_grunt0_scenario() {
    cp /shared/readme /home/grunt0/readme
}

scenario1(){
    #apt_install_updates
    passwd_create_grunt0
    create_grunt0_scenario

    echo "[$(date +%H:%M:%S)]: Stage 1 Scenario 1 has been setup correctly!"
}

main() {
    scenario1
}

main
exit 0