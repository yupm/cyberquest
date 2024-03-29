create_user() {
    adduser --disabled-password --gecos "" grunt21
    echo "grunt21:{TEAM_ROCKET_BLASTING_OFF_AGAIN}" | sudo chpasswd
}

create_scene() {
    cp /shared/readmeFiles/readme21 /home/grunt21/readme
}

scene1() {
    create_user
    create_scene

    echo "[$(date +%H:%M:%S)]: Stage 1 Scenario 21 has been setup correctly!"
}

main() {
    scene1
}

main
exit 0
