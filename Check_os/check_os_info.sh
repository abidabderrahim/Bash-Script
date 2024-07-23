#!/bin/bash
# /etc/os-release : file that contain information about 
# OS name and version and ID and url or the community os .

main() {

    os_name=$(uname)

    case $os_name in
        Darwin)
            echo "Mac OS X platform detected"
            ;;
        Linux)
            distro=$(awk -F= '/^NAME/{print $2}' /etc/os-release)
            version=$(awk -F= '/^VERSION_ID/{print $2}' /etc/os-release)
            echo "GNU/Linux platform detected"
            echo "Distro: $distro"
            echo "Version Id: $version"
            ;;
        MINGW32_NT*)
            echo "32 bits Windows NT platform detected"
            ;;
        MINGW64_NT*)
            echo "64 bits Windows NT platform detected"
            ;;
        *)
            echo "Unsupported platform detected"
            ;;
    esac
}

main

