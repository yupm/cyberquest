create_user() {
    adduser --disabled-password --gecos "" grunt6
    echo "grunt6:{ITS_A_SNORLAX}" | sudo chpasswd
}

create_scene() {
    cp /shared/readmeFiles/readme6 /home/grunt6/readme

    cp /shared/dataGrunt6.txt /home/grunt6/wobbuffet.txt
    sudo chown grunt6:grunt6 /home/grunt6/wobbuffet.txt
    sudo chmod 775 /home/grunt6/wobbuffet.txt
}


scene1() {
    # read the file that has a dash and spacing

    create_user
    create_scene
     
    echo "[$(date +%H:%M:%S)]: Stage 6 Scenario 1 has been setup correctly!"
}

main() {
    scene1
}

main
exit 0
