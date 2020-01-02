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

    cp /shared/grunt19Encoded.png /home/grunt19/lookHere.png
    mkdir -p /audio/grunt/
    cp /shared/dataGrunt19.txt /audio/grunt/data.txt

    
    echo "[$(date +%H:%M:%S)]: Stage 1 Scenario 19 has been setup correctly!"
}

main() {
    scene1
}

main
exit 0
