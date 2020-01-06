create_user() {
    adduser --disabled-password --gecos "" grunt7
    echo "grunt7:{OH_THANKS_MEOWTH}" | sudo chpasswd
}

create_scene() {
    cp /shared/readmeFiles/readme7 /home/grunt7/readme

    cp /shared/dataGrunt7.jpg /home/grunt7/CatchMe.jpg
    chown grunt7:grunt7 /home/grunt7/CatchMe.jpg
    chmod 775 /home/grunt7/CatchMe.jpg
}


scene1() {

    create_user
    create_scene
     
    echo "[$(date +%H:%M:%S)]: Stage 1 Scenario 7 has been setup correctly!"
}

main() {
    scene1
}

main
exit 0
