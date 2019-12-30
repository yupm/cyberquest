create_user() {
    adduser --disabled-password --gecos "" grunt15
    echo "grunt15:" | sudo chpasswd
}

create_scene() {
    cp /shared/readme15 /home/grunt15/readme

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
