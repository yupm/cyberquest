create_user() {
    adduser --disabled-password --gecos "" grunt20
    echo "grunt20:{ALMOST_WON_TEAM_ROCKET}" | sudo chpasswd
}

create_scene() {
    cp /shared/readme20 /home/grunt20/readme
}

scene1() {
    create_user
    create_scene
    sudo cp /shared/dataGrunt20.txt /home/grunt20/lastOne.txt

    echo "[$(date +%H:%M:%S)]: Stage 1 Scenario 20 has been setup correctly!"
}

main() {
    scene1
}

main
exit 0
