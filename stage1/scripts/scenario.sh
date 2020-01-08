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

ssh_changes() {
      echo "[$(date +%H:%M:%S)]: Changing ssh configurations..."
      # Change Login Message
      sudo cp /shared/motd /etc
      # Change SSH Banner
      sudo cp /shared/ssh_banner /etc
      echo "Banner /etc/ssh_banner" >> /etc/ssh/sshd_config
      # Remove the viewing of system info when login with ssh
      sudo chmod -x /etc/update-motd.d/*
      # Remove the vewing of legal notice
      sudo chmod -r /etc/legal
      # Restart ssh service
      sudo systemctl restart sshd
}

main() {
    harden_box
    scenarioCreate  
    PermissionChanges
    ssh_changes
}

main
exit 0
