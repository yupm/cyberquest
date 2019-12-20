apt_install_updates() {
  # Install prerequisites and useful tools
  echo "[$(date +%H:%M:%S)]: Running apt-get update..."
  apt-get update
  echo "[$(date +%H:%M:%S)]: Running apt-get upgrade..."
  apt-get upgrade
}

scenarioCreate() { 
    files=$(ls /scripts/stageSetup/)
    for f in $files
    do
        scriptPath="/scripts/stageSetup/$f"
        chmod u+x $scriptPath
        "$scriptPath"
    done
    
}

main() {
    scenarioCreate  
}

main
exit 0