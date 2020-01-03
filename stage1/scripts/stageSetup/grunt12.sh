create_user() {
    adduser --disabled-password --gecos "" grunt12
    echo "grunt12:{PIKACHU_AND_ASH}" | sudo chpasswd
}

create_scene() {
    cp /shared/readmeFiles/readme12 /home/grunt12/readme
}

scene1() {
    create_user
    create_scene

    cp /shared/dataGrunt12QRCode.png /home/grunt12/code.png
    
    echo "[$(date +%H:%M:%S)]: Stage 1 Scenario 12 has been setup correctly!"
}

main() {
    scene1
}

main
exit 0
