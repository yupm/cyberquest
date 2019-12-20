create_user() {
    adduser --disabled-password --gecos "" grunt5
    echo "grunt5:its_Meowth" | sudo chpasswd
}

create_scene() {
    cp /shared/readme5 /home/grunt5/readme
}

scene1() {
    create_user
    create_scene
    cp /shared/dataGrunt5.txt /home/grunt5/.data.txt

    

    echo "[$(date +%H:%M:%S)]: Stage 1 Scenario 5 has been setup correctly!"
}

main() {
    scene1
}

main
exit 0
