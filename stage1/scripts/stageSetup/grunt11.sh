create_user() {
    adduser --disabled-password --gecos "" grunt11
    echo "grunt11:{IM_BROCK_LEE}" | sudo chpasswd
}

create_scene() {
    cp /shared/readme11 /home/grunt11/readme
}

scene1() {
    create_user
    create_scene
    sudo mkdir /var/www/html/grunt11/
    sudo cp -R /shared/dataGrunt11/html/* /var/www/html/grunt11/
    
    echo "[$(date +%H:%M:%S)]: Stage 1 Scenario 11 has been setup correctly!"
}

main() {
    scene1
}

main
exit 0
