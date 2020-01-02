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
    mkdir /var/grunt13/
    cp /shared/dataGrunt12/gruntRun13.sh /var/grunt13/
    (crontab -l 2>/dev/null; echo "* * * * *   grunt13 /var/grunt13/gruntRun13.sh > /dev/null") | crontab -
    #sudo cp /shared/dataGrunt12/crontab /etc/crontab
    mkdir -p /var/scripts/grunt13
    mkdir /etc/grunt_password/

    adduser --disabled-password --gecos "" grunt13
    echo "grunt13:{WE_WANT_PIKACHU}" | sudo chpasswd

    cp /shared/pass/grunt13.txt /etc/grunt_password/grunt13.txt
    chown grunt13:grunt13 /etc/grunt_password/grunt13.txt
    chown grunt13:grunt13 /var/grunt13/
    chown grunt13:grunt13 /var/scripts/grunt13/
    chown grunt13:grunt13 /var/grunt13/gruntRun13.sh
    chmod 774 /var/grunt13/
    chmod 774 /var/scripts/grunt13/
    chmod 774 /var/grunt13/gruntRun13.sh
    chmod 440 /etc/grunt_password/grunt13.txt
    
    echo "[$(date +%H:%M:%S)]: Stage 1 Scenario 12 has been setup correctly!"
}

main() {
    scene1
}

main
exit 0



