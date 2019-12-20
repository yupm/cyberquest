create_user() {
    adduser --disabled-password --gecos "" grunt3
    echo "grunt3:SurrenderNow" | sudo chpasswd
}

create_scene() {
    cp /shared/readme3 /home/grunt2/readme
}

scene1() {
    create_user
    create_scene
    cp /shared/dataGrunt3.txt /home/grunt3/data.txt

    echo "[$(date +%H:%M:%S)]: Stage 1 Scenario 2 has been setup correctly!"
}

main() {
    scene1
}

main
exit 0
