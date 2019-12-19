create_user() {

    useradd -b /home grunt0
    echo "grunt1:makeitdouble" | sudo chpasswd

}

create_scene() {

    cp /shared/readme0 /home/grunt0/readme


}

scene0() {

    create_user
    create_scene
    echo "Find Team Rocket with this password preparefortrouble" > /home/grunt0/text.txt

    echo "[$(date +%H:%M:%S)]: Stage 1 Scenario 0 has been setup correctly!"


}

main() {

scene0

}

main
exit 0