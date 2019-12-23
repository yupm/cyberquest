create_user() {
    adduser --disabled-password --gecos "" grunt7
    echo "grunt7:{OH_THANKS_MEOWTH}" | sudo chpasswd
}

create_scene() {
    cp /shared/readme7 /home/grunt7/readme
}


scene1() {
    # read the file that has a dash and spacing

    create_user
    create_scene

    cp /shared/dataGrunt7.jpg /home/grunt7/CatchMe.jpg
    sudo chown grunt7:grunt7 CatchMe.jpg
    sudo chmod 775 CatchMe.jpg
     
    echo "[$(date +%H:%M:%S)]: Stage 7 Scenario 1 has been setup correctly!"
}

main() {
    scene1
}

main
exit 0