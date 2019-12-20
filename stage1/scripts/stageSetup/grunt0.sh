create_user() {
    adduser --disabled-password --gecos "" grunt0
    echo "grunt0:prepare_for_trouble" | sudo chpasswd
}


create_scene() {
    cp /shared/readme0 /home/grunt0/readme
}

scene0() {
    # cat the file

    create_user
    create_scene
    echo "Hi Jessie was here, you won't get us if you don't make_It_Double" > /home/grunt0/text.txt

    echo "[$(date +%H:%M:%S)]: Stage 1 Scenario 0 has been setup correctly!"
}

main() {
    scene0
}

main
exit 0

