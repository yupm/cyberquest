create_user() {
    adduser --disabled-password --gecos "" grunt19
    echo "grunt18:{A_SHOCKED_PIKACHU}" | sudo chpasswd
}

create_scene() {
    cp /shared/readme19 /home/grunt19/readme
}

scene1() {
    create_user
    create_scene
    sudo cp /shared/dataGrunt18.png /home/grunt18/image.png

    

    echo "[$(date +%H:%M:%S)]: Stage 1 Scenario 19 has been setup correctly!"
}

main() {
    scene1
}

main
exit 0
