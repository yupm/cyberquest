create_user() {
    adduser --disabled-password --gecos "" grunt9
    echo "grunt9:{IM_ASH_KETCHUP}" | sudo chpasswd
}

create_scene() {
    cp /shared/readme9 /home/grunt9/readme
    
    sudo mkdir /home/grunt9/.ssh
    sudo cat /etc/grunt9/.ssh/grunt9.key.pub > /home/grunt9/.ssh/authorized_keys
    sudo chmod 600 /home/grunt9/.ssh/authorized_keys
    sudo chmod 700 /home/grunt9/.ssh    
}

scene1() {
    create_user
    create_scene
    mkdir /var/www/html/grunt9
    cp -R /shared/dataGrunt9/html/* /var/www/html/grunt9/
    
    echo "[$(date +%H:%M:%S)]: Stage 1 Scenario 9 has been setup correctly!"
}

main() {
    scene1
}

main
exit 0
