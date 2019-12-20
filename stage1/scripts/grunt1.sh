create_user() {

    adduser --disabled-password --gecos "" grunt1
    echo "grunt1:makeItDouble" | sudo chpasswd

}

create_scene() {

    cp /shared/readme1 /home/grunt1/readme


}

scene1() {

    create_user
    create_scene
    touch -- "/home/grunt1/-Jessie was here"
    echo "JessieandJames" > "/home/grunt1/-Jessie was here"

    echo "[$(date +%H:%M:%S)]: Stage 1 Scenario 1 has been setup correctly!"


}

main() {

scene1

}

main
exit 0