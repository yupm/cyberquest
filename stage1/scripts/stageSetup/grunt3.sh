create_user() {
    adduser --disabled-password --gecos "" grunt3
    echo "grunt3:{SURRENDER_NOW}" | sudo chpasswd
}

create_scene() {
    cp /shared/readmeFiles/readme3 /home/grunt3/readme
}

scene1() {
    # Find a word in a file of random words

    create_user
    create_scene
    cp /shared/dataGrunt3.txt /home/grunt3/data.txt

    echo "[$(date +%H:%M:%S)]: Stage 1 Scenario 3 has been setup correctly!"
}

main() {
    scene1
}

main
exit 0
