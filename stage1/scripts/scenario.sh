apt_install_updates() {
  # Install prerequisites and useful tools
  echo "[$(date +%H:%M:%S)]: Running apt-get update..."
  apt-get update
  echo "[$(date +%H:%M:%S)]: Running apt-get upgrade..."
  apt-get upgrade

}

harden_box(){
    echo "Hardening box permissions"
    sed -i 's/DIR_MODE=0755/DIR_MODE=0500/' /etc/adduser.conf
}

scenarioCreate() { 
    files=$(ls /scripts/stageSetup/ | sort -V)
    for f in $files
    do
        scriptPath="/scripts/stageSetup/$f"
        chmod u+x $scriptPath
        "$scriptPath"
    done
    
}

PermissionChanges() {
      echo "[$(date +%H:%M:%S)]: Changing tmp permissions..."
      sudo chmod 2773 /tmp
}

main() {
    harden_box
    scenarioCreate  
    PermissionChanges
}

main
exit 0
