create_user() {
    adduser --disabled-password --gecos "" grunt12
    echo "grunt12:{PIKACHU_AND_ASH}" | sudo chpasswd
}

create_scene() {
    cp /shared/readme12 /home/grunt12/readme
}

scene1() {
    create_user
    create_scene
    sudo mkdir /var/grunt13/
    sudo cp /shared/dataGrunt12/gruntRun13.sh /var/grunt13/
    sudo cp /shared/dataGrunt12/crontab /etc/crontab
    sudo mkdir /var/scripts/grunt13

    adduser --disabled-password --gecos "" grunt13
    echo "grunt13:{WE_WANT_PIKACHU}" | sudo chpasswd

    sudo chown grunt13:grunt13 /var/grunt13/
    sudo chown grunt13:grunt13 /var/scripts/grunt13/
    sudo chown grunt13:grunt13 /var/grunt13/gruntRun13.sh
    sudo chmod 770 /var/grunt13/
    sudo chmod 770 /var/scripts/grunt13/
    sudo chmod 770/var/grunt13/gruntRun13.sh
    
    echo "[$(date +%H:%M:%S)]: Stage 1 Scenario 12 has been setup correctly!"
}

main() {
    scene1
}

main
exit 0
