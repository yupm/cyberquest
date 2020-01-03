create_user() {
    adduser --disabled-password --gecos "" grunt18
    echo "grunt18:{UNOVA_SINNOH_ALOLA}" | sudo chpasswd
}

create_scene() {
    cp /shared/readmeFiles/readme18 /home/grunt18/readme
}

scene1() {
    #Use an image manipulation service to adjust the contrast and brightness to see the password
    create_user
    create_scene
    cp /shared/dataGrunt18.png /home/grunt18/image.png


    echo "[$(date +%H:%M:%S)]: Stage 1 Scenario 18 has been setup correctly!"
}

main() {
    scene1
}

main
exit 0
