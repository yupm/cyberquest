create_user() {
    adduser --disabled-password --gecos "" grunt17
    echo "grunt17:{NOT_MY_PIKACHU}" | sudo chpasswd
}

create_scene() {
    cp /shared/readme17 /home/grunt17/readme
}

scene1() {
    create_user
    create_scene
    sudo cp /shared/dataGrunt17.txt /home/grunt17/data.txt

    

    echo "[$(date +%H:%M:%S)]: Stage 1 Scenario 17 has been setup correctly!"
}

main() {
    scene1
}

main
exit 0