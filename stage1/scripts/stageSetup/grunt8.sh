create_user() {
    adduser --disabled-password --gecos "" grunt8
    echo "grunt8:{PROTECT_WORLD_PEACE}" | sudo chpasswd
}

create_scene() {
    cp /shared/readme8 /home/grunt8/readme
}


scene1() {
    # read the file that has a dash and spacing

    create_user
    create_scene

    cp /shared/dataGrunt7.jpg /home/grunt7/CatchMe.jpg
    sudo chown grunt8:grunt8 CatchMe.jpg
    sudo chmod 775 CatchMe.jpg
    
    echo "[$(date +%H:%M:%S)]: Stage 1 Scenario 8 has been setup correctly!"
}

main() {
    scene1
}

main
exit 0
