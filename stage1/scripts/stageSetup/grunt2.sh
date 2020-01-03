create_user() {
    adduser --disabled-password --gecos "" grunt2
    echo "grunt2:{JESSIE_AND_JAMES}" | sudo chpasswd
}

create_scene() {
    cp /shared/readmeFiles/readme2 /home/grunt2/readme
}

scene1() {
    # Hidden file in directory 

    create_user
    create_scene
    mkdir /home/grunt2/tryHere
    touch "/home/grunt2/.ImHere"
    echo "{SURRENDER_NOW}" > "/home/grunt2/.ImHere"

    echo "[$(date +%H:%M:%S)]: Stage 1 Scenario 2 has been setup correctly!"
}

main() {
    scene1
}

main
exit 0
