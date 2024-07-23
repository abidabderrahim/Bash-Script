#! /bin/bash

progress-bar () {
	sp='| / - \'
	echo -n ' '
	for i in {1..20}; do
	    printf "\b${sp:i++%${#sp}:1}"
	    sleep 0.1
	done
}

read -p "Enter Your Project Name: " project_name

progress-bar

mkdir $project_name 
cd $project_name

mkdir Html
cd Html
cat ../../html_template.html > index.html
cd ..

mkdir CSS
cd CSS
cat ../../css_template.css > styles.css
cd ..

mkdir JavaScript
cd JavaScript
touch script.js 
cd ..

echo "File Structure Created Successfully ."

find . | sed -e "s/[^-][^\/]*\// |/g" -e "s/|\([^ ]\)/|-\1/"
