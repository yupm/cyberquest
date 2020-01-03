create_user() {
    adduser --disabled-password --gecos "" grunt15
    echo "grunt15:{GYM_LEADER_DYLAN}" | sudo chpasswd
}

create_scene() {
    cp /shared/readmeFiles/readme15 /home/grunt15/readme15
    cp /shared/readmeFiles/readme16.1 /home/grunt15/readme16.1

    cp /shared/dataGrunt15.wav /home/grunt15/ditto.wav
}

scene1() {

    create_user
    create_scene  


    echo "[$(date +%H:%M:%S)]: Stage 1 Scenario 15 has been setup correctly!"
}

main() {
    scene1
}

main
exit 0
